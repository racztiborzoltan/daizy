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
			<xsl:with-param name="src">assets/daizy/daizy.collapse.js</xsl:with-param>
		</xsl:call-template>
		
		<xsl:call-template name="script_tag_with_copy">
			<xsl:with-param name="src">assets/daizy/login.js</xsl:with-param>
		</xsl:call-template>
	</xsl:template>
	

	<xsl:template name="body_content">
		<main class="authentication-area row">
			<div class="col-3"></div>
			
			<input type="radio" name="accordion" id="login-area" class="collapse" aria-hidden="true" checked="checked" autocomplete="off"/>
			<form class="col-6 login">
				<p>
			<h3>Login</h3>
				</p>
				<p>
					<input type="text" placeholder="E-mail" required="required" autofocus="autofocus"/>
				</p>
				<p>
					<input type="password" placeholder="Password" required="required"/>
				</p>
				<p>
					<button type="submit" class="button primary">Login</button>
				</p>
				<p>
					<label class="button clear" for="lost-password-area" tabindex="0">
						Forgotten password
					</label>
				</p>
				<p class="language-switcher">
					<select title="Select language">
						<option value="hu">hu</option>
						<option value="en">en</option>
						<option value="de">de</option>
					</select>
				</p>
			</form>
			<div class="is-full-width"></div>
			<div class="col-3"></div>
			
			<input type="radio" name="accordion" id="lost-password-area" class="collapse" aria-hidden="true"/>
			<form class="col-6 lost-password">
				<p>
					<h3>Forgotten password</h3>
				</p>
				<p>
					<input type="text" placeholder="E-mail" required="required"/>
				</p>
				<p>
					<button type="submit" class="button primary">Submit</button>
				</p>
				<p>
					<label class="button clear" for="login-area" tabindex="0">
						Back to login
					</label>
				</p>
			</form>
		</main>
	</xsl:template>
	
</xsl:stylesheet>