<?php
/**
 * @var \League\Plates\Template\Template $this
 */
?>


<?php $this->start('header_title');?>
	<title>Daizy Minimalistic Admin Template</title>
<?php $this->stop();?>


<?php $this->start('header_css');?>
	<link rel="stylesheet" href="assets/daizy//mini.css-3.0.0/dist/mini-default.min.css">
	<link rel="stylesheet" href="assets/daizy/basscss-8.0.2/basscss.min.css">
	<link rel="stylesheet" href="assets/daizy/mini-css-plus.css">
	<link rel="stylesheet" href="assets/daizy/daizy.css">
<?php $this->stop();?>


<?php $this->start('body_javascript');?>
	<noscript data-show="true">Javascript disabled!</noscript>
	<script src="assets/daizy/umbrella-2.10.2/umbrella.min.js" type="text/javascript"></script>
	<script src="assets/daizy/daizy.js" type="text/javascript"></script>
<?php $this->stop();?>
