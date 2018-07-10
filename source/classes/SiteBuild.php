<?php
namespace Daizy;

class SiteBuild
{

    /**
     * @var string
     */
    private $_source_dir = null;

    /**
     * @var string
     */
    private $_destination_dir = null;

    /**
     * @var string
     */
    private $_template_dir = null;

    /**
     * @var string
     */
    private $_page_type = null;

    /**
     * @var array
     */
    private $_variables = [];

    /**
     * @var \Leafo\ScssPhp\Compiler
     */
    private $_scss_compiler = null;

    public function getSourceDir(): string
    {
        if (empty($this->_source_dir)) {
            throw new \LogicException('Source directory not exists.');
        }
        return $this->_source_dir;
    }

    private function _normalizeDir($dir_path)
    {
        $dir_path = realpath($dir_path);
        if (!is_dir($dir_path)) {
            return null;
        }
        return rtrim($dir_path, DIRECTORY_SEPARATOR) . DIRECTORY_SEPARATOR;
    }

    public function setSourceDir(string $source_dir)
    {
        $this->_source_dir = $this->_normalizeDir($source_dir);
        return $this;
    }

    public function getDestinationDir(): string
    {
        if (empty($this->_destination_dir)) {
            throw new \LogicException('Destination directory not exists.');
        }
        return $this->_destination_dir;
    }

    public function setDestinationDir(string $destination_dir)
    {
        $this->_destination_dir = $this->_normalizeDir($destination_dir);
        return $this;
    }

    public function getValidPageTypes(): array
    {
        $template_dir = $this->getTemplateDir();
        $files = scandir($template_dir);
        $files = array_diff($files, ['.', '..', 'daizy_html_layout.xsl']);
        $valid_page_types = [];
        foreach ($files as $file) {
            if (substr($file, -4) !== '.xsl') {
                continue;
            }
            $valid_page_types[] = substr($file, 0, -4);
        }
        return $valid_page_types;
    }

    public function isValidPageType(string $page_type): bool
    {
        $valid_page_types = $this->getValidPageTypes();
        return in_array($page_type, $valid_page_types);
    }

    public function setPageType(string $page_type)
    {
        $this->_page_type = $page_type;
        return $this;
    }

    /**
     * @throws \LogicException
     * @return string
     */
    public function getPageType()
    {
        if (empty($this->_page_type)) {
            throw new \LogicException('empty page type. Use ->setPageType() method before!');
        }
        if (!$this->isValidPageType($this->_page_type)) {
            throw new \LogicException('page type is not valid. Possible page types: ' . implode(', ', array_map(function($v){return '"'.$v.'"';}, $this->getValidPageTypes())));
        }
        return $this->_page_type;
    }

    public function setTemplateDir(string $template_dir)
    {
        $this->_template_dir = $this->_normalizeDir($template_dir);
        return $this;
    }

    public function getTemplateDir()
    {
        if (empty($this->_template_dir)) {
            throw new \LogicException('template directory is empty');
        }
        if (!is_dir($this->_template_dir)) {
            throw new \LogicException('template directory not exists');
        }
        return $this->_template_dir;
    }

    public function setVariable($name, $value)
    {
        $this->_variables[$name] = $value;
        return $this;
    }

    public function removeVariable($name)
    {
        unset($this->_variables[$name]);
        return $this;
    }

    public function getVariable($name, $default_value = null)
    {
        return $this->_variables[$name] ?? $default_value;
    }

    public function getVariables()
    {
        return $this->_variables;
    }

    /**
     * Fájl másolása a cél mappába relatív útvonal alapján
     *
     * @param string $relative_source_path
     * @throws \InvalidArgumentException
     */
    public function copyFile(string $relative_source_path)
    {
        $source_dir = $this->getSourceDir();
        $destination_dir = $this->getDestinationDir();

        $source_full_path = $source_dir . $relative_source_path;
        $destination_full_path = $destination_dir . $relative_source_path;

        // Ha nem létezik a fájl a forrás helyen:
        if (!is_file($source_full_path)) {
            throw new \InvalidArgumentException('source file not found or not file');
        }

        if (
            // Ha nem létezik a fájl a célhelyen:
            (is_file($source_full_path) && !is_file($destination_full_path))
            ||
            // Ha létezik a fájl a cél helyen, de régebbi:
            (is_file($destination_full_path) && filemtime($destination_full_path) < filemtime($source_full_path))
        ) {
            if (!is_dir(dirname($destination_full_path))) {
                mkdir(dirname($destination_full_path), 0777, true);
            }
            copy($source_full_path, $destination_full_path);
        }
    }

    /**
     * Mappa rekurzív másolása a cél helyre reletív útvonal alaján
     *
     * @param string $relative_source_path
     * @throws \InvalidArgumentException
     */
    public function copyDirectory(string $relative_source_path)
    {
        $source_dir = $this->getSourceDir();
        $source_full_path = $source_dir . $relative_source_path;

        // Ha nem létezik a fájl a forrás helyen:
        if (!is_dir($source_full_path)) {
            throw new \InvalidArgumentException('source directory not found or not directory');
        }

        $this->_copyAllToDestination($relative_source_path);
        $this->_checkDestinationForUnnecessaryItems($relative_source_path);
    }

