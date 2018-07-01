<?php
namespace Daizy;

class Template implements TemplateInterface
{

    private $_variables = [];

    private $_template_path = null;

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

    public function setTemplatePath(string $template_path)
    {
        $this->_template_path = $template_path;
        return $this;
    }

    public function getTemplatePath()
    {
        if (empty($this->_template_path)) {
            throw new \LogicException('template path is empty');
        }
        if (!is_file($this->_template_path)) {
            throw new \LogicException('template path not exists');
        }
        return $this->_template_path;
    }

    public function render(): string
    {
        // check template path:
        $this->getTemplatePath();

        ob_start();
        $this->_includeTemplatePath();
        $content = ob_get_clean();

        return $content;
    }

    protected function _includeTemplatePath()
    {
        return include $this->getTemplatePath();
    }
}