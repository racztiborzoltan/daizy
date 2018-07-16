<xsl:stylesheet 
	version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	>

	<xsl:template name="dashboard_menu_content__alerts">
		<div class="card bg-light mt-3 menu-content">
			<xsl:variable name="collapse_id" select="php:function('uniqid', 'id_')"></xsl:variable>
			<xsl:variable name="collapse_caption" select="'Alerts'"></xsl:variable>
		
			<xsl:call-template name="dashboard_menu_content_header">
				<xsl:with-param name="menu_content_id" select="$collapse_id"></xsl:with-param>
				<xsl:with-param name="menu_content_caption" select="$collapse_caption"></xsl:with-param>
			</xsl:call-template>
			
			<div id="{$collapse_id}" class="collapse">
				<div class="card-body">

					<div class="container">
						<div class="row">
							<div class="col-12">
								<h3 class="mt-5">Simple alerts</h3>
							</div>
			
			
							<div class="col-md-4">
								<div class="alert alert-primary" role="alert">
									.alert-primary
								</div>
							</div>
			
			
							<div class="col-md-4">
								<div class="alert alert-secondary" role="alert">
									.alert-secondary
								</div>
							</div>
			
			
							<div class="col-md-4">
								<div class="alert alert-success" role="alert">
									.alert-success
								</div>
							</div>
			
			
							<div class="col-md-4">
								<div class="alert alert-danger" role="alert">
									.alert-danger
								</div>
							</div>
			
			
							<div class="col-md-4">
								<div class="alert alert-warning" role="alert">
									.alert-warning
								</div>
							</div>
			
			
							<div class="col-md-4">
								<div class="alert alert-info" role="alert">
									.alert-info
								</div>
							</div>
			
			
							<div class="col-md-4">
								<div class="alert alert-light" role="alert">
									.alert-light
								</div>
							</div>
			
			
							<div class="col-md-4">
								<div class="alert alert-dark" role="alert">
									.alert-dark
								</div>
							</div>
			
			
						</div>
						<div class="row">
							<div class="col-12">
								<h3 class="mt-5">Alerts with additional content</h3>
							</div>
			
			
							<div class="col-md-4">
								<div class="alert alert-primary" role="alert">
									<h4 class="alert-heading">Well done!</h4>
									<p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content. Also here is an <a href="javascript:void(0)" class="alert-link">example alert link</a>.</p>
									<hr />
									<p class="mb-0">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p>
								</div>
							</div>
			
			
							<div class="col-md-4">
								<div class="alert alert-secondary" role="alert">
									<h4 class="alert-heading">Well done!</h4>
									<p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content. Also here is an <a href="javascript:void(0)" class="alert-link">example alert link</a>.</p>
									<hr />
									<p class="mb-0">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p>
								</div>
							</div>
			
			
							<div class="col-md-4">
								<div class="alert alert-success" role="alert">
									<h4 class="alert-heading">Well done!</h4>
									<p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content. Also here is an <a href="javascript:void(0)" class="alert-link">example alert link</a>.</p>
									<hr />
									<p class="mb-0">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p>
								</div>
							</div>
			
			
							<div class="col-md-4">
								<div class="alert alert-danger" role="alert">
									<h4 class="alert-heading">Well done!</h4>
									<p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content. Also here is an <a href="javascript:void(0)" class="alert-link">example alert link</a>.</p>
									<hr />
									<p class="mb-0">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p>
								</div>
							</div>
			
			
							<div class="col-md-4">
								<div class="alert alert-warning" role="alert">
									<h4 class="alert-heading">Well done!</h4>
									<p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content. Also here is an <a href="javascript:void(0)" class="alert-link">example alert link</a>.</p>
									<hr />
									<p class="mb-0">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p>
								</div>
							</div>
			
			
							<div class="col-md-4">
								<div class="alert alert-info" role="alert">
									<h4 class="alert-heading">Well done!</h4>
									<p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content. Also here is an <a href="javascript:void(0)" class="alert-link">example alert link</a>.</p>
									<hr />
									<p class="mb-0">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p>
								</div>
							</div>
			
			
							<div class="col-md-4">
								<div class="alert alert-light" role="alert">
									<h4 class="alert-heading">Well done!</h4>
									<p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content. Also here is an <a href="javascript:void(0)" class="alert-link">example alert link</a>.</p>
									<hr />
									<p class="mb-0">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p>
								</div>
							</div>
			
			
							<div class="col-md-4">
								<div class="alert alert-dark" role="alert">
									<h4 class="alert-heading">Well done!</h4>
									<p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content. Also here is an <a href="javascript:void(0)" class="alert-link">example alert link</a>.</p>
									<hr />
									<p class="mb-0">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p>
								</div>
							</div>
			
			
						</div>
					</div>

				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>