<?php
namespace Daizy;

class SiteBuild
{

    private $_template_dir = null;

    private $_page_type = null;

    private $_variables = [];

    public function getValidPageTypes(): array
    {
        $template_dir = $this->getTemplateDir();
        $files = scandir($template_dir);
        $files = array_diff($files, ['.', '..', 'daizy_html_layout.php', 'daizy_html_layout_old.php']);
        $valid_page_types = [];
        foreach ($files as $file) {
            if (substr($file, -4) !== '.php') {
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
        $this->_template_dir = $template_dir;
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

    public function build(): string
    {
        $template = new \League\Plates\Engine($this->getTemplateDir());
        return $template->render($this->getPageType(), $this->_variables);
    }
}