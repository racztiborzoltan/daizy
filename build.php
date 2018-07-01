<?php

use Daizy\SiteBuild;
use Daizy\Template;

require_once 'vendor/autoload.php';

$page_type = $_GET['page_type'] ?? '';

$sitebuild = new SiteBuild();
$sitebuild->setPageType($page_type);

//
// page type validation:
//
try {
    $sitebuild->getPageType();
} catch (\LogicException $e) {
    header('HTTP/1.0 404 SiteBuild Not Found');
    foreach ($sitebuild::VALID_PAGE_TYPES as $page_type) {
        echo '<a href="'.$_SERVER['SCRIPT_NAME'].'?page_type='.rawurlencode($page_type).'">'.$page_type.'</a><br />'.PHP_EOL;
    }
    exit();
}

$template = new Template();
$template->setTemplatePath(__DIR__.'/source/templates/template.php');

$sitebuild->setTemplate($template);

$source_dir = __DIR__.'/source';

$destination_dir = __DIR__.'/dist';
if (is_dir($destination_dir)) {
    delTree($destination_dir);
    if (!is_dir($destination_dir)) {
        mkdir($destination_dir, 0777, true);
    }
}
// copy "assets" directory content:
rcopy($source_dir.'/assets', $destination_dir.'/assets');

$content = $sitebuild->build();

$content = preg_replace('#(\w*=")(assets/.*?")#i', '$1dist/$2', $content);

header('Content-Type: text/html');
echo $content;

return;


/**
 * Egy könyvtár teljes tartalmának törlése
 *
 * Eredeti forrás: http://php.net/manual/en/function.rmdir.php#110489
 *
 * @param string $dir könyvtár útvonal
 * @param boolean $remove_empty_dir az üres könyvtár eltávolítása? Alapértelmezés: FALSE
 * @return boolean
 */
function delTree($dir, $remove_empty_dir = false) {
    foreach (array_diff(scandir($dir), array('.','..')) as $file) {
        (is_dir($dir.'/'.$file)) ? delTree($dir.'/'.$file, true) : unlink($dir.'/'.$file);
    }
    if ($remove_empty_dir) {
        return rmdir($dir);
    }
    return true;
}

/**
 * copies files and non-empty directories
 *
 * Original source: http://php.net/manual/en/function.copy.php#104020
 *
 * @param string $src
 * @param string $dst
 */
function rcopy($src, $dst) {
    if (file_exists($dst)) rrmdir($dst);
    if (is_dir($src)) {
        mkdir($dst);
        $files = scandir($src);
        foreach ($files as $file)
            if ($file != "." && $file != "..") rcopy("$src/$file", "$dst/$file");
    }
    else if (file_exists($src)) copy($src, $dst);
}
