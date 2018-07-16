<xsl:stylesheet 
	version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	>

	<xsl:template name="dashboard_menu_content__badges">
		<div class="card bg-light mt-3 menu-content">
			<xsl:variable name="collapse_id" select="php:function('uniqid', 'id_')"></xsl:variable>
			<xsl:variable name="collapse_caption" select="'Badges'"></xsl:variable>
		
			<xsl:call-template name="dashboard_menu_content_header">
				<xsl:with-param name="menu_content_id" select="$collapse_id"></xsl:with-param>
				<xsl:with-param name="menu_content_caption" select="$collapse_caption"></xsl:with-param>
			</xsl:call-template>
			
			<div id="{$collapse_id}" class="collapse">
				<div class="card-body">

					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<h3 class="mt-5">Contextual badges</h3>
								<p>
			
			
									<span class="badge badge-primary">Primary</span>
			
			
									<span class="badge badge-secondary">Secondary</span>
			
			
									<span class="badge badge-success">Success</span>
			
			
									<span class="badge badge-danger">Danger</span>
			
			
									<span class="badge badge-warning">Warning</span>
			
			
									<span class="badge badge-info">Info</span>
			
			
									<span class="badge badge-light">Light</span>
			
			
									<span class="badge badge-dark">Dark</span>
			
			
								</p>
			
								<h3 class="mt-5">Pill badges</h3>
								<p>
			
			
									<span class="badge badge-pill badge-primary">Primary</span>
			
			
									<span class="badge badge-pill badge-secondary">Secondary</span>
			
			
									<span class="badge badge-pill badge-success">Success</span>
			
			
									<span class="badge badge-pill badge-danger">Danger</span>
			
			
									<span class="badge badge-pill badge-warning">Warning</span>
			
			
									<span class="badge badge-pill badge-info">Info</span>
			
			
									<span class="badge badge-pill badge-light">Light</span>
			
			
									<span class="badge badge-pill badge-dark">Dark</span>
			
			
								</p>
			
								<h3 class="mt-5">Links</h3>
								<p>
			
			
									<a href="#" class="badge badge-primary">Primary</a>
			
			
									<a href="#" class="badge badge-secondary">Secondary</a>
			
			
									<a href="#" class="badge badge-success">Success</a>
			
			
									<a href="#" class="badge badge-danger">Danger</a>
			
			
									<a href="#" class="badge badge-warning">Warning</a>
			
			
									<a href="#" class="badge badge-info">Info</a>
			
			
									<a href="#" class="badge badge-light">Light</a>
			
			
									<a href="#" class="badge badge-dark">Dark</a>
			
			
								</p>
							</div>
							<div class="col-md-6">
								<h3 class="mt-5">Badges in headings</h3>
								<h1>Example heading <span class="badge badge-secondary">New</span></h1>
								<h2>Example heading <span class="badge badge-secondary">New</span></h2>
								<h3>Example heading <span class="badge badge-secondary">New</span></h3>
								<h4>Example heading <span class="badge badge-secondary">New</span></h4>
								<h5>Example heading <span class="badge badge-secondary">New</span></h5>
								<h6>Example heading <span class="badge badge-secondary">New</span></h6>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>