    private function _copyAllToDestination($relative_source_path)
    {
        $source_dir = $this->getSourceDir() . $relative_source_path;
        $destination_dir = $this->getDestinationDir() . $relative_source_path;

        // A forrás mappából minden módosult elemet átmásolni a célba.
        // Ha könyvtár, akkor létrehozni, ha még nem létezik a célhelyen.
        $source_files = new \RecursiveIteratorIterator(new \RecursiveDirectoryIterator($source_dir), \RecursiveIteratorIterator::CHILD_FIRST);
        foreach($source_files as $source_file){
            /**
             * @var \SplFileInfo $source_file
             */
            if (in_array($source_file->getFilename(), ['.', '..'])) {
                continue;
            }

            $source_full_path = $source_file->getPathname();
            $relative_path = str_replace($source_dir, '', $source_full_path);
            $destination_full_path = $destination_dir . $relative_path;

            if ($source_file->isDir() && !is_dir($destination_full_path)) {
                mkdir($destination_full_path, 0777, true);
            }

            if (
                // Ha nem létezik a fájl a célhelyen:
                ($source_file->isFile() && !is_file($destination_full_path))
                ||
                // Ha létezik a fájl a cél helyen, de régebbi:
                (is_file($destination_full_path) && filemtime($destination_full_path) < filemtime($source_full_path))
            ) {
                if (!is_dir(dirname($destination_full_path))) {
                    mkdir(dirname($destination_full_path), 0777, true);
                }
                copy($source_full_path, $destination_full_path);
            }
        }
    }

    /**
     * A cél helyen felesleges elemek ellenőrzése
     */
    private function _checkDestinationForUnnecessaryItems($relative_source_path)
    {
        // A cél hely bejárása olyan mappák vagy fájlok után kutatva, amelyek
        // nem léteznek a forrás helyen
        $source_dir = $this->getSourceDir() . $relative_source_path;
        $destination_dir = $this->getDestinationDir() . $relative_source_path;

        // A forrás mappából minden módosult elemet átmásolni a célba.
        // Ha könyvtár, akkor létrehozni, ha még nem létezik a célhelyen.
        $destination_files = new \RecursiveIteratorIterator(new \RecursiveDirectoryIterator($destination_dir), \RecursiveIteratorIterator::CHILD_FIRST);
        foreach($destination_files as $destination_file){
            /**
             * @var \SplFileInfo $destination_file
             */
            if (in_array($destination_file->getFilename(), ['.', '..'])) {
                continue;
            }

            $destination_full_path = $destination_file->getPathname();
            $relative_path = str_replace($destination_dir, '', $destination_full_path);
            $source_full_path = $source_dir . $relative_path;

            // Ha a cél fájl nem létezik a forrás helyen, akkor törölni:
            if (is_file($destination_full_path) && !is_file($source_full_path)) {
                unlink($destination_full_path);
            }
            // Ha a cél könyvtár nem létezik a forrás helyen, akkor törölni:
            if (is_dir($destination_full_path) && !is_dir($source_full_path)) {
                rmdir($destination_full_path);
            }
        }
    }

    /**
     * Fájl vagy könyvtár másolása a cél mappába
     *
     * @param string $relative_source_path
     * @throws \InvalidArgumentException
     */
    public function copy(string $relative_source_path)
    {
        $source_dir = $this->getSourceDir();
        $source_full_path = $source_dir . $relative_source_path;

        if (is_file($source_full_path)) {
            $this->copyFile($relative_source_path);
        } else if (is_dir($source_full_path)) {
            $this->copyDirectory($relative_source_path);
        } else {
            throw new \InvalidArgumentException('source file or directory not found');
        }
    }

    public function setScssCompiler(\Leafo\ScssPhp\Compiler $scss_compiler)
    {
        $this->_scss_compiler = $scss_compiler;
        return $this;
    }

    /**
     * @return \Leafo\ScssPhp\Compiler
     */
    public function getScssCompiler(): \Leafo\ScssPhp\Compiler
    {
        if (empty($this->_scss_compiler)) {
            $this->_scss_compiler = new \Leafo\ScssPhp\Compiler();
            $this->_scss_compiler->setFormatter(new \Leafo\ScssPhp\Formatter\Expanded());
        }
        return $this->_scss_compiler;
    }

    public function compileScssFileToString(string $scss_file_path): string
    {
        $scss = $this->getScssCompiler();
        return $scss->compile(file_get_contents($scss_file_path));
    }

    public function compileScssFileToFile(string $scss_file_path, $destination_file_path): string
    {
        $css = $this->compileScssFileToString($scss_file_path);
        file_put_contents($destination_file_path, $css);
        return $css;
    }

    /**
     * Egyetlen oldal típus elkészítése
     *
     * @param string $page_type
     */
    private function _buildPageType(string $page_type)
    {
        $xsl_document = new \DOMDocument();
        $xsl_document->formatOutput = true;
        $xsl_document->load($this->getTemplateDir() . $this->getPageType() . '.xsl');

        $xml_document = new \DOMDocument();
        $xml_document->formatOutput = true;
        $variables = array_merge([
            'head_css' => true,
            'head_javascript' => true,
            'body_javascript' => true,
        ],$this->_variables);
        $xml_document->loadXML(\Spatie\ArrayToXml\ArrayToXml::convert($variables, 'variables'));

        $proc = new \Genkgo\Xsl\XsltProcessor();
        $proc->importStylesheet($xsl_document);
        $proc->registerPHPFunctions();
        $dom_document = $proc->transformToDoc($xml_document);
        $dom_document->formatOutput = true;
        $dom_document->preserveWhiteSpace = false;
        $dom_document->recover = true;
        $dom_document->encoding = 'UTF-8';

        $content = $dom_document->saveHTML($dom_document);

        $indenter = new \Gajus\Dindent\Indenter([
            'indentation_character' => "\t",
        ]);
        $content = $indenter->indent($content);
        return trim($content);
    }

    public function build(): string
    {
        return $this->_buildPageType($this->getPageType());
    }
}