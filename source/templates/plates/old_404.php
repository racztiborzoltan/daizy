<?php
/**
 * @var \League\Plates\Template\Template $this
 */
?>
<?php $this->layout('daizy_html_layout', ['title' => '404 page']) ?>


<?php $this->start('header_css');?>
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- 		<link rel="stylesheet" href="assets/bootstrap-material-design-4.1.1/bootstrap-material-design.min.css" /> -->
		<link rel="stylesheet" href="assets/bootswatch-materia-4.1.1/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/theme.css" />
		<link rel="stylesheet" href="assets/login.css" />
		<link rel="stylesheet" href="assets/dashboard.css" />
<?php $this->stop();?>


<?php $this->start('body_javascript');?>
		<noscript class="js-disabled alert"><a href="https://www.enable-javascript.com/hu/" target="_blank" class="text-danger">JavaScript is disabled!</a></noscript>
		<script src="https://cdn.polyfill.io/v2/polyfill.min.js"></script>
		<script src="assets/jquery-3.3.1/jquery-3.3.1.min.js" type="text/javascript"></script>
		<script src="assets/jquery-3.3.1/jquery-migrate-3.0.1.min.js" type="text/javascript"></script>
		<script src="assets/bootstrap-4.1.1/bootstrap.bundle.min.js" type="text/javascript"></script>
<!-- 		<script src="assets/popper.js-1.14.3/dist/umd/popper.min.js" type="text/javascript"></script> -->
<!-- 		<script src="assets/bootstrap-material-design-4.1.1/bootstrap-material-design.min.js" type="text/javascript"></script> -->
		<script src="assets/theme.js" type="text/javascript"></script>
<?php $this->stop();?>


<div class="page-loader"></div>
<div class="container login-container h-100">
    <div class="row h-100 align-items-center">
    	<div class="col-12 text-center">
    		<h1>404 - Page Not Found</h1>
		</div>
	</div>
</div>
