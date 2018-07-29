<xsl:stylesheet 
	version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	>
	
	<xsl:import href="includes/daizy_html_layout.xsl" />
	
	<xsl:import href="includes/dashboard_menu_contents/dashbaord.xsl" />
	<xsl:import href="includes/dashboard_menu_contents/typography.xsl" />
	<xsl:import href="includes/dashboard_menu_contents/images.xsl" />
	<xsl:import href="includes/dashboard_menu_contents/tables.xsl" />
	<xsl:import href="includes/dashboard_menu_contents/list_groups.xsl" />
	<xsl:import href="includes/dashboard_menu_contents/buttons.xsl" />
	<xsl:import href="includes/dashboard_menu_contents/jumbotrons.xsl" />
	<xsl:import href="includes/dashboard_menu_contents/cards.xsl" />
	<xsl:import href="includes/dashboard_menu_contents/forms.xsl" />
	<xsl:import href="includes/dashboard_menu_contents/navs.xsl" />
	<xsl:import href="includes/dashboard_menu_contents/badges.xsl" />
	<xsl:import href="includes/dashboard_menu_contents/alerts.xsl" />
	<xsl:import href="includes/dashboard_menu_contents/popovers.xsl" />
	<xsl:import href="includes/dashboard_menu_contents/progress_bars.xsl" />
	<xsl:import href="includes/dashboard_menu_contents/modals.xsl" />
	
	<xsl:param name="head_title" select="'Dashboard Page'" />


	<xsl:template match="head_css">
		<xsl:apply-imports/>
		
		<!-- login.css fájl másolása -->
		<xsl:variable name="dashboard_css_path">assets/daizy/dashboard.min.css</xsl:variable>
		<xsl:value-of select="php:function('\Daizy\SiteBuildHelper::copyFile', $dashboard_css_path)"/>
		<link rel="stylesheet" href="{$dashboard_css_path}"/>
	</xsl:template>

	
	<xsl:template match="body_javascript">
		<xsl:apply-imports/>
		
		<!-- dashboard.js fájl másolása -->
		<xsl:variable name="dashboard_js_path">assets/daizy/dashboard.js</xsl:variable>
		<xsl:value-of select="php:function('\Daizy\SiteBuildHelper::copyFile', $dashboard_js_path)"/>
		<script src="{$dashboard_js_path}" type="text/javascript"></script>
		
		<!-- demo.dashboard.js fájl másolása -->
		<xsl:variable name="demo_dashboard_js_path">assets/daizy/demo.dashboard.js</xsl:variable>
		<xsl:value-of select="php:function('\Daizy\SiteBuildHelper::copyFile', $demo_dashboard_js_path)"/>
		<script src="{$demo_dashboard_js_path}" type="text/javascript"></script>
	</xsl:template>


	<xsl:template name="body_content">
		<xsl:call-template name="body_header"></xsl:call-template>
		<xsl:call-template name="body_main"></xsl:call-template>
		<xsl:call-template name="body_footer"></xsl:call-template>
	</xsl:template>
	
	<xsl:template name="body_header">
		<header>
            <nav>
				<form class="search mr-md-3" onsubmit="return false;">
					<input class="form-control" type="search" placeholder="Search..." aria-label="Search"/>
				</form>
				
				<button type="button" data-menu-toggler=""> <xsl:text disable-output-escaping="yes">&amp;</xsl:text>equiv;</button>
				
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
							<span class="caption">
								Language
							</span>
							<select class="form-control" title="Change language...">
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
	
	<xsl:template name="body_header__BACKUP">
		<header>
			<nav class="navbar navbar-expand-md navbar-light">
				<form class="search mr-md-3" onsubmit="return false;">
					<input class="form-control" type="search" placeholder="Search..." aria-label="Search"/>
				</form>
				
				<!-- <a class="navbar-brand" href="#">Navbar</a> -->
				<button class="navbar-toggler mobile-menu-toggler" type="button" data-toggle="collapse" data-target="#headerNavbarContent" aria-controls="headerNavbarContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
			
				<div class="collapse navbar-collapse" id="headerNavbarContent">
					<ul class="navbar-nav">
						<li class="nav-item">
							<a class="nav-link menu-item" href="" title="Main Page">
								<svg class="icon"><use xlink:href="assets/daizy/icons-sprite.svg#bytesize-home"></use></svg>
								<span class="caption">Main Page</span>
							</a>
						</li>
						<li class="nav-item">
							<label class="nav-link menu-item language-switcher m-0" title="Change Language">
								<svg class="icon"><use xlink:href="assets/daizy/icons-sprite.svg#bytesize-settings"></use></svg>
								<span class="caption">
									Language
								</span>
								<select class="form-control" title="Change language...">
									<option value="hu">hu</option>
									<option value="en">en</option>
									<option value="de">de</option>
								</select>
							</label>
						</li>
						<li class="nav-item">
							<a class="nav-link menu-item" href="#" title="Logout">
								<svg class="icon"><use xlink:href="assets/daizy/icons-sprite.svg#bytesize-logout"></use></svg>
								<span class="caption">
									Logout
								</span>
							</a>
						</li>
					</ul>
				</div>
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
		<main class="my-3">	
			<div class="menu-content-list">
				<xsl:apply-templates select="/variables/dashboard_menu_content"></xsl:apply-templates>
			</div>
			<div id="header_search_no_results" class="alert alert-info text-info text-center" hidden="">
				No matching search found!
			</div>
		</main>
	</xsl:template>
	
	<xsl:template name="body_footer">
		<footer>
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
		
		<div class="card mt-3 menu-content-item">
			<div class="card-header menu-content-header">
				<button class="btn btn-outline-primary btn-lg collapsed menu-content-toggler" type="button" data-toggle="collapse" data-target="#{$collapse_id}" aria-expanded="true" aria-controls="{$collapse_id}">
					<span class="caption">
						<xsl:value-of select="$menu_content_caption"></xsl:value-of>
					</span>
				</button>
				<xsl:call-template name="button_maximize_section"></xsl:call-template>
			</div>
			<div id="{$collapse_id}" class="collapse menu-content-container">
				<div class="card-body">
					<xsl:copy-of select="$menu_content"></xsl:copy-of>
				</div>
			</div>
		</div>
	</xsl:template>
	
</xsl:stylesheet>