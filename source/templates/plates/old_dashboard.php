<?php
/**
 * @var \League\Plates\Template\Template $this
 */
?>
<?php $this->layout('daizy_html_layout', ['title' => 'Dashboard page']) ?>


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
<div class="container dashboard">
	<header>
        <nav class="navbar navbar-expand-sm navbar-light bg-light admin-navbar">
        	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#adminNavContent" aria-controls="adminNavContent" aria-expanded="false" aria-label="Toggle navigation">
        		<span class="navbar-toggler-icon"></span>
        	</button>

        	<div class="collapse navbar-collapse" id="adminNavContent">
        		<ul class="navbar-nav w-100 d-lg-flex">
        			<li class="nav-item mx-1 module-search-menu-item">
        				<div class="nav-link d-flex">
        					<label for="admin_module_search">
								<i class="material-icons left mr-1">search</i>
        					</label>
							<input id="admin_module_search" class="form-control mr-sm-2" type="search" placeholder="Keresés..." aria-label="Keresés" autofocus="autofocus">
        				</div>
        			</li>
        			<li class="nav-item mx-1">
        				<a class="nav-link admin-home-link" href="">
    						<i class="material-icons left">home</i>
    						<span class="d-inline d-sm-none caption">Főoldal</span>
        				</a>
        			</li>
    				<li class="nav-item mx-1">
    					<div class="nav-link language-switcher">
    						<label for="languageSwitcher01" class="d-inline d-sm-none">
								<i class="d-inline material-icons left mr-1 label-ico m-0">language</i>
    						</label>
                        	<select class="form-control" id="languageSwitcher01" title="Nyelv kiválasztása">
                        		<option value="hu">hu</option>
                        		<option value="en">en</option>
                        		<option value="de">de</option>
                        	</select>
    					</div>
    				</li>
    				<li class="nav-item mx-1">
    					<a class="nav-link" title="Segítség" href="#" onclick="window.alert('fejlesztés alatt!');return false;">
    						<i class="material-icons left">help_outline</i>
    						<span class="d-inline d-sm-none caption">Segítség</span>
    					</a>
    				</li>
    				<li class="nav-item mx-1">
    					<a class="nav-link logout-link" title="Kilépés" href="admin?_op=logout">
    						<i class="material-icons left">exit_to_app</i>
    						<span class="d-inline d-sm-none caption">Kilépés</span>
    					</a>
    				</li>
        		</ul>
        	</div>
        </nav>
	</header>
	<template id="template_admin_module_item" hidden="">
		<div class="card admin-module">
    		<div class="card-header admin-module-header" id="admin_module_heading_">
    			<h5 class="mb-0">
    			<button class="btn btn-link btn-block text-left" data-toggle="collapse" data-target="#admin_module_collapse_" aria-expanded="false" aria-controls="collapseOne">
		          	<i class="material-icons" >code</i>
		          	<span class="caption admin-module-name"></span>
    			</button>
    			</h5>
    		</div>
    		<div id="admin_module_collapse_" class="collapse" aria-labelledby="admin_module_heading_">
    			<div class="card-body admin-module-body">
    			</div>
    		</div>
		</div>
	</template>
	<div id="admin_modules" class="accordion admin-modules">

<?php
$index = 'dashboard';
$menu_title = 'Dashboard';
?>
    		<div class="card admin-module">
        		<div class="card-header admin-module-header" id="admin_module_heading_<?php echo $index?>">
        			<h5 class="mb-0">
        			<button class="btn btn-link btn-block text-left" data-toggle="collapse" data-target="#admin_module_collapse_<?php echo $index?>" aria-expanded="false" aria-controls="collapseOne">
			          	<i class="material-icons" >code</i>
			          	<span class="caption admin-module-name"><?php echo $menu_title?></span>
        			</button>
        			</h5>
        		</div>
        		<div id="admin_module_collapse_<?php echo $index?>" class="collapse" aria-labelledby="admin_module_heading_<?php echo $index?>">
        			<div class="card-body admin-module-body">
                        <table class="table table-striped table-hover">
                          <thead>
                            <tr>
                              <th scope="col">#</th>
                              <th scope="col">First</th>
                              <th scope="col">Last</th>
                              <th scope="col">Handle</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <th scope="row">1</th>
                              <td>Mark</td>
                              <td>Otto</td>
                              <td>@mdo</td>
                            </tr>
                            <tr>
                              <th scope="row">2</th>
                              <td>Jacob</td>
                              <td>Thornton</td>
                              <td>@fat</td>
                            </tr>
                            <tr>
                              <th scope="row">3</th>
                              <td>Larry</td>
                              <td>the Bird</td>
                              <td>@twitter</td>
                            </tr>
                          </tbody>
                        </table>
        			</div>
        		</div>
    		</div>
