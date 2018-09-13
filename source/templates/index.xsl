<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:import href="includes/daizy_html_layout.xsl" />
	
	<!-- 
	XSLT átalakítást elindító sablon definíció
	-->
	<xsl:template match="/variables">
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
			</head>
			<body>
				
				<h1>
					<xsl:value-of select="$head_title"></xsl:value-of>
				</h1>
				
				<h2>Static builds</h2>
				<ul>
					<li>
						<a target="_blank" href="index.html">index.html</a>
					</li>
					<li>
						<a target="_blank" href="404.html">404 page</a>
					</li>
					<li>
						<a target="_blank" href="login.html">Login page</a>
					</li>
					<li>
						<a target="_blank" href="dashboard.html">Dashboard page</a>
					</li>
				</ul>
			
			</body>
		</html>
		<xsl:call-template name="comment_copyright_text"/>
	</xsl:template>
	
</xsl:stylesheet>