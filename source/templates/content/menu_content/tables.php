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
