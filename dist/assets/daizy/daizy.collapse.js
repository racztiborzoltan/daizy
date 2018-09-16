// =============================================================================
// Daizy Collapse plugin
//
(function(window, document, Daizy){

	if (typeof Daizy !== 'object') {
		console.error('Daizy object is required for Daizy Collapse');
	}


	if (typeof Daizy.Collapse == 'object') {
		return;
	}

	var Collapse = function(collapse_element, config){
		if (!collapse_element) {
			return console.error('first parameter is required');
		}
		if ( !(collapse_element instanceof Element) || !collapse_element.classList.contains('tabs') ) {
			return console.error('tabs element has no "tabs" CSS class.', collapse_element);
		}

		var self = this;

		config = Object.assign({
			/*
			 * collapse target
			 *
			 * callback signature:
			 * function(Daizy.Collapse) {
			 * 	return 'css selector'; // absolute css selector
			 * 	return element; // DOM Element
			 * }
			 */
			'target': function(collapse_instance){
				return this.getAttribute('data-collapse-target');
			},
			//
			// attribute name for collapse target element
			//
			'attributeCollapseTarget': 'data-collapse-target',
		}, (typeof config == 'object' ? config : {}));

		Daizy.onLive(config.attributeCollapseTarget, 'click', function(event){
			if (typeof config.onClick == 'function') {
				config.onClick.call(this, event, self);
			}
		}, window.document);

		this.getConfig = function()
		{
			return config;
		}

		this.getContainerElement = function()
		{
			return collapse_element;
		}

		/**
		 * Return tab list in container element
		 *
		 * @return Element
		 */
		this.getCollapseTargetElement = function()
		{
			return collapse_element.querySelector(config.attributeCollapseTarget);
		}
	};

	Daizy.Collapse = Collapse;
}).call(this, window, window.document, window.Daizy || undefined);
