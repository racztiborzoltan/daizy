<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:import href="includes/daizy_html_layout.xsl" />
	<xsl:output method="html" encoding="utf-8" indent="yes" omit-xml-declaration="no"/>
	
	<xsl:param name="head_title" select="'Login Page'" />
	
	<xsl:template match="head_css">
		<xsl:apply-imports/>
		<link rel="stylesheet" href="assets/daizy/login.css"/>
	</xsl:template>

	
	<xsl:template match="body_javascript">
		<xsl:apply-imports/>
		<script src="assets/daizy/login.js" type="text/javascript"></script>
	</xsl:template>
	

	<xsl:template name="body_content">
		<main class="page-wrapper login-area col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
			<form>
				<div class="mb2">
					<input class="block" type="text" id="Username" placeholder="E-mail" required="required"/>
				</div>
				<div class="mb2">
					<input class="block" type="password" id="password" placeholder="Password" required="required"/>
				</div>
				<div>
					<button type="submit" class="primary">Login</button>
				</div>
				<div>
					<a href="#" class="button link">Forgotten password</a>
				</div>
				<div class="language-switcher">
					<select class="form-control" title="Nyelv kiválasztása">
						<option value="hu">hu</option>
						<option value="en">en</option>
						<option value="de">de</option>
					</select>
				</div>
			</form>
		</main>
	</xsl:template>

</xsl:stylesheet>