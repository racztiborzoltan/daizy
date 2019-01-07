'use strict';
// =============================================================================
// Demo JavaScripts for Dashboard
//
(function(window, document, $){

	//
	// init html 5 test page links
	//
	$('#html5-test-page-container a[href^="#"]').each(function(){
		var link = this;
		var href_attr = link.getAttribute('href');
		if (href_attr == '#top') {
			href_attr = '#html5-test-page-container';
		}
		link.href = window.location.href.replace(window.location.hash, '') + href_attr;
	});

}).call(this, window, window.document, jQuery);
// =============================================================================
