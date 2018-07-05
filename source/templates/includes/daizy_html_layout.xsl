<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:param name="head_title" select="'404 Page'" />
	
	<xsl:template match="head_css">
		<link rel="stylesheet" href="assets/daizy//mini.css-3.0.0/dist/mini-default.min.css"/>
		<link rel="stylesheet" href="assets/daizy/basscss-8.0.2/basscss.min.css"/>
		<link rel="stylesheet" href="assets/daizy/mini-css-plus.css"/>
		<link rel="stylesheet" href="assets/daizy/daizy.css"/>
	</xsl:template>
	
	
	<xsl:template match="head_javascript">
	</xsl:template>
	
	<xsl:template match="body_javascript">
		<noscript data-show="true">Javascript disabled!</noscript>
		<script src="assets/daizy/umbrella-2.10.2/umbrella.min.js" type="text/javascript"></script>
		<script src="assets/daizy/daizy.js" type="text/javascript"></script>
	</xsl:template>

	<xsl:template name="feather_icon">
<!-- 		<xsl:if test="$icon = ''"> -->
<!-- 			<xsl:message terminate="yes"> -->
<!-- 				Error: Artist is an empty string! -->
<!-- 			</xsl:message> -->
<!-- 		</xsl:if> -->
		<xsl:param name="icon"></xsl:param>
		<xsl:variable name="icon_path" select="concat(/variables/feather_icons_dir, '/', $icon, '.svg')"></xsl:variable>
		<xsl:value-of select="$icon_path"/>
		<xsl:value-of select="document('D:/PortableApps/www/Z/daizy/dev/source/assets/daizy/feather-4.7.3/icons/maxinmize.svg')"/>
<!-- 		<xsl:value-of select="unparsed-text('D:\PortableApps\www\Z\daizy\dev\source\assets\daizy\feather-4.7.3\icons\maxinmize.svg')"/> -->
<!-- 		$feather_icons_dir.'/maximize-2.svg -->
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
				<xsl:call-template name="feather_icon">
					<xsl:with-param name="icon" select="'maximize'"/>
				</xsl:call-template>
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