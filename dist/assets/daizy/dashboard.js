// =============================================================================
// DASHBOARD
//
(function(window, document){

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
		if (typeof this.prev_value == 'undefined') {
			this.prev_value = null;
		}
		if (this.prev_value === this.value) {
			return;
		}
		this.prev_value = this.value;

		var term = this.value;
		var elements = document.querySelectorAll('main .collapse label .caption');

		for (var i = 0; i < elements.length; i++) {
			var element = elements[i];
			var closest_label = element.closest('label') || document.createElement('label');
			// Ha van találat, vagy ha üres a kereső mező értéke, akkor látszik az aktuális elem:
			if (element.textContent.toLowerCase().removeAccents().indexOf(term.toLowerCase().removeAccents()) > -1) {
				closest_label.removeAttribute('hidden');
			} else {
				closest_label.setAttribute('hidden', '');
			}
		}
	});

	Daizy.onLive('.maximize-section', 'click', function(e){
		// stop the immediate action of this event
		e.preventDefault();
		// prevent the event fro bubbling up
		e.stopPropagation();

		var clicked_element = this;
		var closest_label = clicked_element.closest('label') || document.createElement('label');
		var closest_label_text = closest_label.textContent.trim();

		var label_prev_input = closest_label.previousElementSibling;

		if (!clicked_element.getAttribute('data-maximized')) {

			//
			// ha maximalizálni kell a megfelelő collapse szekciót:
			//

			label_prev_input.maximized_before_maximize = label_prev_input.checked == true;
			// ha nincs nyitva a megfelelő collapse szekció, akkor be kell kattintani:
			if (!label_prev_input.checked) {
				label_prev_input.setAttribute('checked', 'checked');
				label_prev_input.checked = true;
			}

			start_header_search(closest_label_text);
			clicked_element.setAttribute('data-maximized', 'true');
			document.body.setAttribute('data-collapse-section-maximized', '');
		} else {

			//
			// ha vissza kell állítani a megfelelő collapse szekciót:
			//

			start_header_search('');
			clicked_element.removeAttribute('data-maximized');
			document.body.removeAttribute('data-collapse-section-maximized');
			// Ha nem volt a maximalizálás előtt megnyitva a collapse szekció,
			// akkor visszaállítás után sem kell nyitva lennie:
			if (!label_prev_input.maximized_before_maximize) {
				label_prev_input.removeAttribute('checked');
				label_prev_input.checked = false;
			}
		}

		return false;
	}, document.querySelector('main .collapse'));

}).call(this, window, window.document);
// =============================================================================
