<xsl:stylesheet 
	version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	>

	<xsl:template match="list_groups">
		<div class="card bg-light mt-3 menu-content">
			<xsl:variable name="collapse_id" select="php:function('uniqid', 'id_')"></xsl:variable>
			<xsl:variable name="collapse_caption" select="'List groups'"></xsl:variable>
		
			<xsl:call-template name="dashboard_menu_content_header">
				<xsl:with-param name="menu_content_id" select="$collapse_id"></xsl:with-param>
				<xsl:with-param name="menu_content_caption" select="$collapse_caption"></xsl:with-param>
			</xsl:call-template>
			
			<div id="{$collapse_id}" class="collapse">
				<div class="card-body">

					<div class="container">
						<div class="row">
							<div class="col-12">
			
							</div>
							<div class="col-md-6">
								<h3 class="mt-5">...with actions and colors</h3>
								<div class="list-group">
									<button type="button" class="list-group-item list-group-item-action">This is a regular list group item</button>
			
			
			
			
									<button type="button" class="list-group-item list-group-item-action list-group-item-active">
										This is a(n) active list group item
									</button>
			
			
									<button type="button" class="list-group-item list-group-item-action list-group-item-disabled">
										This is a(n) disabled list group item
									</button>
			
			
									<button type="button" class="list-group-item list-group-item-action list-group-item-primary">
										This is a(n) primary list group item
									</button>
			
			
									<button type="button" class="list-group-item list-group-item-action list-group-item-secondary">
										This is a(n) secondary list group item
									</button>
			
			
									<button type="button" class="list-group-item list-group-item-action list-group-item-success">
										This is a(n) success list group item
									</button>
			
			
									<button type="button" class="list-group-item list-group-item-action list-group-item-danger">
										This is a(n) danger list group item
									</button>
			
			
									<button type="button" class="list-group-item list-group-item-action list-group-item-warning">
										This is a(n) warning list group item
									</button>
			
			
									<button type="button" class="list-group-item list-group-item-action list-group-item-info">
										This is a(n) info list group item
									</button>
			
			
									<button type="button" class="list-group-item list-group-item-action list-group-item-light">
										This is a(n) light list group item
									</button>
			
			
									<button type="button" class="list-group-item list-group-item-action list-group-item-dark">
										This is a(n) dark list group item
									</button>
			
			
								</div>
							</div>
							<div class="col-md-6">
								<h3 class="mt-5">...with custom content</h3>
								<div class="list-group">
									<a href="#" class="list-group-item list-group-item-action flex-column align-items-start active">
										<div class="d-flex w-100 justify-content-between">
											<h5 class="mb-1">List group item heading</h5>
											<small>3 days ago</small>
										</div>
										<p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
										<small>Donec id elit non mi porta.</small>
									</a>
									<a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
										<div class="d-flex w-100 justify-content-between">
											<h5 class="mb-1">List group item heading</h5>
											<small class="text-muted">3 days ago</small>
										</div>
										<p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
										<small class="text-muted">Donec id elit non mi porta.</small>
									</a>
									<a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
										<div class="d-flex w-100 justify-content-between">
											<h5 class="mb-1">List group item heading</h5>
											<small class="text-muted">3 days ago</small>
										</div>
										<p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
										<small class="text-muted">Donec id elit non mi porta.</small>
									</a>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>