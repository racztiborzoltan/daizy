'use strict';
// =============================================================================
// Demo JavaScripts for Dashboard with jQuery
//
(function(window, document, $){

	Daizy.Dashboard.onMaximizeMenuContent = function(){
		var menu_content_item = this;
		$(menu_content_item).find('.menu-content-container').collapse('show');
	};

	Daizy.Dashboard.onOpenMenuContent = function(){
		var menu_content_item = this;
		$(menu_content_item).find('.menu-content-container').collapse('show');
	};

	Daizy.Dashboard.onCloseMenuContent = function(){
		var menu_content_item = this;
		console.log(menu_content_item);
		$(menu_content_item).find('.menu-content-container').collapse('hide');
	};


}).call(this, window, window.document, jQuery);
// =============================================================================