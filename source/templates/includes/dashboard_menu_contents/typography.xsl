<xsl:stylesheet 
	version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	>
	
	<xsl:template match="typography">
		<xsl:call-template name="display_menu_content">
			<xsl:with-param name="menu_content">
				<div class="row">
					<div class="col-md-6">
						<h3 class="mt-5">Headings</h3>
						<h1>h1. Bootstrap heading</h1>
						<h2>h2. Bootstrap heading</h2>
						<h3>h3. Bootstrap heading</h3>
						<h4>h4. Bootstrap heading</h4>
						<h5>h5. Bootstrap heading</h5>
						<h6>h6. Bootstrap heading</h6>
	
						<h3 class="mt-5">Lead</h3>
						<p class="lead">Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus.</p>
	
						<h3 class="mt-5">Styles</h3>
						<p>You can use the mark tag to
							<mark>highlight</mark> text.</p>
						<p>
							<del>This line of text is meant to be treated as deleted text.</del>
						</p>
						<p>
							<s>This line of text is meant to be treated as no longer accurate.</s>
						</p>
						<p>
							<ins>This line of text is meant to be treated as an addition to the document.</ins>
						</p>
						<p>
							<u>This line of text will render as underlined</u>
						</p>
						<p><small>This line of text is meant to be treated as fine print.</small></p>
						<p><strong>This line rendered as bold text.</strong></p>
						<p><em>This line rendered as italicized text.</em></p>
						<p class="text-muted">And this is a muted text.</p>
						<p><abbr title="Abbreviation">abbr</abbr> <abbr title="Abbreviation with initialism" class="initialism">abbr+init</abbr></p>
	
						<h3 class="mt-5">Colors</h3>
						<p>
	
							<span class="text-primary">.text-primary</span>
	
							<span class="text-secondary">.text-secondary</span>
	
							<span class="text-success">.text-success</span>
	
							<span class="text-danger">.text-danger</span>
	
							<span class="text-warning">.text-warning</span>
	
							<span class="text-info">.text-info</span>
	
							<span class="text-light">.text-light</span>
	
							<span class="text-dark">.text-dark</span>
	
							<span class="text-white">.text-white</span>
	
						</p>
						<p>
	
							<span><a href="#" class="text-primary">Primary link</a></span>
	
							<span><a href="#" class="text-secondary">Secondary link</a></span>
	
							<span><a href="#" class="text-success">Success link</a></span>
	
							<span><a href="#" class="text-danger">Danger link</a></span>
	
							<span><a href="#" class="text-warning">Warning link</a></span>
	
							<span><a href="#" class="text-info">Info link</a></span>
	
							<span><a href="#" class="text-light">Light link</a></span>
	
							<span><a href="#" class="text-dark">Dark link</a></span>
	
							<span><a href="#" class="text-white">White link</a></span>
	
						</p>
	
						<h3 class="mt-5">Inline code</h3>
						<p>For example, <code>&lt;section&gt;</code> should be wrapped as inline.</p>
						<p><var>y</var> = <var>m</var><var>x</var> + <var>b</var></p>
						<p>To switch directories, type <kbd>cd</kbd> followed by the name of the directory.<br /> To edit settings, press <kbd><kbd>ctrl</kbd> + <kbd>,</kbd></kbd>
						</p>
						<p><samp>This text is meant to be treated as sample output from a computer program.</samp></p>
					</div>
					<div class="col-md-6">
						<h3 class="mt-5">Displays</h3>
						<h1 class="display-1">Display 1</h1>
						<h1 class="display-2">Display 2</h1>
						<h1 class="display-3">Display 3</h1>
						<h1 class="display-4">Display 4</h1>
	
						<h3 class="mt-5">Sample body</h3>
						<p class="text-justify">
							Lórum ipse - mint senyért - nyált <a href="javascript:void(0)">ságos iség</a>, ahol beles metás, csaprozás, vermény, csaprát és más meni zsorlóca kuncáskodik. Mosztag, férzet napé, fuvódás 11, törnyélés ; valamint szuvegés vitancs: a dozmus drikója, jultsás kelés magyarul. A szuvegés és gyarány pasztákban buggyos mendernyékről, filingéjükről és pucájukról húzódik a fabampa. Hűtő benne a legújabban belég mendernyék mártja is, részletesen sáskodik a kétenc fríg lepkonyaival. Csétletésről cigál le egy kéző lengelész csapárába rimulnia, ahol három másik szivény együtt érleti spotráit. Ha a bénulás summája kalkodik, úgy púdulhat, mintha az volna a sülső csoltása, hogy a szedhentes és egyes tengyelét lécetse ki a pávágyokból. Ez vajon vertető ölyök vagy vegítő dosna? Szalalizál bunya a felegesben olyan szellőző kedő, amely farisban kevetteti a nyagondos hizmusok „énemlő” lárias mizmusait?
						</p>
	
						<h3 class="mt-5">Code block</h3>
						<button class="btn btn-sm btn-primary my-1" id="hljs-theme-toggler">Toggle HLJS theme</button>
						<pre><code class="hljs java"><span class="hljs-comment">/**
	 * <span class="hljs-doctag">@author</span> John Smith &lt;john.smith@example.com&gt;
	 */</span>
	<span class="hljs-keyword">package</span> l2f.gameserver.model;
	
	<span class="hljs-keyword">public</span> <span class="hljs-keyword">abstract</span> <span class="hljs-class"><span class="hljs-keyword">class</span> <span class="hljs-title">L2Char</span> <span class="hljs-keyword">extends</span> <span class="hljs-title">L2Object</span> </span>{
		<span class="hljs-keyword">public</span> <span class="hljs-keyword">static</span> <span class="hljs-keyword">final</span> Short ERROR = <span class="hljs-number">0x0001</span>;
	
		<span class="hljs-function"><span class="hljs-keyword">public</span> <span class="hljs-keyword">void</span> <span class="hljs-title">moveTo</span><span class="hljs-params">(<span class="hljs-keyword">int</span> x, <span class="hljs-keyword">int</span> y, <span class="hljs-keyword">int</span> z)</span> </span>{
			_ai = <span class="hljs-keyword">null</span>;
			log(<span class="hljs-string">"Should not be called"</span>);
			<span class="hljs-keyword">if</span> (<span class="hljs-number">1</span> &gt; <span class="hljs-number">5</span>) { <span class="hljs-comment">// wtf!?</span>
				<span class="hljs-keyword">return</span>;
			}
		}
	}</code></pre>
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<h3 class="mt-5">Blockquote</h3>
						<blockquote class="blockquote">
							<p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
							<footer class="blockquote-footer">Someone famous in <cite title="Source Title">Source Title</cite></footer>
						</blockquote>
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<h3 class="mt-5">...centered</h3>
						<blockquote class="blockquote text-center">
							<p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
							<footer class="blockquote-footer">Someone famous in <cite title="Source Title">Source Title</cite></footer>
						</blockquote>
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<h3 class="mt-5">...on right</h3>
						<blockquote class="blockquote text-right">
							<p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
							<footer class="blockquote-footer">Someone famous in <cite title="Source Title">Source Title</cite></footer>
						</blockquote>
					</div>
				</div>
				<div class="row">
					<div class="col-4">
						<h3 class="mt-5">List</h3>
						<ul>
							<li>Lorem ipsum dolor sit amet</li>
							<li>Consectetur adipiscing elit</li>
							<li>Integer molestie lorem at massa</li>
							<li>Facilisis in pretium nisl aliquet</li>
							<li>Nulla volutpat aliquam velit
								<ul>
									<li>Phasellus iaculis neque</li>
									<li>Purus sodales ultricies</li>
									<li>Vestibulum laoreet porttitor sem</li>
									<li>Ac tristique libero volutpat at</li>
								</ul>
							</li>
							<li>Faucibus porta lacus fringilla vel</li>
							<li>Aenean sit amet erat nunc</li>
							<li>Eget porttitor lorem</li>
						</ul>
					</div>
					<div class="col-4">
						<h3 class="mt-5">...unstyled</h3>
						<ul class="list-unstyled">
							<li>Lorem ipsum dolor sit amet</li>
							<li>Consectetur adipiscing elit</li>
							<li>Integer molestie lorem at massa</li>
							<li>Facilisis in pretium nisl aliquet</li>
							<li>Nulla volutpat aliquam velit
								<ul>
									<li>Phasellus iaculis neque</li>
									<li>Purus sodales ultricies</li>
									<li>Vestibulum laoreet porttitor sem</li>
									<li>Ac tristique libero volutpat at</li>
								</ul>
							</li>
							<li>Faucibus porta lacus fringilla vel</li>
							<li>Aenean sit amet erat nunc</li>
							<li>Eget porttitor lorem</li>
						</ul>
					</div>
					<div class="col-4">
						<h3 class="mt-5">...inline</h3>
						<ul class="list-inline">
							<li class="list-inline-item">Lorem ipsum</li>
							<li class="list-inline-item">Phasellus iaculis</li>
							<li class="list-inline-item">Nulla volutpat</li>
						</ul>
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<h3 class="mt-5">Definition list</h3>
					</div>
				</div>
				<dl class="row">
					<dt class="col-sm-3">Description lists</dt>
					<dd class="col-sm-9">A description list is perfect for defining terms.</dd>
	
					<dt class="col-sm-3">Euismod</dt>
					<dd class="col-sm-9">
						<p>Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</p>
						<p>Donec id elit non mi porta gravida at eget metus.</p>
					</dd>
	
					<dt class="col-sm-3">Malesuada porta</dt>
					<dd class="col-sm-9">Etiam porta sem malesuada magna mollis euismod.</dd>
	
					<dt class="col-sm-3 text-truncate">Truncated term is truncated</dt>
					<dd class="col-sm-9">Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</dd>
	
					<dt class="col-sm-3">Nesting</dt>
					<dd class="col-sm-9">
						<dl class="row">
							<dt class="col-sm-4">Nested definition list</dt>
							<dd class="col-sm-8">Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc.</dd>
						</dl>
					</dd>
				</dl>
	
				<div class="row">
					<div class="col-12">
						<h3 class="mt-5">Background colors</h3>
					</div>
	
	
					<div class="col-md-4">
						<div class="p-3 mb-2 bg-primary text-white">.bg-primary</div>
					</div>
	
	
					<div class="col-md-4">
						<div class="p-3 mb-2 bg-secondary text-white">.bg-secondary</div>
					</div>
	
	
					<div class="col-md-4">
						<div class="p-3 mb-2 bg-success text-white">.bg-success</div>
					</div>
	
	
					<div class="col-md-4">
						<div class="p-3 mb-2 bg-danger text-white">.bg-danger</div>
					</div>
	
	
					<div class="col-md-4">
						<div class="p-3 mb-2 bg-warning text-dark">.bg-warning</div>
					</div>
	
	
					<div class="col-md-4">
						<div class="p-3 mb-2 bg-info text-white">.bg-info</div>
					</div>
	
	
					<div class="col-md-4">
						<div class="p-3 mb-2 bg-light text-dark">.bg-light</div>
					</div>
	
	
					<div class="col-md-4">
						<div class="p-3 mb-2 bg-dark text-white">.bg-dark</div>
					</div>
	
	
					<div class="col-md-4">
						<div class="p-3 mb-2 bg-white text-dark">.bg-white</div>
					</div>
	
				</div>
			</xsl:with-param>
		</xsl:call-template>
	</xsl:template>
	
</xsl:stylesheet>