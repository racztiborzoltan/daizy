<?php
namespace Daizy;

class SiteBuild
{

    const PAGE_TYPE_LOGIN = 'login';
    const PAGE_TYPE_DASHBOARD = 'dashboard';
    const PAGE_TYPE_404 = '404';

    const VALID_PAGE_TYPES = [
        self::PAGE_TYPE_LOGIN,
        self::PAGE_TYPE_DASHBOARD,
        self::PAGE_TYPE_404,
    ];

    private $_page_type = null;

    /**
     * @var \Daizy\TemplateInterface
     */
    private $_template = null;

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
        if (!in_array($this->_page_type, static::VALID_PAGE_TYPES)) {
            throw new \LogicException('page type is not valid. Possible page types: ' . implode(', ', array_map(function($v){return '"'.$v.'"';}, static::VALID_PAGE_TYPES)));
        }
        return $this->_page_type;
    }

    public function setTemplate(TemplateInterface $template)
    {
        $this->_template = $template;
        return $this;
    }

    public function getTemplate(): TemplateInterface
    {
        if (empty($this->_template)) {
            throw new \LogicException('empty template object. Use ->setTemplate() method before!');
        }
        return $this->_template;
    }

    public function build(): string
    {
        $page_type = $this->getPageType();

        $template = $this->getTemplate();
        switch ($page_type) {
            case 'login':
                $template->setVariable('content', 'content/login.php');
                break;
            case 'dashboard':
                $template->setVariable('content', 'content/dashboard.php');
                break;
            case '404':
                $template->setVariable('content', 'content/404.php');
                break;
            default:
                $template->setVariable('content', 'content/404.php');
        }
        $rendered_template = $template->render();

        return $rendered_template;
    }
}