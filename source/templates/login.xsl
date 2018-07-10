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
		<main class="page-wrapper login-area col-lg-4 col-lg-offset-4 col-md-6 col-md-offset-3 col-sm-12">
			<div class="collapse">
				<input type="radio" id="accordion-login-form" checked="checked" aria-hidden="true" name="login_area_accordion" />
				<label for="accordion-login-form" aria-hidden="true" hidden="">Accordion section 1</label>
				<div>
					<h3>Login</h3>
					<form class="login">
						<div class="responsive-margin">
							<input class="block" type="text" placeholder="E-mail" required="required" autofocus="autofocus"/>
						</div>
						<div class="responsive-margin">
							<input class="block" type="password" placeholder="Password" required="required"/>
						</div>
						<div class="toast message failed" hidden="">Login failed</div>
						<div class="toast message failed" hidden="">Login successful</div>
						<div class="responsive-margin">
							<button type="submit" class="primary shadowed">Login</button>
						</div>
						<div class="responsive-margin">
							<button type="button" class="button link" onclick="this.firstElementChild.click();">
								<label for="accordion-lost-password-form">Forgotten password</label>
							</button>
						</div>
						<div class="responsive-margin language-switcher">
							<select class="form-control" title="Select language">
								<option value="hu">hu</option>
								<option value="en">en</option>
								<option value="de">de</option>
							</select>
						</div>
					</form>
				</div>
				<input type="radio" id="accordion-lost-password-form" aria-hidden="true" name="login_area_accordion" />
				<label for="accordion-lost-password-form" aria-hidden="true" hidden=""></label>
				<div>
					<h3>Forgotten password</h3>
					<form class="lost-password">
						<div class="responsive-margin">
							<input class="block" type="text" placeholder="E-mail" required="required" autofocus="autofocus"/>
						</div>
						<div class="responsive-margin">
							<button type="submit" class="primary shadowed">Submit</button>
						</div>
						<div class="responsive-margin">
							<button type="button" class="button link" onclick="this.firstElementChild.click();">
								<label for="accordion-login-form">Back to login</label>
							</button>
						</div>
					</form>
				</div>
			</div>
		</main>
	</xsl:template>

</xsl:stylesheet>