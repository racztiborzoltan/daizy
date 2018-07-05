<?php

use Daizy\SiteBuild;

require_once 'vendor/autoload.php';

$page_type = $_GET['page_type'] ?? '';


$sitebuild = new SiteBuild();
$sitebuild->setSourceDir(__DIR__.'/source');
$sitebuild->setDestinationDir(__DIR__.'/dist');
$sitebuild->setPageType($page_type);
$sitebuild->setTemplateDir(__DIR__.'/source/templates');

$sitebuild->setVariable('baseHref', dirname($_SERVER['SCRIPT_NAME']) . '/dist/');
$sitebuild->setVariable('baseHref', 'dist/');
$sitebuild->setVariable('feather_icons_dir', realpath(__DIR__.'/source/assets/daizy/feather-4.7.3/icons'));


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
    exit();
}


// Teljes "assets" mappa másolása:
$sitebuild->copy('assets');

$content = $sitebuild->build();
// $content = preg_replace('#(\w*=")(assets/.*?")#i', '$1dist/$2', $content);

header('Content-Type: text/html');
echo $content;

return;

