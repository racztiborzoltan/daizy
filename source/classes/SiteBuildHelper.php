<?php
namespace Daizy;

abstract class SiteBuildHelper
{

    /**
     * @var SiteBuild
     */
    private static $_sitebuild = null;

    public static function setSiteBuild(SiteBuild $sitebuild)
    {
        static::$_sitebuild = $sitebuild;
    }

    public static function getSiteBuild(): SiteBuild
    {
        return static::$_sitebuild;
    }

    /**
     * @return string
     */
    public static function getPageType()
    {
        return static::$_sitebuild->getPageType();
    }

    public static function copyFile(string $relative_source_path)
    {
        static::$_sitebuild->copyFile($relative_source_path);
    }

    public static function copyDirectory(string $relative_source_path)
    {
        static::$_sitebuild->copyDirectory($relative_source_path);
    }

    public static function copy(string $relative_source_path)
    {
        return static::$_sitebuild->copy($relative_source_path);
    }
}