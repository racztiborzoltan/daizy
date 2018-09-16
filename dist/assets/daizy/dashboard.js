'use strict';
// =============================================================================
// DASHBOARD
//
(function(window, document, Daizy){

	if (typeof Daizy !== 'object') {
		console.error('Daizy object is required for Daizy Tabs');
	}

	Daizy.Dashboard = function(config){
		var self = this;

		config = Object.assign({
			//
			// search input Element or css selector for search input
			//
			'searchInput': 'header .search input[type="search"]',
			'selectorMenuContentItems': '.menu-content-list .menu-content-item',
			//
			// match menu content items
			// callback signature:
			// function(Element menu_content_item_element, string search_term) {
			// 		this instancof Daizy.Dashboard;
			// 		return bool; // matched or not matched?
			// }
			//
			'matchMenuContentItem': function(menu_content_item, term){
				// Ha van találat, vagy ha üres a kereső mező értéke, akkor látszik az aktuális elem:
				if (menu_content_item.textContent.toLowerCase().removeAccents().indexOf(term.toLowerCase().removeAccents()) > -1) {
					menu_content_item.removeAttribute('hidden');
					return true;
				} else {
					menu_content_item.setAttribute('hidden', '');
					return false;
				}
			},
			/*
			 * event on search end
			 *
			 * callback signature:
			 * function(bool matched) {
			 * }
			 */
			'onSearchEnd': function(matched){
				var no_match_alert = document.querySelector('#header_search_no_results');
				if (matched) {
					no_match_alert.setAttribute('hidden', '');
				} else {
					no_match_alert.removeAttribute('hidden');
				}
			},
			//
			// maximize menu content items
			// callback signature:
			// function(Element menu_content_item_element) {
			// 		this instancof Daizy.Dashboard;
			// }
			//
			'onMaximize': function(menu_content_item, event){
				// maximalizáló és minimalizáló gombok cseréje:
				Daizy.toggleElement(menu_content_item.querySelector('.maximize-menu-content-section') || document.createElement('div'));
				Daizy.toggleElement(menu_content_item.querySelector('.minimize-menu-content-section') || document.createElement('div'));
			},
			//
			// minimize menu content items
			// callback signature:
			// function(Element menu_content_item_element) {
			// 		this instancof Daizy.Dashboard;
			// }
			//
			'onMinimize': function(menu_content_item, event){
				// maximalizáló és minimalizáló gombok cseréje:
				Daizy.toggleElement(menu_content_item.querySelector('.maximize-menu-content-section') || document.createElement('div'));
				Daizy.toggleElement(menu_content_item.querySelector('.minimize-menu-content-section') || document.createElement('div'));
			},
			'getMenuContentTitleCaption': function(menu_content_item){
				return menu_content_item.querySelector('header').getAttribute('data-caption');
			},
			'openMenuContentItem': function(menu_content_item){
				menu_content_item.querySelector('header a[data-collapse-target]').click();
			},
			'closeMenuContentItem': function(menu_content_item){
				menu_content_item.querySelector('header a[data-collapse-target]').click();
			},
		}, (typeof config == 'object' ? config : {}));

		var search_input = null;

		function _is_string(v)
		{
			return typeof v == 'string' || v instanceof String;
		}

		this.getSearchInput = function(){
			if (!search_input) {
				if (config.searchInput instanceof Element) {
					search_input = config.searchInput;
				} else if (_is_string(config.searchInput)) {
					search_input = document.querySelector(config.searchInput);
				}
				if (!search_input) {
					console.error('search input not found!');
				}
			}
			return search_input;
		};

		this.setSearchInput = function(search_input_element){
			if ( !(search_input_element instanceof Element) ) {
				return console.error('first parameter is not Element', tabs_element);
			}
			search_input = search_input_element;
			return this;
		};

		/**
		 * Initialization
		 */
		this.init = function(){

			var search_input_keyup = function (e) {
				this.prev_value = this.prev_value || null;
				if (this.prev_value === this.value) {
					return;
				}
				this.prev_value = this.value;

				var term = this.value.trim();
				var elements = document.querySelectorAll(config.selectorMenuContentItems);

				var is_match = false;
				for (var i = 0; i < elements.length; i++) {
					var element = elements[i];
					if (config.matchMenuContentItem.call(self, element, term)) {
						is_match = true;
					}
				}
				config.onSearchEnd.call(self, is_match);
			};

			var search_input = this.getSearchInput();
			search_input.addEventListener('keyup', search_input_keyup);

			Daizy.onLive('.maximize-menu-content-section', 'click', function(e){
				var menu_content_item = this.closest('.menu-content-item');
				var menu_content_caption = config.getMenuContentTitleCaption.call(self, menu_content_item);
				document.body.setAttribute('data-menu-content-maximized', 'true');
				document.body.classList.add('full-width');
				menu_content_item.setAttribute('data-maximized', 'true');
				self.startSearch(menu_content_caption);
				search_input.setAttribute('disabled', 'disabled');
				config.onMaximize.call(self, menu_content_item);
				config.openMenuContentItem.call(self, menu_content_item);
			}, document.querySelector('.menu-content-list'));

			Daizy.onLive('.minimize-menu-content-section', 'click', function(e){
				var menu_content_item = this.closest('.menu-content-item');
				document.body.removeAttribute('data-menu-content-maximized');
				document.body.classList.remove('full-width');
				menu_content_item.removeAttribute('data-maximized');
				self.startSearch('');
				search_input.removeAttribute('disabled');
				config.onMinimize.call(self, menu_content_item);
				config.closeMenuContentItem.call(self, menu_content_item);
			}, document.querySelector('.menu-content-list'));

		};

		/**
		 * Deinitialization
		 */
		this.deinit = function(){
			var search_input = this.getSearchInput();
			search_input.removeEventListener('keyup', search_input_keyup);
		};

		/**
		 * Egy keresés indítása a fejlécben lévő keresőmezővel
		 */
		this.startSearch = function(term)
		{
			search_input.value = term;
			Daizy.triggerEvent(search_input, 'keyup');
		}

		/**
		 * Beállítások viszsaadása
		 *
		 * @return Object
		 */
		this.getConfig = function(){
			return config;
		};
	};

}).call(this, window, window.document, window.Daizy || null);
// =============================================================================