<?php
unset($index, $menu_title);
?>


<?php
$index = 'forms';
$menu_title = 'Forms';
?>
    		<div class="card admin-module">
        		<div class="card-header admin-module-header" id="admin_module_heading_<?php echo $index?>">
        			<h5 class="mb-0">
        			<button class="btn btn-link btn-block text-left" data-toggle="collapse" data-target="#admin_module_collapse_<?php echo $index?>" aria-expanded="false" aria-controls="collapseOne">
			          	<i class="material-icons" >code</i>
			          	<span class="caption admin-module-name"><?php echo $menu_title?></span>
        			</button>
        			</h5>
        		</div>
        		<div id="admin_module_collapse_<?php echo $index?>" class="collapse" aria-labelledby="admin_module_heading_<?php echo $index?>">
        			<div class="card-body admin-module-body">
                        <table class="table table-striped table-hover">
                          <thead>
                            <tr>
                              <th scope="col">#</th>
                              <th scope="col">First</th>
                              <th scope="col">Last</th>
                              <th scope="col">Handle</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <th scope="row">1</th>
                              <td>Mark</td>
                              <td>Otto</td>
                              <td>@mdo</td>
                            </tr>
                            <tr>
                              <th scope="row">2</th>
                              <td>Jacob</td>
                              <td>Thornton</td>
                              <td>@fat</td>
                            </tr>
                            <tr>
                              <th scope="row">3</th>
                              <td>Larry</td>
                              <td>the Bird</td>
                              <td>@twitter</td>
                            </tr>
                          </tbody>
                        </table>
        			</div>
        		</div>
    		</div>
<?php
unset($index, $menu_title);
?>


<?php
$index = 'tables';
$menu_title = 'Tables';
?>
    		<div class="card admin-module">
        		<div class="card-header admin-module-header" id="admin_module_heading_<?php echo $index?>">
        			<h5 class="mb-0">
        			<button class="btn btn-link btn-block text-left" data-toggle="collapse" data-target="#admin_module_collapse_<?php echo $index?>" aria-expanded="false" aria-controls="collapseOne">
			          	<i class="material-icons" >code</i>
			          	<span class="caption admin-module-name"><?php echo $menu_title?></span>
        			</button>
        			</h5>
        		</div>
        		<div id="admin_module_collapse_<?php echo $index?>" class="collapse" aria-labelledby="admin_module_heading_<?php echo $index?>">
        			<div class="card-body admin-module-body">
                        <table class="table table-striped table-hover">
                          <thead>
                            <tr>
                              <th scope="col">#</th>
                              <th scope="col">First</th>
                              <th scope="col">Last</th>
                              <th scope="col">Handle</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <th scope="row">1</th>
                              <td>Mark</td>
                              <td>Otto</td>
                              <td>@mdo</td>
                            </tr>
                            <tr>
                              <th scope="row">2</th>
                              <td>Jacob</td>
                              <td>Thornton</td>
                              <td>@fat</td>
                            </tr>
                            <tr>
                              <th scope="row">3</th>
                              <td>Larry</td>
                              <td>the Bird</td>
                              <td>@twitter</td>
                            </tr>
                          </tbody>
                        </table>
        			</div>
        		</div>
    		</div>
<?php
unset($index, $menu_title);
?>


	</div>
	<footer class="text-center">
		<code class="copyright">&copy; <span class="copyright-product-name">DaiZy Html Template</span> <span class="copyright-version-number">v0.0.0</span></code>
	</footer>
</div>
