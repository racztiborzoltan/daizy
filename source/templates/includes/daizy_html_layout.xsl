<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" indent="yes" omit-xml-declaration="yes"/>
	
	<xsl:param name="head_title" select="'DaiZy Minimalistic Admin Template'" />
	
	<xsl:template match="head_css">
		<!-- mini css fájl átmásolása a cél helyre -->
		<xsl:variable name="mini_css_path">assets/vendor/mini.css-3.0.0/dist/mini-default.min.css</xsl:variable>
		<xsl:value-of select="php:function('\Daizy\SiteBuildHelper::copyFile', $mini_css_path)"/>
		<link rel="stylesheet" href="{$mini_css_path}"/>
		
		<!-- "assets/daizy/daizy.min.css" fájl átmásolása a cél helyre -->
		<xsl:variable name="daizy_css_path">assets/daizy/daizy.min.css</xsl:variable>
		<xsl:value-of select="php:function('\Daizy\SiteBuildHelper::copyFile', $daizy_css_path)"/>
		<link rel="stylesheet" href="{$daizy_css_path}"/>
	</xsl:template>
	
	
	<xsl:template match="head_javascript">
	</xsl:template>
	
	<xsl:template match="body_javascript">
		<noscript class="nojs">Javascript disabled!</noscript>
			<script src="https:////cdn.polyfill.io/v2/polyfill.min.js"></script>
<!-- 		<script src="assets/daizy/umbrella-2.10.2/umbrella.min.js" type="text/javascript"></script> -->

		<!-- daizy.js fájl átmásolása a cél helyre -->
		<xsl:variable name="daizy_js_path">assets/daizy/daizy.js</xsl:variable>
		<xsl:value-of select="php:function('\Daizy\SiteBuildHelper::copyFile', $daizy_js_path)"/>
		<script src="{$daizy_js_path}" type="text/javascript"></script>
	</xsl:template>
	
	<xsl:template name="feather-icon-maximize-2">
		<svg
			xmlns="http://www.w3.org/2000/svg"
			width="24"
			height="24"
			viewBox="0 0 24 24"
			fill="none"
			stroke="currentColor"
			stroke-width="2"
			stroke-linecap="round"
			stroke-linejoin="round"
		>
			<polyline points="15 3 21 3 21 9" />
			<polyline points="9 21 3 21 3 15" />
			<line x1="21" y1="3" x2="14" y2="10" />
			<line x1="3" y1="21" x2="10" y2="14" />
		</svg> 	
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
		<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
		<xsl:comment>Daizy Minimalistic Admin Template</xsl:comment>
		<html lang="hu">
			<head>
				<xsl:if test="baseHref">
					<base href="{baseHref}"/>
				</xsl:if>
				<meta charset="utf-8"/>
				<meta name="viewport" content="width=device-width, initial-scale=1"/>
				<title><xsl:value-of select="$head_title"/></title>

				<xsl:apply-templates select="head_css"></xsl:apply-templates>
			</head>
			<body class="container">
				<div class="page-loader">
					<div class="spinner primary"></div>
				</div>
             
				<xsl:call-template name="body_content"/>
				
				<div class="scripts">
					<xsl:apply-templates select="body_javascript"></xsl:apply-templates>
				</div>
			</body>
		</html>
	</xsl:template>
	
</xsl:stylesheet>