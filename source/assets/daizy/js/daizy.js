// =============================================================================
// Daizy Common JavaScripts
//
(function(window, document){

	// -------------------------------------------------------------------------
	// String.removeAccents method
	//
	if (!String.prototype.removeAccents) {
		String.prototype.removeAccents = function () {
			return removeAccents(this);
		};
	}
	/**
	 * Remove accents from source
	 *
	 * Original source: https://gist.github.com/alisterlf/3490957
	 */
	function removeAccents(strAccents) {
		strAccents = strAccents.split('');
		var strAccentsOut = new Array();
		var strAccentsLen = strAccents.length;
		var accents = 'ÀÁÂÃÄÅàáâãäåÒÓÔÕÕÖØòóôõöøÈÉÊËèéêëðÇçÐÌÍÎÏìíîïÙÚÛÜùúûüÑñŠšŸÿýŽž';
		var accentsOut = "AAAAAAaaaaaaOOOOOOOooooooEEEEeeeeeCcDIIIIiiiiUUUUuuuuNnSsYyyZz";
		for (var y = 0; y < strAccentsLen; y++) {
			if (accents.indexOf(strAccents[y]) != -1) {
				strAccentsOut[y] = accentsOut.substr(accents.indexOf(strAccents[y]), 1);
			} else
				strAccentsOut[y] = strAccents[y];
		}
		strAccentsOut = strAccentsOut.join('');
		return strAccentsOut;
	}
	// -------------------------------------------------------------------------

	// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	return;
	// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

	var Daizy = {};

	Daizy.onDomReady = function(callback) {
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

	Daizy.onWindowLoad = function (callback) {
		window.addEventListener('load', callback)
	}


	/**
	 * Egy DOM elem CSS transition művelet vége eseményére lehet eseménykezelőt
	 * felcsatolni!
	 */
	Daizy.onTransitionEnd = function (element, callback) {

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
	Daizy.onTimes = function (element, event, times, callback) {
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
	Daizy.onOnce = function (element, event, callback) {
		Daizy.onTimes(element, event, 1, callback);
	}


	// helper for enabling IE 8 event bindings
	// original source: https://plainjs.com/javascript/events/live-binding-event-handlers-14/
	Daizy.addEvent = function (el, type, handler) {
		if (el.attachEvent) el.attachEvent('on'+type, handler); else el.addEventListener(type, handler);
	}

	// live binding helper using matchesSelector
	// original source: https://plainjs.com/javascript/events/live-binding-event-handlers-14/
	Daizy.onLive = function (selector, event, callback, context) {
		Daizy.addEvent(context || document, event, function(e) {
			var found, el = e.target || e.srcElement;
			while (el && el.matches && el !== context && !(found = el.matches(selector))) el = el.parentElement;
			if (found) callback.call(el, e);
		});
	}

	// original source: https://plainjs.com/javascript/events/trigger-an-event-11/
	Daizy.triggerEvent = function (el, type){
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

	/**
	 * Hide an element
	 *
	 * @param Element element
	 */
	Daizy.hideElement = function (element){
		element.setAttribute('hidden', '');
	}

	/**
	 * Show an element
	 *
	 * @param Element element
	 */
	Daizy.showElement = function (element){
		element.removeAttribute('hidden');
	}


	/**
	 * Toggling an element (hide or show)
	 *
	 * @param Element element
	 */
	Daizy.toggleElement = function (element){
		element.getAttribute('hidden') === null ? Daizy.hideElement(element) : Daizy.showElement(element);
	}

	window.Daizy = Daizy;
}).call(this, window, window.document);
// =============================================================================

// =============================================================================
// Remove page loader
(function(window, document, $){

	$(window).on('load', function(){
		$('.page-loader').fadeOut(400, function(){
			$(this).remove();
		});
	});

}).call(this, window, window.document, jQuery);
// =============================================================================
