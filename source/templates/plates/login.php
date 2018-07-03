<?php
/**
 * @var \League\Plates\Template\Template $this
 */
?>
<?php $this->layout('daizy_html_layout', ['title' => 'Login page']) ?>
<?php include('default_sections.php')?>


<?php $this->push('header_css');?>
	<link rel="stylesheet" href="assets/daizy/login.css">
<?php $this->stop();?>


<?php $this->push('body_javascript');?>
	<script src="assets/daizy/login.js" type="text/javascript"></script>
<?php $this->stop();?>


<main class="page-wrapper login-area col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
    <form>
    	<div class="mb2">
            <input class="block" type="text" id="Username" placeholder="Username"/>
    	</div>
    	<div class="mb2">
            <input class="block" type="password" id="password" placeholder="Password"/>
    	</div>
    	<div>
            <button type="submit" class="primary">Login</button>
    	</div>
    	<div>
    		<a href="#" class="button link">Forgotten password</a>
    	</div>
        <div class="language-switcher">
        	<select class="form-control" title="Nyelv kiválasztása">
        		<option value="hu">hu</option>
        		<option value="en">en</option>
        		<option value="de">de</option>
        	</select>
        </div>
    </form>
</main>
