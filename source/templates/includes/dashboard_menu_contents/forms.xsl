<xsl:stylesheet 
	version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	>
	
	<xsl:template name="dashboard_menu_content__forms">
			<div class="card bg-light mt-3 menu-content">
			<xsl:variable name="collapse_id" select="php:function('uniqid', 'id_')"></xsl:variable>
			<xsl:variable name="collapse_caption" select="'Forms'"></xsl:variable>
		
			<xsl:call-template name="dashboard_menu_content_header">
				<xsl:with-param name="menu_content_id" select="$collapse_id"></xsl:with-param>
				<xsl:with-param name="menu_content_caption" select="$collapse_caption"></xsl:with-param>
			</xsl:call-template>
			
			<div id="{$collapse_id}" class="collapse">
					<div class="card-body">
					
						<div class="container">
							<form>
								<div class="row">
									<div class="col-md-6">
										<h3 class="mt-5">Text fields</h3>
										<div class="form-group">
											<label for="exampleInputEmail1">Email address</label>
											<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email"/>
											<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
										</div>
										<div class="form-group">
											<input type="password" class="form-control" placeholder="Password"/>
										</div>
										<div class="form-group">
											<input class="form-control" type="text" placeholder="Readonly input" readonly=""/>
										</div>
										<div class="form-group">
											<input type="text" readonly="" class="form-control-plaintext" id="staticEmail" value="Readonly input as plain text"/>
										</div>
										<div class="form-group">
											<input type="text" class="form-control" placeholder="Disabled input" disabled=""/>
										</div>
										<div class="form-group">
											<label for="validText">Valid input</label>
											<input type="text" class="form-control is-valid" id="validText" value="Valid input"/>
										</div>
										<div class="form-group">
											<label for="invalidText">Invalid input</label>
											<input type="text" class="form-control is-invalid" id="invalidText" value="Invalid input"/>
											<div class="invalid-feedback">Please provide a valid value.</div>
										</div>
										<div class="form-group">
											<input class="form-control form-control-lg" type="text" placeholder=".form-control-lg"/>
										</div>
										<div class="form-group">
											<input class="form-control" type="text" placeholder="Default input"/>
										</div>
										<div class="form-group">
											<input class="form-control form-control-sm" type="text" placeholder=".form-control-sm"/>
										</div>
										<div class="form-group">
											<div class="input-group input-group-lg">
												<span class="input-group-addon">$</span>
												<input type="text" class="form-control" aria-label="Amount (to the nearest dollar)"/>
												<span class="input-group-addon">.00</span>
											</div>
										</div>
										<div class="form-group">
											<div class="input-group">
												<span class="input-group-addon">$</span>
												<input type="text" class="form-control" aria-label="Amount (to the nearest dollar)"/>
												<span class="input-group-addon">.00</span>
											</div>
										</div>
										<div class="form-group">
											<div class="input-group">
												<span class="input-group-btn">
													<button class="btn btn-secondary" type="button">Hate it</button>
												</span>
												<input type="text" class="form-control" placeholder="Product name" aria-label="Product name"/>
												<span class="input-group-btn">
													<button class="btn btn-secondary" type="button">Love it</button>
												</span>
											</div>
										</div>
										<div class="form-group">
											<div class="input-group">
												<input type="text" class="form-control" aria-label="Text input with dropdown button"/>
												<div class="input-group-btn">
													<button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Action</button>
													<div class="dropdown-menu dropdown-menu-right">
														<a class="dropdown-item" href="#">Action</a>
														<a class="dropdown-item" href="#">Another action</a>
														<a class="dropdown-item" href="#">Something else here</a>
														<div role="separator" class="dropdown-divider"></div>
														<a class="dropdown-item" href="#">Separated link</a>
													</div>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="exampleFormControlTextarea1">Example textarea</label>
											<textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
										</div>
				
										<h3 class="mt-5">Layouts</h3>
										<div class="form-group">
											<div class="row">
												<div class="col">
													<input type="text" class="form-control" placeholder="Row / input 1"/>
												</div>
												<div class="col">
													<input type="text" class="form-control" placeholder="Row / input 2"/>
												</div>
											</div>
										</div>
										<div class="form-group">
											<div class="form-row">
												<div class="col">
													<input type="text" class="form-control" placeholder="Form row / input 1"/>
												</div>
												<div class="col">
													<input type="text" class="form-control" placeholder="Form row / input 2"/>
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label for="inputEmail3" class="col-sm-4 col-form-label">Horizontal</label>
											<div class="col-sm-8">
												<input type="email" class="form-control" id="inputEmail3" placeholder="form layout"/>
											</div>
										</div>
										<div class="form-group">
											<div class="form-inline">
												<input type="text" class="form-control mb-2 mr-sm-2 mb-sm-0" placeholder="Inline input 1"/>
												<div class="input-group mb-2 mr-sm-2 mb-sm-0">
													<div class="input-group-addon">@</div>
													<input type="text" class="form-control" placeholder="Inline input 2"/>
												</div>
											</div>
										</div>
										<div class="form-group">
											<div class="form-inline">
												<div class="form-group">
													<label for="inputPassword6">Password</label>
													<input type="password" id="inputPassword6" class="form-control mx-sm-3" aria-describedby="passwordHelpInline"/>
													<small id="passwordHelpInline" class="text-muted">Must be 8-20 characters long.</small>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<h3 class="mt-5">Selects</h3>
										<div class="form-group">
											<label for="exampleFormControlSelect1">Example select</label>
											<select class="form-control" id="exampleFormControlSelect1">
												<option>1</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
												<option>5</option>
											</select>
										</div>
										<div class="form-group">
											<label for="exampleFormControlSelect2">Example multiple select</label>
											<select multiple="" class="form-control" id="exampleFormControlSelect2">
												<option>1</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
												<option>5</option>
											</select>
										</div>
										<div class="form-group">
											<select class="form-control form-control-lg">
												<option>Large select</option>
											</select>
										</div>
										<div class="form-group">
											<select class="form-control">
												<option>Default select</option>
											</select>
										</div>
										<div class="form-group">
											<select class="form-control form-control-sm">
												<option>Small select</option>
											</select>
										</div>
										<div class="form-group">
											<select class="custom-select">
												<option selected="">Custom select</option>
												<option value="1">One</option>
												<option value="2">Two</option>
												<option value="3">Three</option>
											</select>
										</div>
				
										<h3 class="mt-5">Checkboxes</h3>
										<div class="form-check">
											<label class="form-check-label">
												<input class="form-check-input" type="checkbox" value=""/> Option one is this and that—be sure to include why it's great
											</label>
										</div>
										<div class="form-check disabled">
											<label class="form-check-label">
												<input class="form-check-input" type="checkbox" value="" disabled=""/> Option two is disabled
											</label>
										</div>
										<div class="form-check">
											<label class="form-check-label custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" checked=""/>
												<span class="custom-control-indicator"></span>
												<span class="custom-control-description">Custom checkbox</span>
											</label>
										</div>
										<div class="form-check">
											<label class="form-check-label custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input"/>
												<span class="custom-control-indicator"></span>
												<span class="custom-control-description">Custom checkbox</span>
											</label>
										</div>
										<div class="form-check">
											<label class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" disabled=""/>
												<span class="custom-control-indicator"></span>
												<span class="custom-control-description">Disabled custom checkbox</span>
											</label>
										</div>
										<div class="form-check">
											<label class="form-check-label custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input is-valid"/>
												<span class="custom-control-indicator"></span>
												<span class="custom-control-description">Valid checkbox</span>
											</label>
										</div>
										<div class="form-check">
											<label class="form-check-label custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input is-invalid"/>
												<span class="custom-control-indicator"></span>
												<span class="custom-control-description">Invalid checkbox</span>
											</label>
										</div>
										<div class="form-check form-check-inline">
											<label class="form-check-label">
												<input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1"/> 1
											</label>
										</div>
										<div class="form-check form-check-inline">
											<label class="form-check-label">
												<input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2"/> 2
											</label>
										</div>
										<div class="form-check form-check-inline disabled">
											<label class="form-check-label">
												<input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3" disabled=""/> 3
											</label>
										</div>
				
										<h3 class="mt-5">Radio buttons</h3>
										<div class="form-check">
											<label class="form-check-label">
												<input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked=""/> Option one is this and that—be sure to include why it's great
											</label>
										</div>
										<div class="form-check">
											<label class="form-check-label">
												<input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2"/> Option two can be something else and selecting it will deselect option one
											</label>
										</div>
										<div class="form-check disabled">
											<label class="form-check-label">
												<input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios3" value="option3" disabled=""/> Option three is disabled
											</label>
										</div>
										<div class="form-check">
											<label class="form-check-label custom-control custom-radio">
												<input type="radio" name="custom-radio-group" class="custom-control-input" checked=""/>
												<span class="custom-control-indicator"></span>
												<span class="custom-control-description">Custom radio</span>
											</label>
										</div>
										<div class="form-check">
											<label class="form-check-label custom-control custom-radio">
												<input type="radio" name="custom-radio-group" class="custom-control-input"/>
												<span class="custom-control-indicator"></span>
												<span class="custom-control-description">Custom radio</span>
											</label>
										</div>
										<div class="form-check">
											<label class="custom-control custom-radio">
												<input type="radio" class="custom-control-input" disabled=""/>
												<span class="custom-control-indicator"></span>
												<span class="custom-control-description">Disabled custom radio</span>
											</label>
										</div>
										<div class="form-check">
											<label class="form-check-label custom-control custom-radio">
												<input type="radio" class="custom-control-input is-valid"/>
												<span class="custom-control-indicator"></span>
												<span class="custom-control-description">Valid radio</span>
											</label>
										</div>
										<div class="form-check">
											<label class="form-check-label custom-control custom-radio">
												<input type="radio" class="custom-control-input is-invalid"/>
												<span class="custom-control-indicator"></span>
												<span class="custom-control-description">Invalid radio</span>
											</label>
										</div>
										<div class="form-check form-check-inline">
											<label class="form-check-label">
												<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"/> 1
											</label>
										</div>
										<div class="form-check form-check-inline">
											<label class="form-check-label">
												<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"/> 2
											</label>
										</div>
										<div class="form-check form-check-inline disabled">
											<label class="form-check-label">
												<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3" disabled=""/> 3
											</label>
										</div>
									</div>
								</div>
							</form>
				
						</div>
					
					</div>
				</div>
			</div>
	</xsl:template>
</xsl:stylesheet>