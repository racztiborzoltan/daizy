<?php
/**
 * @var \League\Plates\Template\Template $this
 */
$baseHref = $this->data['baseHref'] ?? null;
?>

<!DOCTYPE html>
<!-- Daizy Minimalistic Admin Template -->
<html lang="hu">
	<head>
		<?php if ($baseHref):?>
			<base href="<?php $this->e($baseHref)?>"/>
		<?php endif;?>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<?php if ($this->section('header_title')):?>
			<?php echo $this->section('header_title')?>
		<?php elseif (isset($this->data['title'])):?>
			<title><?php echo $this->data['title']?></title>
		<?php endif;?>
		<?php if ($this->section('header_css')):?>
			<?php echo $this->section('header_css')?>
		<?php endif;?>
		<?php if ($this->section('header_javascript')):?>
			<?php echo $this->section('header_javascript')?>
		<?php endif;?>
	</head>
	<body class="container">
    	<div class="page-loader">
    		<div class="spinner primary"></div>
    	</div>
		<?=$this->section('content')?>
		<div class="scripts">
		<?php if ($this->section('body_javascript')):?>
			<?php echo $this->section('body_javascript')?>
		<?php endif;?>
		</div>
	</body>
</html>
