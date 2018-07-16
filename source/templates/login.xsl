<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:import href="includes/daizy_html_layout.xsl" />
	
	<xsl:param name="head_title" select="'Login Page'" />
	
	<xsl:template match="head_css">
		<xsl:apply-imports/>
		
		<!-- dashboard.css fájl másolása -->
		<xsl:variable name="login_css_path">assets/daizy/login.css</xsl:variable>
		<xsl:value-of select="php:function('\Daizy\SiteBuildHelper::copyFile', $login_css_path)"/>
		<link rel="stylesheet" href="{$login_css_path}"/>
	</xsl:template>

	
	<xsl:template match="body_javascript">
		<xsl:apply-imports/>
		
		<!-- login.js fájl másolása -->
		<xsl:variable name="login_js_path">assets/daizy/login.js</xsl:variable>
		<xsl:value-of select="php:function('\Daizy\SiteBuildHelper::copyFile', $login_js_path)"/>
		<script src="{$login_js_path}" type="text/javascript"></script>
	</xsl:template>
	

	<xsl:template name="body_content">
		<main class="authentication-area container bg-light">
			<div class="row">
				<div class="col-lg-4 offset-lg-4 col-md-6 offset-md-3 col-sm-12 accordion accordion-authentication" >
					<div class="collapse show" id="accordion-login-form" data-parent=".accordion-authentication">
						<form class="login">
							<div class="form-group">
								<h3 class="display-5">Login</h3>
							</div>
							<div class="form-group">
								<input class="form-control" type="text" placeholder="E-mail" required="required" autofocus="autofocus"/>
							</div>
							<div class="form-group">
								<input class="form-control" type="password" placeholder="Password" required="required"/>
							</div>
							<div class="toast message failed" hidden="">Login failed</div>
							<div class="toast message failed" hidden="">Login successful</div>
							<div class="form-group">
								<button type="submit" class="btn btn-primary">Login</button>
							</div>
							<div class="form-group">
								<button type="button" class="btn btn-link" data-toggle="collapse" data-target="#accordion-lost-password-form">
									Forgotten password
								</button>
							</div>
							<div class="form-group language-switcher">
								<select class="form-control" title="Select language">
									<option value="hu">hu</option>
									<option value="en">en</option>
									<option value="de">de</option>
								</select>
							</div>
						</form>
					</div>
					<div class="collapse" id="accordion-lost-password-form" data-parent=".accordion-authentication">
						<form class="lost-password">
							<div class="form-group">
								<h3 class="display-5">Forgotten password</h3>
							</div>
							<div class="form-group">
								<input class="form-control" type="text" placeholder="E-mail" required="required" autofocus="autofocus"/>
							</div>
							<div class="form-group">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
							<div class="form-group">
								<button type="button" class="btn btn-link" data-toggle="collapse" data-target="#accordion-login-form">
									Back to login
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</main>
	</xsl:template>
	
</xsl:stylesheet>