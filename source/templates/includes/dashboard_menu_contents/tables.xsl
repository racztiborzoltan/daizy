<xsl:stylesheet 
	version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	>

	<xsl:template name="dashboard_menu_content__tables">
		<div class="card bg-light mt-3 menu-content">
			<xsl:variable name="collapse_id" select="php:function('uniqid', 'id_')"></xsl:variable>
			<xsl:variable name="collapse_caption" select="'Tables'"></xsl:variable>
		
			<xsl:call-template name="dashboard_menu_content_header">
				<xsl:with-param name="menu_content_id" select="$collapse_id"></xsl:with-param>
				<xsl:with-param name="menu_content_caption" select="$collapse_caption"></xsl:with-param>
			</xsl:call-template>
			
			<div id="{$collapse_id}" class="collapse">
				<div class="card-body">

					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<h3 class="mt-5">Table</h3>
								<table class="table table-bordered table-striped table-hover">
									<thead class="">
										<tr>
											<th>#</th>
											<th>First Name</th>
											<th>Last Name</th>
											<th>Username</th>
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
							<div class="col-md-6">
								<h3 class="mt-5">Inversed table</h3>
								<table class="table table-bordered table-striped table-hover table-inverse">
									<thead class="">
										<tr>
											<th>#</th>
											<th>First Name</th>
											<th>Last Name</th>
											<th>Username</th>
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
						<div class="row">
							<div class="col-md-6">
								<h3 class="mt-5">Table with colors</h3>
								<p><strong>Note: </strong> Use <code>table-*</code> classes.</p>
								<table class="table table-hover">
									<thead>
										<tr>
											<th>Type</th>
											<th>Column heading</th>
											<th>Column heading</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row">Default</th>
											<td>Column content</td>
											<td>Column content</td>
										</tr>
			
			
			
			
										<tr class="table-active">
											<th scope="row">Active</th>
											<td>Column content</td>
											<td>Column content</td>
										</tr>
			
			
										<tr class="table-primary">
											<th scope="row">Primary</th>
											<td>Column content</td>
											<td>Column content</td>
										</tr>
			
			
										<tr class="table-secondary">
											<th scope="row">Secondary</th>
											<td>Column content</td>
											<td>Column content</td>
										</tr>
			
			
										<tr class="table-success">
											<th scope="row">Success</th>
											<td>Column content</td>
											<td>Column content</td>
										</tr>
			
			
										<tr class="table-danger">
											<th scope="row">Danger</th>
											<td>Column content</td>
											<td>Column content</td>
										</tr>
			
			
										<tr class="table-warning">
											<th scope="row">Warning</th>
											<td>Column content</td>
											<td>Column content</td>
										</tr>
			
			
										<tr class="table-info">
											<th scope="row">Info</th>
											<td>Column content</td>
											<td>Column content</td>
										</tr>
			
			
										<tr class="table-light">
											<th scope="row">Light</th>
											<td>Column content</td>
											<td>Column content</td>
										</tr>
			
			
										<tr class="table-dark">
											<th scope="row">Dark</th>
											<td>Column content</td>
											<td>Column content</td>
										</tr>
			
			
									</tbody>
								</table>
							</div>
							<div class="col-md-6">
								<h3 class="mt-5">Inversed table with colors</h3>
								<p><strong>Note: </strong> Use <code>bg-*</code> and <code>text-*</code> classes.</p>
								<table class="table table-hover table-inverse">
									<thead>
										<tr>
											<th>Type</th>
											<th>Column heading</th>
											<th>Column heading</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row">Default</th>
											<td>Column content</td>
											<td>Column content</td>
										</tr>
			
			
			
										<tr class="bg-primary ">
											<th scope="row">Primary</th>
											<td>Column content</td>
											<td>Column content</td>
										</tr>
			
			
			
										<tr class="bg-secondary ">
											<th scope="row">Secondary</th>
											<td>Column content</td>
											<td>Column content</td>
										</tr>
			
			
			
										<tr class="bg-success ">
											<th scope="row">Success</th>
											<td>Column content</td>
											<td>Column content</td>
										</tr>
			
			
			
										<tr class="bg-danger ">
											<th scope="row">Danger</th>
											<td>Column content</td>
											<td>Column content</td>
										</tr>
			
			
			
										<tr class="bg-warning text-dark">
											<th scope="row">Warning</th>
											<td>Column content</td>
											<td>Column content</td>
										</tr>
			
			
			
										<tr class="bg-info ">
											<th scope="row">Info</th>
											<td>Column content</td>
											<td>Column content</td>
										</tr>
			
			
			
										<tr class="bg-light text-dark">
											<th scope="row">Light</th>
											<td>Column content</td>
											<td>Column content</td>
										</tr>
			
			
			
										<tr class="bg-dark ">
											<th scope="row">Dark</th>
											<td>Column content</td>
											<td>Column content</td>
										</tr>
			
			
									</tbody>
								</table>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<h3 class="mt-5">Default header</h3>
								<table class="table ">
									<thead class="thead-default">
										<tr>
											<th>#</th>
											<th>First Name</th>
											<th>Last Name</th>
											<th>Username</th>
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
							<div class="col-md-6">
								<h3 class="mt-5">Inversed header</h3>
								<table class="table ">
									<thead class="thead-inverse">
										<tr>
											<th>#</th>
											<th>First Name</th>
											<th>Last Name</th>
											<th>Username</th>
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
						<div class="row">
							<div class="col-md-6">
								<h3 class="mt-5">Small table</h3>
								<table class="table table-sm">
									<thead class="">
										<tr>
											<th>#</th>
											<th>First Name</th>
											<th>Last Name</th>
											<th>Username</th>
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

				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>