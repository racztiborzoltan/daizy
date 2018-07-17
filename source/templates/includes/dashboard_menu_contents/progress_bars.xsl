<xsl:stylesheet 
	version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	>

	<xsl:template match="progress_bars">
		<xsl:call-template name="display_menu_content">
			<xsl:with-param name="menu_content">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<h3 class="mt-5">Colored progress bars</h3>
							<div class="progress my-1">
								<div class="progress-bar" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">Label</div>
							</div>
		
		
							<div class="progress my-1">
								<div class="progress-bar bg-success" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">Label</div>
							</div>
		
							<div class="progress my-1">
								<div class="progress-bar bg-info" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">Label</div>
							</div>
		
							<div class="progress my-1">
								<div class="progress-bar bg-warning" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">Label</div>
							</div>
		
							<div class="progress my-1">
								<div class="progress-bar bg-danger" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">Label</div>
							</div>
		
						</div>
						<div class="col-md-6">
							<h3 class="mt-5">Striped progress bars</h3>
							<div class="progress my-1">
								<div class="progress-bar progress-bar-striped" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">Label</div>
							</div>
		
		
							<div class="progress my-1">
								<div class="progress-bar progress-bar-striped bg-success" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">Label</div>
							</div>
		
							<div class="progress my-1">
								<div class="progress-bar progress-bar-striped bg-info" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">Label</div>
							</div>
		
							<div class="progress my-1">
								<div class="progress-bar progress-bar-striped bg-warning" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">Label</div>
							</div>
		
							<div class="progress my-1">
								<div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">Label</div>
							</div>
		
						</div>
					</div>
				</div>
			</xsl:with-param>
		</xsl:call-template>
	</xsl:template>
	
</xsl:stylesheet>