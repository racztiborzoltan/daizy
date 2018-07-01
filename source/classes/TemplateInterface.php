<?php
namespace Daizy;

interface TemplateInterface
{

    public function setVariable($name, $value);

    public function removeVariable($name);

    public function getVariable($name, $default_value = null);

    public function setTemplatePath(string $template_path);

    public function getTemplatePath();

    public function render(): string;
}