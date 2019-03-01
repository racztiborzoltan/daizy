<xsl:stylesheet 
	version="1.1" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	xmlns:php="http://php.net/xsl"
	exclude-result-prefixes="xlink php"
	>
	<xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
	
	<xsl:param name="head_title" select="'DaiZy Minimalistic Admin Template'" />


	<xsl:template name="script_tag_with_copy">
		<xsl:param name="src"></xsl:param>
		
		<!-- a javascript fájl másolása -->
		<xsl:value-of select="php:function('\Daizy\SiteBuildHelper::copyFile', $src)"/>
		<script src="{$src}"></script>
	</xsl:template>


	<xsl:template name="css_tag_with_copy">
		<xsl:param name="href"></xsl:param>
		
		<!-- a javascript fájl másolása -->
		<xsl:value-of select="php:function('\Daizy\SiteBuildHelper::copyFile', $href)"/>
		<link rel="stylesheet" href="{$href}"/>
	</xsl:template>

	
	<xsl:template match="head_css">
	
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous" />
		
		<!-- bootstrap css fájlok átmásolása a cél helyre -->
		<xsl:call-template name="css_tag_with_copy">
			<xsl:with-param name="href">assets/vendor/bootstrap-4.3.1-dist/css/bootstrap.min.css</xsl:with-param>
		</xsl:call-template>
		<xsl:value-of select="php:function('\Daizy\SiteBuildHelper::copyFile', 'assets/vendor/bootstrap-4.3.1-dist/css/bootstrap.min.css.map')"/>
		
		<!-- "assets/daizy/daizy.min.css" fájl átmásolása a cél helyre -->
		<xsl:call-template name="css_tag_with_copy">
			<xsl:with-param name="href">assets/daizy/daizy.min.css</xsl:with-param>
		</xsl:call-template>
	</xsl:template>
	
	
	<xsl:template match="head_javascript">
	</xsl:template>
	
	<xsl:template match="body_javascript">
		<noscript class="nojs">Javascript disabled!</noscript>
		<script src="https://cdn.polyfill.io/v2/polyfill.min.js"></script>

		<!-- jquery javascript fájl átmásolása a cél helyre -->
		<xsl:call-template name="script_tag_with_copy">
			<xsl:with-param name="src">assets/vendor/jquery-3.3.1/jquery-3.3.1.min.js</xsl:with-param>
		</xsl:call-template>

		<!-- bootstrap js fájlok átmásolása a cél helyre -->
		<xsl:call-template name="script_tag_with_copy">
			<xsl:with-param name="src">assets/vendor/bootstrap-4.3.1-dist/js/bootstrap.bundle.min.js</xsl:with-param>
		</xsl:call-template>
		<xsl:value-of select="php:function('\Daizy\SiteBuildHelper::copyFile', 'assets/vendor/bootstrap-4.3.1-dist/js/bootstrap.bundle.min.js.map')"/>

		<!-- daizy.js fájl átmásolása a cél helyre -->
		<xsl:call-template name="script_tag_with_copy">
			<xsl:with-param name="src">assets/daizy/js/daizy.js</xsl:with-param>
		</xsl:call-template>
	</xsl:template>
	
	<!-- 
	HTML body tartalmat előállítás sablon, ami névvel van ellátva
	-->	
	<xsl:template name="body_content">
	</xsl:template>
	
	<xsl:template name="comment_copyright_text">
		<xsl:comment>
			<xsl:value-of select="concat(' ', /variables/copyright_text, ' ')"/>
		</xsl:comment>
	</xsl:template>
	
	<!-- 
	XSLT átalakítást elindító sablon definíció
	-->
	<xsl:template match="/variables">
		
		<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
		<xsl:call-template name="comment_copyright_text"/>
		<html lang="en" class="daizy-wrapper">
			<head>
				<xsl:if test="baseHref">
					<base href="{baseHref}"/>
				</xsl:if>
				<meta charset="utf-8"/>
				<meta name="viewport" content="width=device-width, initial-scale=1"/>
				<title><xsl:value-of select="$head_title"/></title>

				<xsl:apply-templates select="head_css"></xsl:apply-templates>
			</head>
			<body class="bg-light">
				<div class="page-loader bg-light">
					<div class="spinner-grow text-primary" role="status">
						<span class="sr-only">Loading...</span>
					</div>
				</div>
				<xsl:call-template name="body_content"/>
				
				<div class="scripts">
					<xsl:apply-templates select="body_javascript"></xsl:apply-templates>
				</div>
			</body>
		</html>
		<xsl:call-template name="comment_copyright_text"/>
	</xsl:template>
	
</xsl:stylesheet>