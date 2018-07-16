<xsl:stylesheet 
	version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	>

	<xsl:template name="dashboard_menu_content__modals">
		<div class="card bg-light mt-3 menu-content">
			<xsl:variable name="collapse_id" select="php:function('uniqid', 'id_')"></xsl:variable>
			<xsl:variable name="collapse_caption" select="'Modals'"></xsl:variable>
		
			<xsl:call-template name="dashboard_menu_content_header">
				<xsl:with-param name="menu_content_id" select="$collapse_id"></xsl:with-param>
				<xsl:with-param name="menu_content_caption" select="$collapse_caption"></xsl:with-param>
			</xsl:call-template>
			
			<div id="{$collapse_id}" class="collapse">
				<div class="card-body">

					<div class="container">
						<div class="row">
							<div class="col-12">
							
								<!-- Button trigger modal -->
								<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
									Launch demo modal
								</button>
								
								<!-- Modal -->
								<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
												<button type="button" class="close" data-dismiss="modal" aria-label="Close">
													<span aria-hidden="true"><xsl:text disable-output-escaping="yes">&amp;</xsl:text>times;</span>
												</button>
											</div>
											<div class="modal-body">
												<p>Aliquam sem fringilla ut morbi. Dolor purus non enim praesent. Sed velit dignissim sodales ut eu sem integer vitae justo. Eu facilisis sed odio morbi quis commodo odio. Amet nisl purus in mollis nunc sed id semper. Sit amet est placerat in. Iaculis eu non diam phasellus vestibulum lorem sed. Ac tortor vitae purus faucibus ornare. In nulla posuere sollicitudin aliquam. Sapien et ligula ullamcorper malesuada proin libero nunc consequat interdum. Pharetra massa massa ultricies mi quis hendrerit dolor magna. Aliquet sagittis id consectetur purus ut faucibus pulvinar elementum. Ut venenatis tellus in metus vulputate eu. Integer quis auctor elit sed vulputate mi sit. Odio morbi quis commodo odio aenean. Imperdiet nulla malesuada pellentesque elit eget gravida cum. Purus sit amet luctus venenatis lectus magna fringilla. Mauris ultrices eros in cursus. Sed egestas egestas fringilla phasellus.</p>
												<p>Ultricies integer quis auctor elit sed vulputate mi sit. In hac habitasse platea dictumst quisque sagittis purus. Etiam tempor orci eu lobortis elementum nibh. Quis auctor elit sed vulputate mi. Id ornare arcu odio ut sem nulla pharetra diam sit. Sit amet cursus sit amet dictum sit amet justo. Ultricies integer quis auctor elit. Commodo ullamcorper a lacus vestibulum sed arcu non odio. Ac tortor vitae purus faucibus ornare suspendisse. Blandit turpis cursus in hac habitasse platea. Congue eu consequat ac felis donec et odio pellentesque diam. Vulputate sapien nec sagittis aliquam. Nunc vel risus commodo viverra maecenas accumsan. A diam sollicitudin tempor id eu nisl.</p>
												<p>Mattis pellentesque id nibh tortor id aliquet lectus. Amet consectetur adipiscing elit duis. Facilisis leo vel fringilla est ullamcorper. Aliquet lectus proin nibh nisl condimentum. Accumsan in nisl nisi scelerisque eu ultrices vitae. Nec dui nunc mattis enim ut tellus elementum sagittis vitae. Tristique sollicitudin nibh sit amet commodo nulla facilisi nullam vehicula. Posuere sollicitudin aliquam ultrices sagittis orci. Eu lobortis elementum nibh tellus. Magna fringilla urna porttitor rhoncus dolor purus non enim praesent. Ipsum suspendisse ultrices gravida dictum fusce.</p>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
												<button type="button" class="btn btn-primary">Save changes</button>
											</div>
										</div>
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