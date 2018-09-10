<xsl:stylesheet 
	version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xlink="http://www.w3.org/1999/xlink"
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
		<script src="{$svgxuse_js_path}" type="text/javascript"></script>

		<!-- daizy.js fájl átmásolása a cél helyre -->
		<xsl:variable name="daizy_js_path">assets/daizy/daizy.js</xsl:variable>
		<xsl:value-of select="php:function('\Daizy\SiteBuildHelper::copyFile', $daizy_js_path)"/>
		<script src="{$daizy_js_path}" type="text/javascript"></script>
	</xsl:template>
	
	<!-- 
	HTML body tartalmat előállítás sablon, ami névvel van ellátva
	-->	
	<xsl:template name="body_content">
	</xsl:template>
	
	<!-- 
	XSLT átalakítást elindító sablon definíció
	-->
	<xsl:template match="/variables">
	
		<!-- copy svg icon sprite file -->
		<xsl:value-of select="php:function('\Daizy\SiteBuildHelper::copyFile', 'assets/daizy/icons-sprite.svg')"/>
	
		<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
		<xsl:comment>Daizy Minimalistic Admin Template</xsl:comment>
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
		<xsl:comment>
			<xsl:text> </xsl:text><xsl:value-of select="/variables/copyright_text"/><xsl:text> </xsl:text>
		</xsl:comment>
	</xsl:template>
	
	<xsl:template name="bytesize_icons__TEMP">
		<xsl:param name="name"></xsl:param>
		<xsl:choose>
		
			<xsl:when test="$name = 'home'">
				<svg viewBox="0 0 32 32" width="32" height="32" fill="none" stroke="currentcolor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2">
					<path d="M12 20 L12 30 4 30 4 12 16 2 28 12 28 30 20 30 20 20 Z" />
				</svg>
			</xsl:when>
			
			<xsl:when test="$name = 'settings'">
				<svg id="i-settings" viewBox="0 0 32 32" width="32" height="32" fill="none" stroke="currentcolor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2">
					<path d="M13 2 L13 6 11 7 8 4 4 8 7 11 6 13 2 13 2 19 6 19 7 21 4 24 8 28 11 25 13 26 13 30 19 30 19 26 21 25 24 28 28 24 25 21 26 19 30 19 30 13 26 13 25 11 28 8 24 4 21 7 19 6 19 2 Z" />
					<circle cx="16" cy="16" r="4" />
				</svg>
			</xsl:when>
			
			<xsl:when test="$name = 'info'">
				<svg viewBox="0 0 32 32" width="32" height="32" fill="none" stroke="currentcolor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2">
					<path d="M16 14 L16 23 M16 8 L16 10" />
					<circle cx="16" cy="16" r="14" />
				</svg>							
			</xsl:when>
			
			<xsl:when test="$name = 'logout'">
				<svg viewBox="0 0 32 32" width="32" height="32" fill="none" stroke="currentcolor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2">
					<path d="M28 16 L8 16 M20 8 L28 16 20 24 M11 28 L3 28 3 4 11 4" />
				</svg>
			</xsl:when>
			
			<xsl:when test="$name = 'external'">
				<svg id="i-external" viewBox="0 0 32 32" width="32" height="32" fill="none" stroke="currentcolor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2">
					<path d="M14 9 L3 9 3 29 23 29 23 18 M18 4 L28 4 28 14 M28 4 L14 18" />
				</svg>
			</xsl:when>
			
		</xsl:choose>
	</xsl:template>
	
</xsl:stylesheet>