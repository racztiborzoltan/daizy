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
		
		<xsl:call-template name="css_tag_with_copy">
			<xsl:with-param name="href">assets/daizy/dashboard.min.css</xsl:with-param>
		</xsl:call-template>
	</xsl:template>

	
	<xsl:template match="body_javascript">
		<xsl:apply-imports/>
		
		<xsl:call-template name="script_tag_with_copy">
			<xsl:with-param name="src">assets/daizy/dashboard.js</xsl:with-param>
		</xsl:call-template>
		
		<xsl:call-template name="script_tag_with_copy">
			<xsl:with-param name="src">assets/daizy/daizy.collapse.js</xsl:with-param>
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
	
	<xsl:template name="body_main">
		<main>
			<!-- 
			<div class="menu-content-list">
				<xsl:for-each select="/variables/dashboard_menu_content/*">
					<xsl:call-template name="display_menu_content">
						<xsl:with-param name="menu_content_caption" select="caption"></xsl:with-param>
						<xsl:with-param name="menu_content_id" select="name()"></xsl:with-param>
						<xsl:with-param name="menu_content" select="document(concat('includes/dashboard_menu_contents/', name(.) ,'.xml'))/content/*"></xsl:with-param>
					</xsl:call-template>
				</xsl:for-each>
				<xsl:call-template name="display_menu_content">
					<xsl:with-param name="menu_content_caption" select="'HTML5 Test'"></xsl:with-param>
					<xsl:with-param name="menu_content_id" select="'html5-test'"></xsl:with-param>
					<xsl:with-param name="menu_content" select="php:function('getHtmlTestPageBodyContent')"></xsl:with-param>
				</xsl:call-template>
			</div>
			 -->
			<div id="header_search_no_results" class="card text-center" hidden="">
				No matching search found!
			</div>
			
			<div>
				<xsl:copy-of select="php:function('getHtmlTestPageBodyContent')"></xsl:copy-of>
				
				<hr />
				
				<form>
					<select multiple="multiple">
						<option>Option 1</option>
						<option>Option 2</option>
						<optgroup label="OptGroup 1">
							<option>Option 1.1</option>
							<option>Option 1.2</option>
						</optgroup>
						<option>Option 3</option>
						<optgroup label="OptGroup 2">
							<option>Option 2.1</option>
							<option>Option 2.2</option>
							<option>Option 2.3</option>
						</optgroup>
					</select>
				</form>
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
		<xsl:param name="menu_content_caption" required="yes"></xsl:param>
		<xsl:param name="menu_content_id" required="yes"></xsl:param>
		<xsl:param name="menu_content" required="yes"></xsl:param>
		
		<xsl:variable name="collapse_id" select="concat('collapse_', $menu_content_id)"></xsl:variable>
		
		<section class="card menu-content-item">
			<header class="card-header menu-content-header" data-caption="{$menu_content_caption}">
				<h4>
					<a class="button clear" data-collapse-target="#{$collapse_id}">
						<xsl:value-of select="$menu_content_caption"></xsl:value-of>
					</a>
					<button class="button clear maximize-menu-content-section" type="button" title="Maximize this section">
						<svg class="icon"><use xlink:href="assets/daizy/icons-sprite.svg#bytesize-external"></use></svg>
					</button>
					<button class="button clear minimize-menu-content-section" type="button" title="Minimize this section" hidden="">
						<svg class="icon"><use xlink:href="assets/daizy/icons-sprite.svg#bytesize-external"></use></svg>
					</button>
	<!-- 				<label class="button clear menu-content-toggler" for="{$collapse_id}" tabindex="0"> -->
	<!-- 					<xsl:value-of select="$menu_content_caption"></xsl:value-of> -->
	<!-- 				</label> -->
				</h4>
			</header>
			<article id="{$collapse_id}" class="collapse menu-content-container" hidden="">
				<xsl:copy-of select="$menu_content"></xsl:copy-of>
			</article>
		</section>
	</xsl:template>
	
</xsl:stylesheet>