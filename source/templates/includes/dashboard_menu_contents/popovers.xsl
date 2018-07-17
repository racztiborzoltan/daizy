<xsl:stylesheet 
	version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	>

	<xsl:template match="popovers">
		<div class="card bg-light mt-3 menu-content">
			<xsl:variable name="collapse_id" select="php:function('uniqid', 'id_')"></xsl:variable>
			<xsl:variable name="collapse_caption" select="'Popovers'"></xsl:variable>
		
			<xsl:call-template name="dashboard_menu_content_header">
				<xsl:with-param name="menu_content_id" select="$collapse_id"></xsl:with-param>
				<xsl:with-param name="menu_content_caption" select="$collapse_caption"></xsl:with-param>
			</xsl:call-template>
			
			<div id="{$collapse_id}" class="collapse">
				<div class="card-body">

					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<h3 class="mt-5">Popovers</h3>
								<button type="button" class="btn btn-primary my-5" data-toggle="popover" title="" data-content="And here's some amazing content. It's very engaging. Right?" id="popover-toggler" data-original-title="Popover title" aria-describedby="popover283095">
									Toggle popover
								</button>
							</div>
							<div class="col-md-6">
								<h3 class="mt-5">Tooltips</h3>
								<button type="button" class="btn btn-primary my-5" data-toggle="tooltip" data-placement="right" title="" data-original-title="Tooltip on right">
									Tooltip on right
								</button>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>