<xsl:stylesheet 
	version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	>

	<xsl:template match="cards">
		<xsl:call-template name="display_menu_content">
			<xsl:with-param name="menu_content">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<h3 class="mt-5">Various types of cards</h3>
							<div class="card-columns">
								<div class="card">
									<div class="card-body">
										This is some text within a card block.
									</div>
								</div>
								<div class="card">
									<ul class="list-group list-group-flush">
										<li class="list-group-item">Cras justo odio</li>
										<li class="list-group-item">Dapibus ac facilisis in</li>
										<li class="list-group-item">Vestibulum at eros</li>
									</ul>
								</div>
								<div class="card">
									<div class="card-body">
										<h4 class="card-title">Card title</h4>
										<h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
										<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
										<a href="#" class="card-link">Card link</a>
										<a href="#" class="card-link">Another link</a>
									</div>
								</div>
								<div class="card p-3">
									<blockquote class="blockquote mb-0 card-body">
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
										<footer class="blockquote-footer">
											<small class="text-muted">
												Someone famous in <cite title="Source Title">Source Title</cite>
											</small>
										</footer>
									</blockquote>
								</div>
								<div class="card">
									<div class="card-header">
										Featured
									</div>
									<div class="card-body">
										<h4 class="card-title">Special title treatment</h4>
										<p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
										<a href="#" class="btn btn-primary">Go somewhere</a>
									</div>
								</div>
								<div class="card text-center">
									<div class="card-header">
										Featured
									</div>
									<div class="card-body">
										<h4 class="card-title">Special title treatment</h4>
										<p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
										<a href="#" class="btn btn-primary">Go somewhere</a>
									</div>
									<div class="card-footer text-muted">
										2 days ago
									</div>
								</div>
								<div class="card">
									<img class="card-img" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22263%22%20height%3D%22120%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20263%20120%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_164a45dca97%20text%20%7B%20fill%3A%23AAAAAA%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A13pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_164a45dca97%22%3E%3Crect%20width%3D%22263%22%20height%3D%22120%22%20fill%3D%22%23EEEEEE%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2297.7734375%22%20y%3D%2266%22%3E263x120%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" alt="100%x120" data-src="holder.js/100px120" data-holder-rendered="true" style="height: 120px; width: 100%; display: block;"/>
								</div>
								<div class="card">
									<img class="card-img-top" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22263%22%20height%3D%22120%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20263%20120%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_164a45dca99%20text%20%7B%20fill%3A%23AAAAAA%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A13pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_164a45dca99%22%3E%3Crect%20width%3D%22263%22%20height%3D%22120%22%20fill%3D%22%23EEEEEE%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2297.7734375%22%20y%3D%2266%22%3E263x120%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" alt="100%x120" data-src="holder.js/100px120" data-holder-rendered="true" style="height: 120px; width: 100%; display: block;"/>
									<div class="card-body">
										<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
									</div>
								</div>
								<div class="card">
									<div class="card-body">
										<h4 class="card-title">Card title</h4>
										<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
										<p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
									</div>
									<img class="card-img-bottom" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22263%22%20height%3D%22120%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20263%20120%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_164a45dca9c%20text%20%7B%20fill%3A%23AAAAAA%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A13pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_164a45dca9c%22%3E%3Crect%20width%3D%22263%22%20height%3D%22120%22%20fill%3D%22%23EEEEEE%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2297.7734375%22%20y%3D%2266%22%3E263x120%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" alt="100%x120" data-src="holder.js/100px120" data-holder-rendered="true" style="height: 120px; width: 100%; display: block;"/>
								</div>
								<div class="card">
									<img class="card-img-top" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22263%22%20height%3D%22120%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20263%20120%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_164a45dca9e%20text%20%7B%20fill%3A%23AAAAAA%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A13pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_164a45dca9e%22%3E%3Crect%20width%3D%22263%22%20height%3D%22120%22%20fill%3D%22%23EEEEEE%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2297.7734375%22%20y%3D%2266%22%3E263x120%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" alt="100%x120" data-src="holder.js/100px120" data-holder-rendered="true" style="height: 120px; width: 100%; display: block;"/>
									<div class="card-body">
										<h4 class="card-title">Card title</h4>
										<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
									</div>
									<ul class="list-group list-group-flush">
										<li class="list-group-item">Cras justo odio</li>
										<li class="list-group-item">Dapibus ac facilisis in</li>
										<li class="list-group-item">Vestibulum at eros</li>
									</ul>
									<div class="card-body">
										<a href="#" class="card-link">Card link</a>
										<a href="#" class="card-link">Another link</a>
									</div>
								</div>
								<div class="card text-center">
									<div class="card-header">
										<ul class="nav nav-tabs card-header-tabs">
											<li class="nav-item">
												<a class="nav-link active" href="#">Active</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="#">Link</a>
											</li>
											<li class="nav-item">
												<a class="nav-link disabled" href="#">Disabled</a>
											</li>
										</ul>
									</div>
									<div class="card-body">
										<h4 class="card-title">Special title treatment</h4>
										<p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
										<a href="#" class="btn btn-primary">Go somewhere</a>
									</div>
								</div>
								<div class="card text-center">
									<div class="card-header">
										<ul class="nav nav-pills card-header-pills">
											<li class="nav-item">
												<a class="nav-link active" href="#">Active</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="#">Link</a>
											</li>
											<li class="nav-item">
												<a class="nav-link disabled" href="#">Disabled</a>
											</li>
										</ul>
									</div>
									<div class="card-body">
										<h4 class="card-title">Special title treatment</h4>
										<p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
										<a href="#" class="btn btn-primary">Go somewhere</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<h3 class="mt-5">Colored cards</h3>
						</div>
		
		
		
						<div class="col-sm-6 col-md-4 col-xl-3">
							<div class="card text-white bg-primary mb-3" style="max-width: 20rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<h4 class="card-title">Primary card</h4>
									<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
								</div>
							</div>
						</div>
		
		
		
						<div class="col-sm-6 col-md-4 col-xl-3">
							<div class="card text-white bg-secondary mb-3" style="max-width: 20rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<h4 class="card-title">Secondary card</h4>
									<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
								</div>
							</div>
						</div>
		
		
		
						<div class="col-sm-6 col-md-4 col-xl-3">
							<div class="card text-white bg-success mb-3" style="max-width: 20rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<h4 class="card-title">Success card</h4>
									<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
								</div>
							</div>
						</div>
		
		
		
						<div class="col-sm-6 col-md-4 col-xl-3">
							<div class="card text-white bg-danger mb-3" style="max-width: 20rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<h4 class="card-title">Danger card</h4>
									<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
								</div>
							</div>
						</div>
		
		
		
						<div class="col-sm-6 col-md-4 col-xl-3">
							<div class="card  bg-warning mb-3" style="max-width: 20rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<h4 class="card-title">Warning card</h4>
									<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
								</div>
							</div>
						</div>
		
		
		
						<div class="col-sm-6 col-md-4 col-xl-3">
							<div class="card text-white bg-info mb-3" style="max-width: 20rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<h4 class="card-title">Info card</h4>
									<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
								</div>
							</div>
						</div>
		
		
		
						<div class="col-sm-6 col-md-4 col-xl-3">
							<div class="card  bg-light mb-3" style="max-width: 20rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<h4 class="card-title">Light card</h4>
									<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
								</div>
							</div>
						</div>
		
		
		
						<div class="col-sm-6 col-md-4 col-xl-3">
							<div class="card text-white bg-dark mb-3" style="max-width: 20rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<h4 class="card-title">Dark card</h4>
									<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
								</div>
							</div>
						</div>
		
		
					</div>
					<div class="row">
						<div class="col-12">
							<h3 class="mt-5">Cards with colored borders</h3>
						</div>
		
		
						<div class="col-sm-6 col-md-4 col-xl-3">
							<div class="card border-primary mb-3" style="max-width: 20rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<h4 class="card-title">Primary card</h4>
									<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
								</div>
							</div>
						</div>
		
		
						<div class="col-sm-6 col-md-4 col-xl-3">
							<div class="card border-secondary mb-3" style="max-width: 20rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<h4 class="card-title">Secondary card</h4>
									<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
								</div>
							</div>
						</div>
		
		
						<div class="col-sm-6 col-md-4 col-xl-3">
							<div class="card border-success mb-3" style="max-width: 20rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<h4 class="card-title">Success card</h4>
									<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
								</div>
							</div>
						</div>
		
		
						<div class="col-sm-6 col-md-4 col-xl-3">
							<div class="card border-danger mb-3" style="max-width: 20rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<h4 class="card-title">Danger card</h4>
									<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
								</div>
							</div>
						</div>
		
		
						<div class="col-sm-6 col-md-4 col-xl-3">
							<div class="card border-warning mb-3" style="max-width: 20rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<h4 class="card-title">Warning card</h4>
									<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
								</div>
							</div>
						</div>
		
		
						<div class="col-sm-6 col-md-4 col-xl-3">
							<div class="card border-info mb-3" style="max-width: 20rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<h4 class="card-title">Info card</h4>
									<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
								</div>
							</div>
						</div>
		
		
						<div class="col-sm-6 col-md-4 col-xl-3">
							<div class="card border-light mb-3" style="max-width: 20rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<h4 class="card-title">Light card</h4>
									<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
								</div>
							</div>
						</div>
		
		
						<div class="col-sm-6 col-md-4 col-xl-3">
							<div class="card border-dark mb-3" style="max-width: 20rem;">
								<div class="card-header">Header</div>
								<div class="card-body">
									<h4 class="card-title">Dark card</h4>
									<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
								</div>
							</div>
						</div>
		
		
					</div>
				</div>
			</xsl:with-param>
		</xsl:call-template>
	</xsl:template>
	
</xsl:stylesheet>