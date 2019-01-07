<xsl:stylesheet 
	version="1.1" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:php="http://php.net/xsl"
	exclude-result-prefixes="php"
	>
	<xsl:import href="includes/daizy_html_layout.xsl" />
	
	<xsl:param name="head_title" select="'Login Page'" />
	
	<xsl:template match="head_css">
		<xsl:apply-imports/>
		
		<xsl:call-template name="css_tag_with_copy">
			<xsl:with-param name="href">assets/daizy/login.min.css</xsl:with-param>
		</xsl:call-template>
	</xsl:template>

	
	<xsl:template match="body_javascript">
		<xsl:apply-imports/>
		
		<xsl:call-template name="script_tag_with_copy">
			<xsl:with-param name="src">assets/daizy/js/login.js</xsl:with-param>
		</xsl:call-template>
	</xsl:template>
	

	<xsl:template name="body_content">
		<main class="bg-light authentication-area container">
			<div class="row">
				<div class="col-sm-6 offset-sm-3 col-md-4 offset-md-4 mt-5">
					<form class="collapse show text-center login-area">
						<div class="form-group">
							<h3>Login</h3>
						</div>
						<div class="form-group">
							<label for="loginInputEmail">Email address</label>
							<input type="email" class="form-control input-email" id="loginInputEmail" autofocus="autofocus"/>
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Password</label>
							<input type="password" class="form-control" id="exampleInputPassword1" />
						</div>
						<div class="form-group">
							<span class="custom-control custom-checkbox d-inline">
								<input type="checkbox" class="custom-control-input" id="customCheck1" />
								<label class="custom-control-label" for="customCheck1">Remember me</label>
							</span>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-primary">Login</button>
						</div>
						<div class="form-group">
							<button type="button" class="btn btn-link" data-toggle="collapse" data-target=".lost-password-area" aria-expanded="false">Forgotten password</button>
						</div>
						<div class="form-group">
							<select class="form-control d-inline w-auto">
								<option value="hu">hu</option>
								<option value="en">en</option>
								<option value="de">de</option>
							</select>
						</div>
					</form>
					<form class="collapse text-center lost-password-area">
						<div class="form-group">
							<h3>Forgotten password</h3>
						</div>
						<div class="form-group">
							<label for="lostpasswordInputEmail">Email address</label>
							<input type="email" class="form-control input-email" id="lostpasswordInputEmail" />
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-primary">Send</button>
						</div>
						<div class="form-group">
							<button type="button" class="btn btn-link" data-toggle="collapse" data-target=".login-area" aria-expanded="false">Back to login</button>
						</div>
					</form>
				</div>
			</div>
		</main>
	</xsl:template>
	
</xsl:stylesheet>