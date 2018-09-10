'use strict';
// =============================================================================
// DASHBOARD
//
(function(window, document){

	console.error('REIMPLEMENTATION!!!');
	return;

	var $ = undefined;
	var jQuery = undefined;

	Daizy.Dashboard = {};

	Daizy.Dashboard.onMaximizeMenuContent = function(){
		// this === maximized .menu-content-item element
	};

	Daizy.Dashboard.onOpenMenuContent = function(){
		// this === maximized .menu-content-item element
	};

	Daizy.Dashboard.onCloseMenuContent = function(){
		// this === maximized .menu-content-item element
	};

	/**
	 * Egy keresés indítása a fejlécben lévő keresőmezővel
	 */
	function start_header_search(term)
	{
		search_input.value = term;
		Daizy.triggerEvent(search_input, 'keyup');
	}

	var search_form = document.querySelector('header form.search') || document.createElement('form');
	var search_input = document.querySelector('header .search input[type="search"]') || document.createElement('input');
	search_input.addEventListener('keyup', function (e) {
		this.prev_value = this.prev_value || null;
		if (this.prev_value === this.value) {
			return;
		}
		this.prev_value = this.value;

		var term = this.value.trim();
		var elements = document.querySelectorAll('.menu-content-list .menu-content-header .caption');

		var is_match = false;
		for (var i = 0; i < elements.length; i++) {
			var element = elements[i];
			var closest_menu_content = element.closest('.menu-content-item') || document.createElement('div');

			// Ha van találat, vagy ha üres a kereső mező értéke, akkor látszik az aktuális elem:
			if (element.textContent.toLowerCase().removeAccents().indexOf(term.toLowerCase().removeAccents()) > -1) {
				closest_menu_content.removeAttribute('hidden');
				is_match = true;
			} else {
				closest_menu_content.setAttribute('hidden', '');
			}
		}
		var no_match_alert = document.querySelector('#header_search_no_results');
		if (is_match) {
			no_match_alert.setAttribute('hidden', '');
		} else {
			no_match_alert.removeAttribute('hidden');
		}
	});

	Daizy.onLive('.maximize-menu-content-section', 'click', function(e){
		e.preventDefault();
		e.stopPropagation();

		var clicked_element = this;
		var closest_menu_content = clicked_element.closest('.menu-content-item') || document.createElement('div');
		var menu_content_caption = closest_menu_content.querySelector('.menu-content-toggler') || document.querySelector('div');

		var menu_content_container = closest_menu_content.querySelector('.menu-content-container') || document.createElement('div');

		document.body.setAttribute('data-menu-content-maximized', 'true');
		document.body.classList.add('full-width');
		closest_menu_content.setAttribute('data-maximized', 'true');
		start_header_search(menu_content_caption.textContent);
		// Ha a menü még nincs nyitva:
		menu_content_container.opened_before_maximize = menu_content_container.classList.contains('show');
		if (!menu_content_container.opened_before_maximize) {
			Daizy.Dashboard.onOpenMenuContent.call(closest_menu_content);
		}

		// maximalizáló és minimalizáló gombok cseréje:
		Daizy.toggleElement(closest_menu_content.querySelector('.maximize-menu-content-section') || document.createElement('div'));
		Daizy.toggleElement(closest_menu_content.querySelector('.minimize-menu-content-section') || document.createElement('div'));

		Daizy.Dashboard.onMaximizeMenuContent.call(closest_menu_content);
	}, document.querySelector('.menu-content-list'));

	Daizy.onLive('.minimize-menu-content-section', 'click', function(e){
		e.preventDefault();
		e.stopPropagation();

		var clicked_element = this;
		var closest_menu_content = clicked_element.closest('.menu-content-item') || document.createElement('div');
		var menu_content_caption = closest_menu_content.querySelector('.menu-content-toggler') || document.querySelector('div');

		var menu_content_container = closest_menu_content.querySelector('.menu-content-container') || document.createElement('div');

		document.body.removeAttribute('data-menu-content-maximized');
		document.body.classList.remove('full-width');
		closest_menu_content.removeAttribute('data-maximized');
		start_header_search('');
		// Ha a maximalizálás előtt nem volt nyitva, akkor újra be kell csukni:
		if (!menu_content_container.opened_before_maximize) {
			Daizy.Dashboard.onCloseMenuContent.call(closest_menu_content);
		}

		// maximalizáló és minimalizáló gombok cseréje:
		Daizy.toggleElement(closest_menu_content.querySelector('.maximize-menu-content-section') || document.createElement('div'));
		Daizy.toggleElement(closest_menu_content.querySelector('.minimize-menu-content-section') || document.createElement('div'));
	}, document.querySelector('.menu-content-list'));

}).call(this, window, window.document);
// =============================================================================
