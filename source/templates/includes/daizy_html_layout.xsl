<xsl:stylesheet 
	version="1.1" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	xmlns:php="http://php.net/xsl"
	exclude-result-prefixes="xlink php"
	>
	<xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
	
	<xsl:param name="head_title" select="'DaiZy Minimalistic Admin Template'" />
	
	<xsl:template match="head_css">
		<!-- "assets/daizy/daizy.min.css" fájl átmásolása a cél helyre -->
		<xsl:variable name="daizy_css_path">assets/daizy/daizy.min.css</xsl:variable>
		<xsl:value-of select="php:function('\Daizy\SiteBuildHelper::copyFile', $daizy_css_path)"/>
		<link rel="stylesheet" href="{$daizy_css_path}"/>
	</xsl:template>
	
	
	<xsl:template match="head_javascript">
	</xsl:template>
	
	<xsl:template match="body_javascript">
		<noscript class="nojs">Javascript disabled!</noscript>
		<script src="https://cdn.polyfill.io/v2/polyfill.min.js"></script>

		<!-- svgxuse javascript fájl átmásolása a cél helyre -->
		<xsl:variable name="svgxuse_js_path">assets/vendor/svgxuse-1.2.6/svgxuse.min.js</xsl:variable>
		<xsl:value-of select="php:function('\Daizy\SiteBuildHelper::copyFile', $svgxuse_js_path)"/>
		<script src="{$svgxuse_js_path}"></script>

		<!-- daizy.js fájl átmásolása a cél helyre -->
		<xsl:variable name="daizy_js_path">assets/daizy/daizy.js</xsl:variable>
		<xsl:value-of select="php:function('\Daizy\SiteBuildHelper::copyFile', $daizy_js_path)"/>
		<script src="{$daizy_js_path}"></script>
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
	
		<!-- copy svg icon sprite file -->
		<xsl:value-of select="php:function('\Daizy\SiteBuildHelper::copyFile', 'assets/daizy/icons-sprite.svg')"/>
	
		<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
		<xsl:call-template name="comment_copyright_text"/>
		<html lang="en">
			<head>
				<xsl:if test="baseHref">
					<base href="{baseHref}"/>
				</xsl:if>
				<meta charset="utf-8"/>
				<meta name="viewport" content="width=device-width, initial-scale=1"/>
				<title><xsl:value-of select="$head_title"/></title>

				<xsl:apply-templates select="head_css"></xsl:apply-templates>
			</head>
			<body class="container daizy-wrapper">
				<div class="page-loader text-primary">
					<div class="dot"><xsl:text disable-output-escaping="yes">&amp;middot;</xsl:text></div>
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