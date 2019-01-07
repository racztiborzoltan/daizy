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
			<xsl:with-param name="src">assets/daizy/js/dashboard.js</xsl:with-param>
		</xsl:call-template>
		
		<xsl:call-template name="script_tag_with_copy">
			<xsl:with-param name="src">assets/daizy/js/demo.dashboard.js</xsl:with-param>
		</xsl:call-template>
		
	</xsl:template>


	<xsl:template name="body_content">
		<xsl:call-template name="body_header"></xsl:call-template>
		<xsl:call-template name="body_main"></xsl:call-template>
		<xsl:call-template name="body_footer"></xsl:call-template>
	</xsl:template>
	
	<xsl:template name="body_header">
		<header class="container">
			<nav class="navbar navbar-expand-sm navbar-light bg-light">
				<form class="form-inline flex-grow-1 my-2 my-lg-0 mr-2 search">
					<div class="input-group w-100">
						<input class="form-control" type="search" placeholder="Search" aria-label="Search" />
						<div class="input-group-append">
							<span class="input-group-text bg-white" id="basic-addon2">
								<i class="fas fa-search"></i>
							</span>
						</div>
					</div>
				</form>
				
				<!-- <a class="navbar-brand" href="#">Navbar</a> -->
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
			
				<div class="collapse navbar-collapse flex-grow-0" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item active">
							<a class="nav-link" href="#" title="Main Page">
								<i class="fas fa-home fa-fw mr-2 mr-sm-0"></i>
								<span class="d-inline d-sm-none caption">Main Page</span>
								<span class="sr-only">(current)</span>
							</a>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" title="Change language">
								<i class="fas fa-globe fa-fw mr-2 mr-sm-0"></i>
							</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="#">en</a>
								<a class="dropdown-item" href="#">de</a>
								<a class="dropdown-item" href="#">hu</a>
							</div>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#" title="Logout">
								<i class="fas fa-sign-out-alt fa-fw mr-2 mr-sm-0"></i>
							</a>
						</li>
					</ul>
				</div>
			</nav>
			<hr class="navbar-bottom"/>
		</header>
	</xsl:template>
	
	<xsl:template name="body_main">
		<main class="container">
				
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
			<div id="header_search_no_results" class="alert alert-info text-center" hidden="hidden">
				No matching search found!
			</div>
			
			<div>
<!-- 				<xsl:copy-of select="php:function('getHtmlTestPageBodyContent')"></xsl:copy-of> -->
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
		
		<section class="card mb-3 menu-content-item">
			<header class="card-header p-2 text-center menu-content-header" data-caption="{$menu_content_caption}">
				<button class="btn btn-link" type="button" data-toggle="collapse" data-target="#{$collapse_id}" aria-expanded="false" aria-controls="{$collapse_id}">
					<span class="caption menu-caption">
						<xsl:value-of select="$menu_content_caption"></xsl:value-of>
					</span>
				</button>
				<!--  
				<button class="btn btn-link maximize-menu-content-section" type="button" title="Maximize this section">
					<i class="far fa-window-maximize"></i>
				</button>
				<button class="btn btn-link minimize-menu-content-section" type="button" title="Minimize this section" hidden="">
					<i class="far fa-window-minimize"></i>
				</button>
				-->
			</header>
			<article id="{$collapse_id}" class="card-body collapse menu-content-container">
				<xsl:copy-of select="$menu_content"></xsl:copy-of>
			</article>
		</section>
	</xsl:template>
	
</xsl:stylesheet>