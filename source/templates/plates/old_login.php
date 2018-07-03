<?php
/**
 * @var \League\Plates\Template\Template $this
 */
?>
<?php $this->layout('daizy_html_layout', ['title' => 'Login page']) ?>


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


<?php
$menu_tiles_contents = [
    __DIR__ . '/menu_content/dashboard.php',
    __DIR__ . '/menu_content/forms.php',
    __DIR__ . '/menu_content/tables.php'
];
?>
<div class="page-loader"></div>
<div class="container login-container h-100">
    <div class="row h-100 align-items-center">
    	<div class="col-md-6 offset-md-3 text-center">
    		<input id="adminLoginUrl" type="hidden" value=""/>
        	<form class="login" method="post">
        		<input name="login" type="hidden" value=""/>
        		<input name="redirect_url" type="hidden" value=""/>
        		<div class="form-group">
        			<input class="form-control text-center" name="email" type="email" autofocus="autofocus" required="required" placeholder="E-mail"/>
        		</div>
        		<div class="form-group">
        			<input class="form-control text-center" name="password" type="password" required="required" placeholder="Password"/>
        		</div>
        		<div class="form-group">
        			<button class="btn btn-primary" type="submit">
        				Login
                  		<i class="material-icons loader animate-spin" hidden="">autorenew</i>
        			</button>
        		</div>
        		<div class="form-group">
                	<?php include __DIR__.'/../includes/language_switcher.php'?>
        		</div>
        	</form>

            <div class="modal fade" id="loginAlertMessageModal" tabindex="-1" role="dialog" aria-labelledby="loginAlertMessageModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <div class="alert-message"></div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                  </div>
                </div>
              </div>
            </div>
    	</div>
    </div>
</div>
