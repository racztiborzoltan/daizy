'use strict';
// =============================================================================
// DASHBOARD
//
(function(window, document, Daizy){

	var $main_container = $('main.container');

	var $menu_content_items = $('.menu-content-item');

	var $header_search_no_results = $('#header_search_no_results');

	var $header_search_form = $('header form.search');
	var $header_search_input = $header_search_form.find('input');
	//
	// searching in header input
	//
	$header_search_form.on('change keyup', 'input', function(){

		if (typeof this.prev_value == 'undefined') {
			this.prev_value = null;
		}
		if (this.prev_value === this.value) {
			return;
		}
		this.prev_value = this.value;

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
		});

		if (match_count > 0) {
			$header_search_no_results.attr('hidden', 'hidden');
		} else {
			$header_search_no_results.removeAttr('hidden');
		}
	});

	//
	// pin menu section
	//
	$main_container.on('click', '.pin-menu-content-section', function(event){
		event.preventDefault();

		var $menu_content_container = $(this).closest('.menu-content-item');
		var $unpin_button = $menu_content_container.find('.unpin-menu-content-section');
		var $pin_button = $(this);

		var menu_caption = $(this).closest('.menu-content-header').find('.menu-caption').text();

		$header_search_input.val(menu_caption).change();

		$unpin_button.removeAttr('hidden');
		$pin_button.attr('hidden', '');
	});

	//
	// unpin menu section
	//
	$main_container.on('click', '.unpin-menu-content-section', function(event){
		event.preventDefault();

		var $menu_content_container = $(this).closest('.menu-content-item');
		var $unpin_button = $(this);
		var $pin_button = $menu_content_container.find('.pin-menu-content-section');

		$header_search_input.val('').change();

		$pin_button.removeAttr('hidden');
		$unpin_button.attr('hidden', '');
	});

}).call(this, window, window.document, window.Daizy || null);
