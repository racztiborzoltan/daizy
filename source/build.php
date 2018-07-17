<?php

use Daizy\SiteBuild;
use Daizy\SiteBuildHelper;

call_user_func(function(){

    require_once '../vendor/autoload.php';

    $current_page_type = $_GET['page_type'] ?? '';

    $VERSION = '0.1.0';

    $ROOT_DIR = realpath(__DIR__ . '/..') . '/';

    $sitebuild = new SiteBuild();
    $sitebuild->setSourceDir($ROOT_DIR.'source');
    $sitebuild->setDestinationDir($ROOT_DIR.'dist');
    $sitebuild->setPageType($current_page_type);
    $sitebuild->setTemplateDir($ROOT_DIR.'source/templates');

    //$sitebuild->setVariable('baseHref', dirname($_SERVER['SCRIPT_NAME']) . '/dist/');
    $sitebuild->setVariable('baseHref', '../dist/');
    $sitebuild->setVariable('feather_icons_dir', realpath($ROOT_DIR.'source/assets/daizy/feather-4.7.3/icons'));
    $sitebuild->setVariable('copyright_text', 'DaiZy Html (Admin Dashboard) Template v' . $VERSION);
    // dashboard menu content order
    $sitebuild->setVariable('dashboard_menu_content', [
        'dashboard' => '',
        'typography' => '',
        'images' => '',
        'tables' => '',
        'list_groups' => '',
        'buttons' => '',
        'jumbotrons' => '',
        'cards' => '',
        'forms' => '',
        'navs' => '',
        'badges' => '',
        'alerts' => '',
        'popovers' => '',
        'progress_bars' => '',
        'modals' => '',
    ]);

    //
    // page type validation:
    //
    try {
        $sitebuild->getPageType();
    } catch (\LogicException $e) {
        header('HTTP/1.0 404 SiteBuild Not Found');
        foreach ($sitebuild->getValidPageTypes() as $page_type) {
            echo '<a href="'.$_SERVER['SCRIPT_NAME'].'?page_type='.rawurlencode($page_type).'">'.$page_type.'</a><br />'.PHP_EOL;
        }
        unset($page_type);
        exit();
    }

    // scss fordítás
    /**
     * @var \Leafo\ScssPhp\Compiler $scss_compiler
     */
    $scss_file_path = $ROOT_DIR . 'source/assets/daizy/scss/daizy.scss';
    $scss_file_dir = dirname($scss_file_path);
    $scss_compiler = $sitebuild->getScssCompiler();
    $scss_compiler->setFormatter(new \Leafo\ScssPhp\Formatter\Compressed());
    $scss_compiler->addImportPath(dirname($scss_file_path));
    // Ez azért, hogy a sima css fájlok is bekerüljenek az egyesített fájlba teljes tartalommal:
    $scss_compiler->addImportPath(function($path) use ($scss_file_dir) {
        $path = $scss_file_dir . '/' . $path;
        if (is_file($path)) {
            return $path;
        }
    });
    $sitebuild->compileScssFileToFile($scss_file_path, $ROOT_DIR . 'source/assets/daizy/daizy.min.css');

    SiteBuildHelper::setSiteBuild($sitebuild);

    $sitebuild->clearDestinationDirectory($sitebuild->getDestinationDir());

    $content = $sitebuild->build();
    // $content = preg_replace('#(\w*=")(assets/.*?")#i', '$1dist/$2', $content);

    //
    // Az összes build elkészítése:
    //
    foreach ($sitebuild->getValidPageTypes() as $page_type) {
        $sitebuild->setPageType($page_type);
        $sitebuild->setVariable('baseHref', '');
        $dist_content = $sitebuild->build();

        $dist_html_path = $sitebuild->getDestinationDir() . $page_type . '.html';

        if ($dist_content === false) {
            unlink($dist_html_path);
            continue;
        }
        file_put_contents($dist_html_path, $dist_content);
    }
    unset($page_type);

    header('Content-Type: text/html');
    echo $content;

});

