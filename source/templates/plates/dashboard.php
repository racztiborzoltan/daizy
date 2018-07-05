<?php
/**
 * @var \League\Plates\Template\Template $this
 */
?>
<?php $this->layout('daizy_html_layout', ['title' => 'Dashboard page']) ?>
<?php include('default_sections.php')?>


<?php $this->push('header_css');?>
<?php $this->stop();?>


<?php $this->push('body_javascript');?>
<?php $this->stop();?>


