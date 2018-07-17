'use strict';
// =============================================================================
// DASHBOARD
//
(function(window, document){

	Daizy.Dashboard = {};

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
		var elements = document.querySelectorAll('.menu-contents .menu-content-header .caption');

		var is_match = false;
		for (var i = 0; i < elements.length; i++) {
			var element = elements[i];
			var closest_menu_content = element.closest('.menu-content') || document.createElement('div');

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
		var closest_menu_content = clicked_element.closest('.menu-content') || document.createElement('div');
		var menu_content_caption = closest_menu_content.querySelector('[data-toggle="collapse"]') || document.querySelector('div');

		Daizy.startFullscreen(document.documentElement);
		return;

		var collapse = closest_menu_content.querySelector('.collapse') || document.createElement('div');

		document.body.setAttribute('data-menu-content-maximized', 'true');
		closest_menu_content.setAttribute('data-maximized', 'true');
		start_header_search(menu_content_caption.textContent);
		// Ha a collapse még nincs nyitva:
		collapse.opened_before_maximize = collapse.classList.contains('show');
		if (!collapse.opened_before_maximize) {
			$(collapse).collapse('show');
		}

		// maximalizáló és minimalizáló gombok cseréje:
		Daizy.toggleElement(closest_menu_content.querySelector('.maximize-menu-content-section') || document.createElement('div'));
		Daizy.toggleElement(closest_menu_content.querySelector('.minimize-menu-content-section') || document.createElement('div'));
	}, document.querySelector('.menu-contents'));

	Daizy.onLive('.minimize-menu-content-section', 'click', function(e){
		e.preventDefault();
		e.stopPropagation();

		var clicked_element = this;
		var closest_menu_content = clicked_element.closest('.menu-content') || document.createElement('div');
		var menu_content_caption = closest_menu_content.querySelector('[data-toggle="collapse"]') || document.querySelector('div');

		Daizy.exitFullscreen();
		return;

		var collapse = closest_menu_content.querySelector('.collapse') || document.createElement('div');

		document.body.removeAttribute('data-menu-content-maximized');
		closest_menu_content.removeAttribute('data-maximized');
		start_header_search('');
		// Ha a maximalizálás előtt nem volt nyitva, akkor újra be kell csukni:
		if (!collapse.opened_before_maximize) {
			$(collapse).collapse('hide');
		}

		// maximalizáló és minimalizáló gombok cseréje:
		Daizy.toggleElement(closest_menu_content.querySelector('.maximize-menu-content-section') || document.createElement('div'));
		Daizy.toggleElement(closest_menu_content.querySelector('.minimize-menu-content-section') || document.createElement('div'));
	}, document.querySelector('.menu-contents'));

}).call(this, window, window.document);
// =============================================================================
