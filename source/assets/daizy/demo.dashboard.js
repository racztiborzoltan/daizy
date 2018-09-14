'use strict';
// =============================================================================
// Demo JavaScripts for Dashboard
//
(function(window, document){

	for (let tabs_element of document.querySelectorAll('.daizy-wrapper .tabs')) {
		var tabs = new Daizy.Tabs(tabs_element, {
			'onClick': function(event, tabs){
				tabs.getTabList().forEach(function(element){
					element.classList.remove('active');
				});
				this.classList.add('active');
			},
		});
	}



//	console.error('REIMPLEMENTATION!!!');
//	return;

//	Daizy.Dashboard.onMaximizeMenuContent = function(){
//		var menu_content_item = this;
//		$(menu_content_item).find('.menu-content-container').collapse('show');
//	};
//
//	Daizy.Dashboard.onOpenMenuContent = function(){
//		var menu_content_item = this;
//		$(menu_content_item).find('.menu-content-container').collapse('show');
//	};
//
//	Daizy.Dashboard.onCloseMenuContent = function(){
//		var menu_content_item = this;
//		console.log(menu_content_item);
//		$(menu_content_item).find('.menu-content-container').collapse('hide');
//	};


}).call(this, window, window.document);
// =============================================================================
