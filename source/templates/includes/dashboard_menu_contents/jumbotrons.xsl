<xsl:stylesheet 
	version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	>

	<xsl:template match="jumbotrons">
		<div class="card bg-light mt-3 menu-content">
			<xsl:variable name="collapse_id" select="php:function('uniqid', 'id_')"></xsl:variable>
			<xsl:variable name="collapse_caption" select="'Jumbotrons'"></xsl:variable>
		
			<xsl:call-template name="dashboard_menu_content_header">
				<xsl:with-param name="menu_content_id" select="$collapse_id"></xsl:with-param>
				<xsl:with-param name="menu_content_caption" select="$collapse_caption"></xsl:with-param>
			</xsl:call-template>
			
			<div id="{$collapse_id}" class="collapse">
				<div class="card-body">

					<div class="container">
						<div class="row">
							<div class="col-12">
								<h3 class="mt-5">Default jumbotron</h3>
								<div class="jumbotron">
									<h1 class="display-3">Hello, world!</h1>
									<p class="lead">This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
									<hr class="my-4"/>
									<p>It uses utility classes for typography and spacing to space content out within the larger container.</p>
									<p class="lead">
										<a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
									</p>
								</div>
			
								<h3 class="mt-5">Fluid jumbotron</h3>
								<div class="jumbotron jumbotron-fluid">
									<div class="container">
										<h1 class="display-3">Fluid jumbotron</h1>
										<p class="lead">This is a modified jumbotron that occupies the entire horizontal space of its parent.</p>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>