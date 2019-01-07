'use strict';
// =============================================================================
// DASHBOARD
//
(function(window, document, Daizy){

	var $menu_content_items = $('.menu-content-item');

	var $header_search_no_results = $('#header_search_no_results');

	var $header_search_form = $('header form.search');
	$header_search_form.on('keyup', 'input', function(){

		var term = this.value.toLowerCase().removeAccents();

		var match_count = 0;

		$menu_content_items.each(function(){
			var $menu_content_item = $(this);
			var menu_caption = $('header .menu-caption',this).text().toLowerCase().removeAccents();

			if (menu_caption.indexOf(term) > -1) {
				//
				// match found:
				//
				$menu_content_item.show();
				match_count++;
			} else {
				//
				// no match found:
				//
				$menu_content_item.hide();
			}

			console.log(menu_caption);
			console.log(term);
		});

		if (match_count > 0) {
			$header_search_no_results.attr('hidden', 'hidden');
		} else {
			$header_search_no_results.removeAttr('hidden');
		}

		console.log('agds');
	});

}).call(this, window, window.document, window.Daizy || null);
