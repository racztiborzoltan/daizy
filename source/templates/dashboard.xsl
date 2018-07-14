<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:import href="includes/daizy_html_layout.xsl" />
	
	<xsl:param name="head_title" select="'Dashboard Page'" />
	
	<xsl:param name="copyright_text" select="' DaiZy Html Template v0.0.0'"/>

	
	<xsl:template match="head_css">
		<xsl:apply-imports/>
		
		<!-- login.css fájl másolása -->
		<xsl:variable name="dashboard_css_path">assets/daizy/dashboard.css</xsl:variable>
		<xsl:value-of select="php:function('\Daizy\SiteBuildHelper::copyFile', $dashboard_css_path)"/>
		<link rel="stylesheet" href="{$dashboard_css_path}"/>
	</xsl:template>

	
	<xsl:template match="body_javascript">
		<xsl:apply-imports/>
		
		<!-- dashboard.js fájl másolása -->
		<xsl:variable name="dashboard_js_path">assets/daizy/dashboard.js</xsl:variable>
		<xsl:value-of select="php:function('\Daizy\SiteBuildHelper::copyFile', $dashboard_js_path)"/>
		<script src="{$dashboard_js_path}" type="text/javascript"></script>
	</xsl:template>


	<xsl:template name="body_content">
		<div class="page-wrapper container">
			<div class="row">
				<div class="col-12">
					<xsl:call-template name="header"></xsl:call-template>
					<xsl:call-template name="main"></xsl:call-template>
					<xsl:call-template name="footer"></xsl:call-template>
				</div>
			</div>
		</div>
	</xsl:template>
	
	<xsl:template name="header">
		<header>
			<nav class="navbar navbar-expand-md navbar-light">
				<form class="form-inline search" onsubmit="return false;">
					<input class="form-control w-100" type="search" placeholder="Search..." aria-label="Search"/>
				</form>
				
				<!-- <a class="navbar-brand" href="#">Navbar</a> -->
				<button class="navbar-toggler mobile-menu-toggler" type="button" data-toggle="collapse" data-target="#headerNavbarContent" aria-controls="headerNavbarContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
			
				<div class="collapse navbar-collapse" id="headerNavbarContent">
					<ul class="navbar-nav">
						<li class="nav-item">
							<a class="nav-link menu-item" href="" title="Main Page">
								<span class="icon">
									<xsl:call-template name="bytesize_icons">
										<xsl:with-param name="name">home</xsl:with-param>
									</xsl:call-template>
								</span>
								<span class="caption">Main Page</span>
							</a>
						</li>
						<li class="nav-item">
							<span class="nav-link menu-item language-switcher">
								<span class="icon">
									<xsl:call-template name="bytesize_icons">
										<xsl:with-param name="name">settings</xsl:with-param>
									</xsl:call-template>
								</span>
								<xsl:variable name="change_language_select_id" select="generate-id()"></xsl:variable>
								<label class="caption m-0" for="$change_language_select_id">
									Language:
								</label>
								<select id="$change_language_select_id" title="Change language...">
									<option value="hu">hu</option>
									<option value="en">en</option>
									<option value="de">de</option>
								</select>
							</span>
						</li>
						<li class="nav-item">
							<a class="nav-link menu-item" href="#" title="Display help">
								<span class="icon">
									<xsl:call-template name="bytesize_icons">
										<xsl:with-param name="name">info</xsl:with-param>
									</xsl:call-template>
								</span>
								<span class="caption">
									Help
								</span>
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link menu-item" href="#" title="Logout">
								<span class="icon">
									<xsl:call-template name="bytesize_icons">
										<xsl:with-param name="name">logout</xsl:with-param>
									</xsl:call-template>
								</span>
								<span class="caption">
									Logout
								</span>
							</a>
						</li>
					</ul>
				</div>
			</nav>	
		</header>
	</xsl:template>
	
	<xsl:template name="button_maximize_section">
		<button class="btn btn-link" type="button" title="Maximize this section">
			<span class="icon">
				<xsl:call-template name="bytesize_icons">
					<xsl:with-param name="name">external</xsl:with-param>
				</xsl:call-template>
			</span>
		</button>
	</xsl:template>
	
	<xsl:template name="main">
		<main class="mt-3">
			<div class="accordion menu-contents">
				<div class="card menu-content">
					<div class="card-header menu-content-header" id="headingOne">
						<button class="btn btn-link btn-block collapsed" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
							<span class="caption">Dashboard</span>
						</button>
						<xsl:call-template name="button_maximize_section"></xsl:call-template>
					</div>
					
					<div id="collapseOne" class="collapse" aria-labelledby="headingOne">
						<div class="card-body">
						<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu non sodales neque sodales ut etiam sit amet nisl. Ullamcorper sit amet risus nullam eget. Nibh tortor id aliquet lectus proin. Eget nunc scelerisque viverra mauris in aliquam sem. Nisi lacus sed viverra tellus in hac habitasse platea. Pellentesque nec nam aliquam sem et tortor consequat id. Eu consequat ac felis donec et odio pellentesque diam. Urna porttitor rhoncus dolor purus non enim. Nec ultrices dui sapien eget.</p>
						<p>Parturient montes nascetur ridiculus mus. Sem et tortor consequat id porta nibh venenatis cras. Tristique senectus et netus et. In eu mi bibendum neque egestas congue. Curabitur vitae nunc sed velit dignissim sodales. Amet tellus cras adipiscing enim eu turpis egestas pretium. Vitae aliquet nec ullamcorper sit amet risus. Auctor augue mauris augue neque gravida in fermentum et. Amet porttitor eget dolor morbi. Tincidunt augue interdum velit euismod in pellentesque massa placerat duis.</p>
						<p>Vel orci porta non pulvinar. Nec dui nunc mattis enim ut tellus elementum sagittis. Suspendisse interdum consectetur libero id faucibus. In metus vulputate eu scelerisque felis imperdiet. Vitae semper quis lectus nulla at. Volutpat commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend. Pellentesque massa placerat duis ultricies lacus sed turpis tincidunt. Elementum eu facilisis sed odio morbi quis commodo odio. Accumsan in nisl nisi scelerisque eu ultrices. Pellentesque habitant morbi tristique senectus et netus et malesuada. At consectetur lorem donec massa sapien faucibus et molestie. Pellentesque habitant morbi tristique senectus. Venenatis tellus in metus vulputate eu scelerisque felis imperdiet. Nisi scelerisque eu ultrices vitae auctor eu augue ut lectus. Ultricies lacus sed turpis tincidunt id aliquet. Tempor commodo ullamcorper a lacus vestibulum.</p>
						<p>Adipiscing bibendum est ultricies integer quis auctor elit sed. Eu augue ut lectus arcu bibendum at varius vel pharetra. Non tellus orci ac auctor augue mauris augue. Amet tellus cras adipiscing enim. Ultricies integer quis auctor elit sed vulputate mi. Non enim praesent elementum facilisis leo vel fringilla est ullamcorper. Vestibulum morbi blandit cursus risus at ultrices mi tempus imperdiet. Pharetra vel turpis nunc eget lorem dolor sed. Sit amet dictum sit amet justo donec enim diam vulputate. Nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit. Arcu cursus euismod quis viverra nibh. Sem fringilla ut morbi tincidunt augue interdum velit. At in tellus integer feugiat scelerisque varius morbi. Dignissim sodales ut eu sem. Urna cursus eget nunc scelerisque viverra mauris in. Facilisis mauris sit amet massa vitae tortor condimentum lacinia quis. Vitae congue eu consequat ac. A erat nam at lectus urna duis. Sem viverra aliquet eget sit amet tellus. Faucibus vitae aliquet nec ullamcorper.</p>
						<p>Leo urna molestie at elementum eu facilisis sed odio. Eget mi proin sed libero enim. Condimentum mattis pellentesque id nibh tortor id aliquet lectus proin. Turpis egestas maecenas pharetra convallis posuere morbi leo urna molestie. Dolor sit amet consectetur adipiscing elit. Vitae turpis massa sed elementum. Quis vel eros donec ac odio tempor orci dapibus. Nunc sed velit dignissim sodales ut eu sem integer. Ante in nibh mauris cursus mattis. Tellus rutrum tellus pellentesque eu tincidunt tortor aliquam nulla.</p>
						</div>
					</div>
				</div>
				<div class="card menu-content">
					<div class="card-header menu-content-header" id="headingTwo">
						<button class="btn btn-link btn-block collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
							<span class="caption">Tables</span>
						</button>
						<xsl:call-template name="button_maximize_section"></xsl:call-template>
					</div>
					<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo">
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
				<div class="card menu-content">
					<div class="card-header menu-content-header" id="headingThree">
						<button class="btn btn-link btn-block collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
							<span class="caption">Forms</span>
						</button>
						<xsl:call-template name="button_maximize_section"></xsl:call-template>
					</div>
					<div id="collapseThree" class="collapse" aria-labelledby="headingThree">
						<div class="card-body">
							<div class="container">
								<form>
									<div class="row">
										<div class="col-md-6">
											<h3 class="mt-5">Text fields</h3>
											<div class="form-group">
												<label for="exampleInputEmail1">Email address</label>
												<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email"/>
												<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
											</div>
											<div class="form-group">
												<input type="password" class="form-control" placeholder="Password"/>
											</div>
											<div class="form-group">
												<input class="form-control" type="text" placeholder="Readonly input" readonly=""/>
											</div>
											<div class="form-group">
												<input type="text" readonly="" class="form-control-plaintext" id="staticEmail" value="Readonly input as plain text"/>
											</div>
											<div class="form-group">
												<input type="text" class="form-control" placeholder="Disabled input" disabled=""/>
											</div>
											<div class="form-group">
												<label for="validText">Valid input</label>
												<input type="text" class="form-control is-valid" id="validText" value="Valid input"/>
											</div>
											<div class="form-group">
												<label for="invalidText">Invalid input</label>
												<input type="text" class="form-control is-invalid" id="invalidText" value="Invalid input"/>
												<div class="invalid-feedback">Please provide a valid value.</div>
											</div>
											<div class="form-group">
												<input class="form-control form-control-lg" type="text" placeholder=".form-control-lg"/>
											</div>
											<div class="form-group">
												<input class="form-control" type="text" placeholder="Default input"/>
											</div>
											<div class="form-group">
												<input class="form-control form-control-sm" type="text" placeholder=".form-control-sm"/>
											</div>
											<div class="form-group">
												<div class="input-group input-group-lg">
													<span class="input-group-addon">$</span>
													<input type="text" class="form-control" aria-label="Amount (to the nearest dollar)"/>
													<span class="input-group-addon">.00</span>
												</div>
											</div>
											<div class="form-group">
												<div class="input-group">
													<span class="input-group-addon">$</span>
													<input type="text" class="form-control" aria-label="Amount (to the nearest dollar)"/>
													<span class="input-group-addon">.00</span>
												</div>
											</div>
											<div class="form-group">
												<div class="input-group">
													<span class="input-group-btn">
														<button class="btn btn-secondary" type="button">Hate it</button>
													</span>
													<input type="text" class="form-control" placeholder="Product name" aria-label="Product name"/>
													<span class="input-group-btn">
														<button class="btn btn-secondary" type="button">Love it</button>
													</span>
												</div>
											</div>
											<div class="form-group">
												<div class="input-group">
													<input type="text" class="form-control" aria-label="Text input with dropdown button"/>
													<div class="input-group-btn">
														<button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Action</button>
														<div class="dropdown-menu dropdown-menu-right">
															<a class="dropdown-item" href="#">Action</a>
															<a class="dropdown-item" href="#">Another action</a>
															<a class="dropdown-item" href="#">Something else here</a>
															<div role="separator" class="dropdown-divider"></div>
															<a class="dropdown-item" href="#">Separated link</a>
														</div>
													</div>
												</div>
											</div>
											<div class="form-group">
												<label for="exampleFormControlTextarea1">Example textarea</label>
												<textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
											</div>
							
											<h3 class="mt-5">Layouts</h3>
											<div class="form-group">
												<div class="row">
													<div class="col">
														<input type="text" class="form-control" placeholder="Row / input 1"/>
													</div>
													<div class="col">
														<input type="text" class="form-control" placeholder="Row / input 2"/>
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="form-row">
													<div class="col">
														<input type="text" class="form-control" placeholder="Form row / input 1"/>
													</div>
													<div class="col">
														<input type="text" class="form-control" placeholder="Form row / input 2"/>
													</div>
												</div>
											</div>
											<div class="form-group row">
												<label for="inputEmail3" class="col-sm-4 col-form-label">Horizontal</label>
												<div class="col-sm-8">
													<input type="email" class="form-control" id="inputEmail3" placeholder="form layout"/>
												</div>
											</div>
											<div class="form-group">
												<div class="form-inline">
													<input type="text" class="form-control mb-2 mr-sm-2 mb-sm-0" placeholder="Inline input 1"/>
													<div class="input-group mb-2 mr-sm-2 mb-sm-0">
														<div class="input-group-addon">@</div>
														<input type="text" class="form-control" placeholder="Inline input 2"/>
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="form-inline">
													<div class="form-group">
														<label for="inputPassword6">Password</label>
														<input type="password" id="inputPassword6" class="form-control mx-sm-3" aria-describedby="passwordHelpInline"/>
														<small id="passwordHelpInline" class="text-muted">Must be 8-20 characters long.</small>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<h3 class="mt-5">Selects</h3>
											<div class="form-group">
												<label for="exampleFormControlSelect1">Example select</label>
												<select class="form-control" id="exampleFormControlSelect1">
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
												</select>
											</div>
											<div class="form-group">
												<label for="exampleFormControlSelect2">Example multiple select</label>
												<select multiple="" class="form-control" id="exampleFormControlSelect2">
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
												</select>
											</div>
											<div class="form-group">
												<select class="form-control form-control-lg">
													<option>Large select</option>
												</select>
											</div>
											<div class="form-group">
												<select class="form-control">
													<option>Default select</option>
												</select>
											</div>
											<div class="form-group">
												<select class="form-control form-control-sm">
													<option>Small select</option>
												</select>
											</div>
											<div class="form-group">
												<select class="custom-select">
													<option selected="">Custom select</option>
													<option value="1">One</option>
													<option value="2">Two</option>
													<option value="3">Three</option>
												</select>
											</div>
							
											<h3 class="mt-5">Checkboxes</h3>
											<div class="form-check">
												<label class="form-check-label">
													<input class="form-check-input" type="checkbox" value=""/> Option one is this and that—be sure to include why it's great
												</label>
											</div>
											<div class="form-check disabled">
												<label class="form-check-label">
													<input class="form-check-input" type="checkbox" value="" disabled=""/> Option two is disabled
												</label>
											</div>
											<div class="form-check">
												<label class="form-check-label custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input" checked=""/>
													<span class="custom-control-indicator"></span>
													<span class="custom-control-description">Custom checkbox</span>
												</label>
											</div>
											<div class="form-check">
												<label class="form-check-label custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input"/>
													<span class="custom-control-indicator"></span>
													<span class="custom-control-description">Custom checkbox</span>
												</label>
											</div>
											<div class="form-check">
												<label class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input" disabled=""/>
													<span class="custom-control-indicator"></span>
													<span class="custom-control-description">Disabled custom checkbox</span>
												</label>
											</div>
											<div class="form-check">
												<label class="form-check-label custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input is-valid"/>
													<span class="custom-control-indicator"></span>
													<span class="custom-control-description">Valid checkbox</span>
												</label>
											</div>
											<div class="form-check">
												<label class="form-check-label custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input is-invalid"/>
													<span class="custom-control-indicator"></span>
													<span class="custom-control-description">Invalid checkbox</span>
												</label>
											</div>
											<div class="form-check form-check-inline">
												<label class="form-check-label">
													<input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1"/> 1
												</label>
											</div>
											<div class="form-check form-check-inline">
												<label class="form-check-label">
													<input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2"/> 2
												</label>
											</div>
											<div class="form-check form-check-inline disabled">
												<label class="form-check-label">
													<input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3" disabled=""/> 3
												</label>
											</div>
							
											<h3 class="mt-5">Radio buttons</h3>
											<div class="form-check">
												<label class="form-check-label">
													<input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked=""/> Option one is this and that—be sure to include why it's great
												</label>
											</div>
											<div class="form-check">
												<label class="form-check-label">
													<input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2"/> Option two can be something else and selecting it will deselect option one
												</label>
											</div>
											<div class="form-check disabled">
												<label class="form-check-label">
													<input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios3" value="option3" disabled=""/> Option three is disabled
												</label>
											</div>
											<div class="form-check">
												<label class="form-check-label custom-control custom-radio">
													<input type="radio" name="custom-radio-group" class="custom-control-input" checked=""/>
													<span class="custom-control-indicator"></span>
													<span class="custom-control-description">Custom radio</span>
												</label>
											</div>
											<div class="form-check">
												<label class="form-check-label custom-control custom-radio">
													<input type="radio" name="custom-radio-group" class="custom-control-input"/>
													<span class="custom-control-indicator"></span>
													<span class="custom-control-description">Custom radio</span>
												</label>
											</div>
											<div class="form-check">
												<label class="custom-control custom-radio">
													<input type="radio" class="custom-control-input" disabled=""/>
													<span class="custom-control-indicator"></span>
													<span class="custom-control-description">Disabled custom radio</span>
												</label>
											</div>
											<div class="form-check">
												<label class="form-check-label custom-control custom-radio">
													<input type="radio" class="custom-control-input is-valid"/>
													<span class="custom-control-indicator"></span>
													<span class="custom-control-description">Valid radio</span>
												</label>
											</div>
											<div class="form-check">
												<label class="form-check-label custom-control custom-radio">
													<input type="radio" class="custom-control-input is-invalid"/>
													<span class="custom-control-indicator"></span>
													<span class="custom-control-description">Invalid radio</span>
												</label>
											</div>
											<div class="form-check form-check-inline">
												<label class="form-check-label">
													<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"/> 1
												</label>
											</div>
											<div class="form-check form-check-inline">
												<label class="form-check-label">
													<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"/> 2
												</label>
											</div>
											<div class="form-check form-check-inline disabled">
												<label class="form-check-label">
													<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3" disabled=""/> 3
												</label>
											</div>
										</div>
									</div>
								</form>
							
							</div>
						</div>
					</div>
				</div>
			</div>		
		</main>
	</xsl:template>
	
	<xsl:template name="footer">
		<footer class="text-center">
			<tt class="copyright">
				<small class="caption">
					<xsl:value-of select="$copyright_text"/>
				</small>
			</tt>
		</footer>
	</xsl:template>
	
	<xsl:template name="body_content___asdgasg">
		<div class="page-wrapper col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
		
			<main>
				<div class="collapse">
					<input type="checkbox" id="collapse-section-forms" aria-hidden="true"/>
					<label for="collapse-section-forms" aria-hidden="true">
						<span class="caption">Forms</span>
						<a href="#" class="icon-svg float-right maximize-section">
							<xsl:call-template name="feather-icon-maximize-2"/>
						</a>
					</label>
					<div>
						<h3>Simple form</h3>
						<form>
						  <fieldset>
							<legend>Simple form</legend>
							<label for="username_1">Username</label>
							<input type="text" id="Username_1" placeholder="Username"/>
							<label for="password_1">Password</label>
							<input type="password" id="password_1" placeholder="Password"/>
						  </fieldset>
						</form>

						<h3>Best practices</h3>
						<form>
						  <fieldset>
							<legend>Simple form</legend>
							<div class="row">
							  <div class="col-sm-12 col-md-6">
								<label for="username_2">Username</label>
								<input type="text" id="Username_2" placeholder="Username"/>
							  </div>
							  <div class="col-sm-12 col-md-6">
								<label for="password_2">Password</label>
								<input type="password" id="password_2" placeholder="Password"/>
							  </div>
							</div>
						  </fieldset>
						</form>
					</div>

				</div>
			</main>

		</div>
	</xsl:template>

</xsl:stylesheet>