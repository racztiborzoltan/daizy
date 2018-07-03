(function(window, document){

	function onDomReady(callback) {
		//
		// original: https://plainjs.com/javascript/events/running-code-when-the-document-is-ready-15/
		//
		// in case the document is already rendered
		if (document.readyState!='loading') callback();
		// modern browsers
		else if (document.addEventListener) document.addEventListener('DOMContentLoaded', callback);
		// IE <= 8
		else document.attachEvent('onreadystatechange', function(){
			if (document.readyState=='complete') callback();
		});
	}

	function onWindowLoad(callback) {
		window.addEventListener('load', callback)
	}

	/**
	 * Egy DOM elem CSS transition művelet vége eseményére lehet eseménykezelőt
	 * felcsatolni!
	 */
	function onTransitionEnd(element, callback) {

		// Function from David Walsh: http://davidwalsh.name/css-animation-callback
		function whichTransitionEvent(){
			var t,
			el = document.createElement("fakeelement");

			var transitions = {
					"transition"      : "transitionend",
					"OTransition"     : "oTransitionEnd",
					"MozTransition"   : "transitionend",
					"WebkitTransition": "webkitTransitionEnd"
			}

			for (t in transitions){
				if (el.style[t] !== undefined){
					return transitions[t];
				}
			}
		}

		var transitionEvent = whichTransitionEvent();

		element.addEventListener(transitionEvent, function(e) {
			// remove this handler
			e.target.removeEventListener(e.type, arguments.callee);
			callback.apply(this, arguments);
		});
	}

	/**
	 * DOM elemhez esemény csatolása megadott számú végrehajtási számmal
	 *
	 * @param Element element dom elem
	 * @param string event esemény neve
	 * @param integer times hányszor kell lefutnia az eseménynek
	 * @param callback
	 */
	function onTimes(element, event, times, callback) {
		var times_counter = 0;
		element.addEventListener(event, function (e) {
			times_counter = times_counter + 1;
			if (times_counter >= times) {
				e.target.removeEventListener(e.type, arguments.callee);
			}
			callback.apply(this, arguments);
		});
	}

	/**
	 * DOM elemhez esemény csatolása, ami csak egyszer fut majd le
	 *
	 * @param Element element dom elem
	 * @param string event esemény neve
	 * @param callback
	 */
	function onOnce(element, event, callback) {
		onTimes(element, event, 1, callback);
	}

	// helper for enabling IE 8 event bindings
	// original source: https://plainjs.com/javascript/events/live-binding-event-handlers-14/
	function addEvent(el, type, handler) {
	    if (el.attachEvent) el.attachEvent('on'+type, handler); else el.addEventListener(type, handler);
	}

	// live binding helper using matchesSelector
	// original source: https://plainjs.com/javascript/events/live-binding-event-handlers-14/
	function onLive(selector, event, callback, context) {
	    addEvent(context || document, event, function(e) {
	        var found, el = e.target || e.srcElement;
	        while (el && el.matches && el !== context && !(found = el.matches(selector))) el = el.parentElement;
	        if (found) callback.call(el, e);
	    });
	}

	// original source: https://plainjs.com/javascript/events/trigger-an-event-11/
	function triggerEvent(el, type){
		if ('createEvent' in document) {
			// modern browsers, IE9+
			var e = document.createEvent('HTMLEvents');
			e.initEvent(type, false, true);
			el.dispatchEvent(e);
		} else {
			// IE 8
			var e = document.createEventObject();
			e.eventType = type;
			el.fireEvent('on'+e.eventType, e);
		}
	}

	onWindowLoad(function(event){
		//
		// Remove page loader:
		//
		var page_loader = document.querySelector('body > .page-loader');
		if (!page_loader) {
			return;
		}
		onTransitionEnd(page_loader, function(){
			this.remove();
		});
		page_loader.classList.add('animation-fade-out');
		//		page_loader ? page_loader.remove() : null;
	});

	/**
	 * Egy keresés indítása a fejlécben lévő keresőmezővel
	 */
	function start_header_search(term)
	{
		search_input.value = term;
		triggerEvent(search_input, 'keyup');
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
			if (element.textContent.toLowerCase().indexOf(term.toLowerCase()) > -1) {
				closest_label.removeAttribute('hidden');
			} else {
				closest_label.setAttribute('hidden', '');
			}
		}
	});

	onLive('.maximize-section', 'click', function(e){
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

})(window, window.document);