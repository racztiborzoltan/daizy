// =============================================================================
// Daizy Tabs plugin
//
(function(window, document, Daizy){

	if (typeof Daizy !== 'object') {
		console.error('Daizy object is required for Daizy Tabs');
	}

	if (typeof Daizy.Tabs == 'object') {
		return;
	}

	var Tabs = function(tabs_element, config){
		if (!tabs_element) {
			return console.error('first parameter is required');
		}
		if ( !(tabs_element instanceof Element) || !tabs_element.classList.contains('tabs') ) {
			return console.error('tabs element has no "tabs" CSS class.', tabs_element);
		}

		var self = this;

		config = config = Object.assign({
			//
			// selector relative to ".tabs"
			//
			'tabSelector': '.tab',
			//
			// click event on tab
			// function(Event, Daizy.Tabs){ this = clicked_element }
			//
			'onClick': function(event, tabs){},
		}, (typeof config == 'object' ? config : {}));

		var tabs_container = tabs_element;

		Daizy.onLive(config.tabSelector, 'click', function(event){
			if (typeof config.onClick == 'function') {
				config.onClick.call(this, event, self);
			}
		}, tabs_element);

		this.getConfig = function()
		{
			return config;
		}

		this.getContainerElement = function()
		{
			return tabs_element;
		}

		/**
		 * Return tab list in container element
		 *
		 * @return NodeList
		 */
		this.getTabList = function()
		{
			return tabs_element.querySelectorAll(config.tabSelector);
		}
	};


	Daizy.Tabs = Tabs;
}).call(this, window, window.document, window.Daizy || undefined);
