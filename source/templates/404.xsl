<xsl:stylesheet 
	version="1.1" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:php="http://php.net/xsl"
	>
	<xsl:import href="includes/daizy_html_layout.xsl" />
	
	<xsl:param name="head_title" select="'404 Page'" />
	
	<xsl:template match="head_css">
		<xsl:apply-imports/>
		
		<!-- 404.css fájl másolása -->
		<xsl:variable name="page_404_css_path">assets/daizy/404.min.css</xsl:variable>
		<xsl:value-of select="php:function('\Daizy\SiteBuildHelper::copyFile', $page_404_css_path)"/>
		<link rel="stylesheet" href="{$page_404_css_path}"/>
	</xsl:template>

	<xsl:template name="body_content">
		<main class="p-5 not-found-page text-error">
			<h1 class="display-4">404 - Page Not Found</h1>
		</main>
	</xsl:template>

</xsl:stylesheet>