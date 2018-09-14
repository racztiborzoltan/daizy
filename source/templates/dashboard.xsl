<xsl:stylesheet 
	version="1.1" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	xmlns:php="http://php.net/xsl"
	exclude-result-prefixes="xlink php"
	>
	
	<xsl:import href="includes/daizy_html_layout.xsl" />
	
	<xsl:param name="head_title" select="'Dashboard Page'" />

	<xsl:template match="head_css">
		<xsl:apply-imports/>
		
		<!-- login.css fájl másolása -->
		<xsl:variable name="dashboard_css_path">assets/daizy/dashboard.min.css</xsl:variable>
		<xsl:value-of select="php:function('\Daizy\SiteBuildHelper::copyFile', $dashboard_css_path)"/>
		<link rel="stylesheet" href="{$dashboard_css_path}"/>
	</xsl:template>


	<xsl:template name="script_tag_with_copy">
		<xsl:param name="src"></xsl:param>
		
		<!-- a javascript fájl másolása -->
		<xsl:value-of select="php:function('\Daizy\SiteBuildHelper::copyFile', $src)"/>
		<script src="{$src}" type="text/javascript"></script>
	</xsl:template>

	
	<xsl:template match="body_javascript">
		<xsl:apply-imports/>
		
		<xsl:call-template name="script_tag_with_copy">
			<xsl:with-param name="src">assets/daizy/dashboard.js</xsl:with-param>
		</xsl:call-template>
		
		<xsl:call-template name="script_tag_with_copy">
			<xsl:with-param name="src">assets/daizy/daizy.tabs.js</xsl:with-param>
		</xsl:call-template>
		
		<xsl:call-template name="script_tag_with_copy">
			<xsl:with-param name="src">assets/daizy/demo.dashboard.js</xsl:with-param>
		</xsl:call-template>
		
	</xsl:template>


	<xsl:template name="body_content">
		<xsl:call-template name="body_header"></xsl:call-template>
		<xsl:call-template name="body_main"></xsl:call-template>
		<xsl:call-template name="body_footer"></xsl:call-template>
	</xsl:template>
	
	<xsl:template name="body_header">
		<header>

			<nav>
				<form class="search" onsubmit="return false;">
					<input type="search" placeholder="Search..." aria-label="Search"/>
				</form>
				
				<label for="nav_menu_toggler" data-menu-toggler="">
					<xsl:text disable-output-escaping="yes">&amp;</xsl:text>equiv;
				</label>
				
				<input id="nav_menu_toggler" type="checkbox" data-menu-toggler="" hidden=""/>
				<ul class="nav-menu">
					<li>
						<a href="" title="Main Page">
							<svg class="icon"><use xlink:href="assets/daizy/icons-sprite.svg#bytesize-home"></use></svg>
							<span class="caption">Main Page</span>
						</a>
					</li>
					<li>
						<label class="language-switcher" title="Change Language">
							<svg class="icon"><use xlink:href="assets/daizy/icons-sprite.svg#bytesize-settings"></use></svg>
							<select title="Change language...">
								<option value="hu">hu</option>
								<option value="en">en</option>
								<option value="de">de</option>
							</select>
						</label>
					</li>
					<li>
						<a href="#" title="Logout">
							<svg class="icon"><use xlink:href="assets/daizy/icons-sprite.svg#bytesize-logout"></use></svg>
							<span class="caption">
								Logout
							</span>
						</a>
					</li>
				</ul>
			</nav>
		</header>
	</xsl:template>
	
	<xsl:template name="button_maximize_section">
		<button class="btn btn-link maximize-menu-content-section" type="button" title="Maximize this section">
			<svg class="icon"><use xlink:href="assets/daizy/icons-sprite.svg#bytesize-external"></use></svg>
		</button>
		<button class="btn btn-link minimize-menu-content-section" type="button" title="Minimize this section" hidden="">
			<svg class="icon"><use xlink:href="assets/daizy/icons-sprite.svg#bytesize-external"></use></svg>
		</button>
	</xsl:template>
	
	<xsl:template name="body_main">
		<main>
			<div class="menu-content-list">
				<xsl:for-each select="/variables/dashboard_menu_content/*">
					<xsl:call-template name="display_menu_content">
						<xsl:with-param name="menu_content" select="document(concat('includes/dashboard_menu_contents/', name(.) ,'.xml'))/content/*"></xsl:with-param>
					</xsl:call-template>
				</xsl:for-each>
			</div>
			<div id="header_search_no_results" class="alert alert-info text-info text-center" hidden="">
				No matching search found!
			</div>
		</main>
	</xsl:template>
	
	<xsl:template name="body_footer">
		<footer>
			<xsl:call-template name="comment_copyright_text"/>
		</footer>
	</xsl:template>
	
	
	<!--  
	@desc Display collapsable menu content element
	@param string $menu_content Required!
	@xml
		<menu_content_node_name>
			<caption>
				Caption for menu content
			</caption>
		<menu_content_node_name/>
	-->
	<xsl:template name="display_menu_content">
		<xsl:param name="menu_content" required="yes"></xsl:param>
		
		<xsl:variable name="collapse_id" select="concat(name(), '-', generate-id())"></xsl:variable>
		<xsl:variable name="menu_content_caption" select="caption"></xsl:variable>
		
		<section class="card menu-content-item">
			<header class="card-header menu-content-header">
				<label class="button clear menu-content-toggler" for="collapse_{$collapse_id}" tabindex="0">
					<xsl:value-of select="$menu_content_caption"></xsl:value-of>
				</label>
				<!-- 
				<xsl:call-template name="button_maximize_section"></xsl:call-template>
				-->
			</header>
			<input type="checkbox" id="collapse_{$collapse_id}" class="collapse" aria-hidden="true"/>
			<article id="{$collapse_id}" class="menu-content-container">
				<xsl:copy-of select="$menu_content"></xsl:copy-of>
			</article>
		</section>
	</xsl:template>
	
</xsl:stylesheet>