<xsl:stylesheet 
	version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	>

	<xsl:template match="popovers">
		<xsl:call-template name="display_menu_content">
			<xsl:with-param name="menu_content">
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
			</xsl:with-param>
		</xsl:call-template>
	</xsl:template>
	
</xsl:stylesheet>