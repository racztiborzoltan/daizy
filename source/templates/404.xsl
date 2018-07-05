<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:import href="daizy_html_layout.xsl" />
	<xsl:output method="html" encoding="utf-8" indent="yes" omit-xml-declaration="no"/>
	
	<xsl:param name="head_title" select="'404 Page'" />

	<xsl:template name="body_content">
		<main class="page-wrapper not-found-page col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
			<h1>404 - Page Not Found</h1>
		</main>
	</xsl:template>

</xsl:stylesheet>