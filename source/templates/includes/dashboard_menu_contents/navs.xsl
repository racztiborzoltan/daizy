<xsl:stylesheet 
	version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	>

	<xsl:template match="navs">
		<xsl:call-template name="display_menu_content">
			<xsl:with-param name="menu_content">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<h3 class="mt-5">Navbars</h3>
		
		
		
		
							<nav class="navbar navbar-expand-lg navbar-dark bg-primary my-2">
								<a class="navbar-brand" href="#">Brand</a>
								<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-primary" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
									<span class="navbar-toggler-icon"></span>
								</button>
								<div class="collapse navbar-collapse" id="navbar-primary">
									<div class="nav navbar-nav">
										<a class="nav-item nav-link active" href="#">Active</a>
										<a class="nav-item nav-link" href="#">Link</a>
										<div class="nav-item dropdown">
											<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a>
											<div class="dropdown-menu">
												<a class="dropdown-item" href="#">Action</a>
												<a class="dropdown-item" href="#">Another action</a>
												<a class="dropdown-item" href="#">Something else here</a>
												<div class="dropdown-divider"></div>
												<a class="dropdown-item" href="#">Separated link</a>
											</div>
										</div>
										<a class="nav-item nav-link disabled" href="#">Disabled</a>
									</div>
									<span class="navbar-text ml-2 mr-auto">Text</span>
									<form class="form-inline">
										<input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search"/>
										<button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
									</form>
								</div>
							</nav>
		
		
		
		
							<nav class="navbar navbar-expand-lg navbar-dark bg-secondary my-2">
								<a class="navbar-brand" href="#">Brand</a>
								<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-secondary" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
									<span class="navbar-toggler-icon"></span>
								</button>
								<div class="collapse navbar-collapse" id="navbar-secondary">
									<div class="nav navbar-nav">
										<a class="nav-item nav-link active" href="#">Active</a>
										<a class="nav-item nav-link" href="#">Link</a>
										<div class="nav-item dropdown">
											<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a>
											<div class="dropdown-menu">
												<a class="dropdown-item" href="#">Action</a>
												<a class="dropdown-item" href="#">Another action</a>
												<a class="dropdown-item" href="#">Something else here</a>
												<div class="dropdown-divider"></div>
												<a class="dropdown-item" href="#">Separated link</a>
											</div>
										</div>
										<a class="nav-item nav-link disabled" href="#">Disabled</a>
									</div>
									<span class="navbar-text ml-2 mr-auto">Text</span>
									<form class="form-inline">
										<input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search"/>
										<button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
									</form>
								</div>
							</nav>
		
		
		
		
							<nav class="navbar navbar-expand-lg navbar-dark bg-success my-2">
								<a class="navbar-brand" href="#">Brand</a>
								<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-success" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
									<span class="navbar-toggler-icon"></span>
								</button>
								<div class="collapse navbar-collapse" id="navbar-success">
									<div class="nav navbar-nav">
										<a class="nav-item nav-link active" href="#">Active</a>
										<a class="nav-item nav-link" href="#">Link</a>
										<div class="nav-item dropdown">
											<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a>
											<div class="dropdown-menu">
												<a class="dropdown-item" href="#">Action</a>
												<a class="dropdown-item" href="#">Another action</a>
												<a class="dropdown-item" href="#">Something else here</a>
												<div class="dropdown-divider"></div>
												<a class="dropdown-item" href="#">Separated link</a>
											</div>
										</div>
										<a class="nav-item nav-link disabled" href="#">Disabled</a>
									</div>
									<span class="navbar-text ml-2 mr-auto">Text</span>
									<form class="form-inline">
										<input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search"/>
										<button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
									</form>
								</div>
							</nav>
		
		
		
		
							<nav class="navbar navbar-expand-lg navbar-dark bg-danger my-2">
								<a class="navbar-brand" href="#">Brand</a>
								<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-danger" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
									<span class="navbar-toggler-icon"></span>
								</button>
								<div class="collapse navbar-collapse" id="navbar-danger">
									<div class="nav navbar-nav">
										<a class="nav-item nav-link active" href="#">Active</a>
										<a class="nav-item nav-link" href="#">Link</a>
										<div class="nav-item dropdown">
											<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a>
											<div class="dropdown-menu">
												<a class="dropdown-item" href="#">Action</a>
												<a class="dropdown-item" href="#">Another action</a>
												<a class="dropdown-item" href="#">Something else here</a>
												<div class="dropdown-divider"></div>
												<a class="dropdown-item" href="#">Separated link</a>
											</div>
										</div>
										<a class="nav-item nav-link disabled" href="#">Disabled</a>
									</div>
									<span class="navbar-text ml-2 mr-auto">Text</span>
									<form class="form-inline">
										<input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search"/>
										<button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
									</form>
								</div>
							</nav>
		
		
		
		
							<nav class="navbar navbar-expand-lg navbar-light bg-warning my-2">
								<a class="navbar-brand" href="#">Brand</a>
								<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-warning" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
									<span class="navbar-toggler-icon"></span>
								</button>
								<div class="collapse navbar-collapse" id="navbar-warning">
									<div class="nav navbar-nav">
										<a class="nav-item nav-link active" href="#">Active</a>
										<a class="nav-item nav-link" href="#">Link</a>
										<div class="nav-item dropdown">
											<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a>
											<div class="dropdown-menu">
												<a class="dropdown-item" href="#">Action</a>
												<a class="dropdown-item" href="#">Another action</a>
												<a class="dropdown-item" href="#">Something else here</a>
												<div class="dropdown-divider"></div>
												<a class="dropdown-item" href="#">Separated link</a>
											</div>
										</div>
										<a class="nav-item nav-link disabled" href="#">Disabled</a>
									</div>
									<span class="navbar-text ml-2 mr-auto">Text</span>
									<form class="form-inline">
										<input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search"/>
										<button class="btn btn-outline-dark my-2 my-sm-0" type="submit">Search</button>
									</form>
								</div>
							</nav>
		
		
		
		
							<nav class="navbar navbar-expand-lg navbar-dark bg-info my-2">
								<a class="navbar-brand" href="#">Brand</a>
								<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-info" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
									<span class="navbar-toggler-icon"></span>
								</button>
								<div class="collapse navbar-collapse" id="navbar-info">
									<div class="nav navbar-nav">
										<a class="nav-item nav-link active" href="#">Active</a>
										<a class="nav-item nav-link" href="#">Link</a>
										<div class="nav-item dropdown">
											<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a>
											<div class="dropdown-menu">
												<a class="dropdown-item" href="#">Action</a>
												<a class="dropdown-item" href="#">Another action</a>
												<a class="dropdown-item" href="#">Something else here</a>
												<div class="dropdown-divider"></div>
												<a class="dropdown-item" href="#">Separated link</a>
											</div>
										</div>
										<a class="nav-item nav-link disabled" href="#">Disabled</a>
									</div>
									<span class="navbar-text ml-2 mr-auto">Text</span>
									<form class="form-inline">
										<input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search"/>
										<button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
									</form>
								</div>
							</nav>
		
		
		
		
							<nav class="navbar navbar-expand-lg navbar-light bg-light my-2">
								<a class="navbar-brand" href="#">Brand</a>
								<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-light" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
									<span class="navbar-toggler-icon"></span>
								</button>
								<div class="collapse navbar-collapse" id="navbar-light">
									<div class="nav navbar-nav">
										<a class="nav-item nav-link active" href="#">Active</a>
										<a class="nav-item nav-link" href="#">Link</a>
										<div class="nav-item dropdown">
											<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a>
											<div class="dropdown-menu">
												<a class="dropdown-item" href="#">Action</a>
												<a class="dropdown-item" href="#">Another action</a>
												<a class="dropdown-item" href="#">Something else here</a>
												<div class="dropdown-divider"></div>
												<a class="dropdown-item" href="#">Separated link</a>
											</div>
										</div>
										<a class="nav-item nav-link disabled" href="#">Disabled</a>
									</div>
									<span class="navbar-text ml-2 mr-auto">Text</span>
									<form class="form-inline">
										<input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search"/>
										<button class="btn btn-outline-dark my-2 my-sm-0" type="submit">Search</button>
									</form>
								</div>
							</nav>
		
		
		
		
							<nav class="navbar navbar-expand-lg navbar-dark bg-dark my-2">
								<a class="navbar-brand" href="#">Brand</a>
								<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-dark" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
									<span class="navbar-toggler-icon"></span>
								</button>
								<div class="collapse navbar-collapse" id="navbar-dark">
									<div class="nav navbar-nav">
										<a class="nav-item nav-link active" href="#">Active</a>
										<a class="nav-item nav-link" href="#">Link</a>
										<div class="nav-item dropdown">
											<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a>
											<div class="dropdown-menu">
												<a class="dropdown-item" href="#">Action</a>
												<a class="dropdown-item" href="#">Another action</a>
												<a class="dropdown-item" href="#">Something else here</a>
												<div class="dropdown-divider"></div>
												<a class="dropdown-item" href="#">Separated link</a>
											</div>
										</div>
										<a class="nav-item nav-link disabled" href="#">Disabled</a>
									</div>
									<span class="navbar-text ml-2 mr-auto">Text</span>
									<form class="form-inline">
										<input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search"/>
										<button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
									</form>
								</div>
							</nav>
		
		
						</div>
						<div class="col-md-6">
							<h3 class="mt-5">Tabs</h3>
							<div class="nav nav-tabs">
								<a class="nav-item nav-link active" href="#">Active</a>
								<a class="nav-item nav-link" href="#">Link</a>
								<div class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="#">Action</a>
										<a class="dropdown-item" href="#">Another action</a>
										<a class="dropdown-item" href="#">Something else here</a>
										<div class="dropdown-divider"></div>
										<a class="dropdown-item" href="#">Separated link</a>
									</div>
								</div>
								<a class="nav-item nav-link disabled" href="#">Disabled</a>
							</div>
		
							<h3 class="mt-5">Pills</h3>
							<div class="nav nav-pills">
								<a class="nav-item nav-link active" href="#">Active</a>
								<a class="nav-item nav-link" href="#">Link</a>
								<div class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="#">Action</a>
										<a class="dropdown-item" href="#">Another action</a>
										<a class="dropdown-item" href="#">Something else here</a>
										<div class="dropdown-divider"></div>
										<a class="dropdown-item" href="#">Separated link</a>
									</div>
								</div>
								<a class="nav-item nav-link disabled" href="#">Disabled</a>
							</div>
						</div>
						<div class="col-md-6">
							<h3 class="mt-5">Vertical pills</h3>
							<div class="nav nav-pills flex-column">
								<a class="nav-item nav-link active" href="#">Active</a>
								<a class="nav-item nav-link" href="#">Link</a>
								<div class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="#">Action</a>
										<a class="dropdown-item" href="#">Another action</a>
										<a class="dropdown-item" href="#">Something else here</a>
										<div class="dropdown-divider"></div>
										<a class="dropdown-item" href="#">Separated link</a>
									</div>
								</div>
								<a class="nav-item nav-link disabled" href="#">Disabled</a>
							</div>
						</div>
						<div class="col-12">
							<h3 class="mt-5">Breadcrumbs</h3>
							<nav class="breadcrumb">
								<a class="breadcrumb-item" href="#">Home</a>
								<a class="breadcrumb-item" href="#">Library</a>
								<a class="breadcrumb-item" href="#">Data</a>
								<span class="breadcrumb-item active">Bootstrap</span>
							</nav>
						</div>
					</div>
		
				</div>
			</xsl:with-param>
		</xsl:call-template>
	</xsl:template>
	
</xsl:stylesheet>