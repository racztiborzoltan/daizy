<?php
/**
 * @var \Daizy\Template $this
 */
$content = $this->getVariable('content', 'content/404.php');
?>
<!DOCTYPE html>
<html lang="hu">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<title>Admin</title>
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- 		<link rel="stylesheet" href="assets/bootstrap-material-design-4.1.1/bootstrap-material-design.min.css" /> -->
		<link rel="stylesheet" href="assets/bootswatch-materia-4.1.1/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/theme.css" />
		<link rel="stylesheet" href="assets/login.css" />
		<link rel="stylesheet" href="assets/dashboard.css" />
	</head>
	<body>
		<div class="page-loader"></div>
		<?php include $content?>
		<noscript class="js-disabled alert"><a href="https://www.enable-javascript.com/hu/" target="_blank" class="text-danger">JavaScript is disabled!</a></noscript>
		<script src="https://cdn.polyfill.io/v2/polyfill.min.js"></script>
		<script src="assets/jquery-3.3.1/jquery-3.3.1.min.js" type="text/javascript"></script>
		<script src="assets/jquery-3.3.1/jquery-migrate-3.0.1.min.js" type="text/javascript"></script>
		<script src="assets/bootstrap-4.1.1/bootstrap.bundle.min.js" type="text/javascript"></script>
<!-- 		<script src="assets/popper.js-1.14.3/dist/umd/popper.min.js" type="text/javascript"></script> -->
<!-- 		<script src="assets/bootstrap-material-design-4.1.1/bootstrap-material-design.min.js" type="text/javascript"></script> -->
		<script src="assets/theme.js" type="text/javascript"></script>
	</body>
</html>