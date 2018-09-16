'use strict';
// =============================================================================
// Demo JavaScripts for Dashboard
//
(function(window, document){

	//
	// init html 5 test page links
	//
	(function(){
		var links = document.querySelectorAll('#html5-test-page-container a[href^="#"]');
		for (let link of links) {
			var href_attr = link.getAttribute('href');
			if (href_attr == '#top') {
				href_attr = '#html5-test-page-container';
			}
			link.href = window.location.href.replace(window.location.hash, '') + href_attr;
		}
	})();


	//
	// Init collapses
	//
	Daizy.onLive('[data-collapse-target]', 'click', function(event){
		var target_selector = this.getAttribute('data-collapse-target');
		var collapses = document.querySelectorAll(target_selector);
		collapses.forEach(function(collapse){
			collapse.hasAttribute('hidden') ? collapse.removeAttribute('hidden') : collapse.setAttribute('hidden', 'hidden');
		});
	}, window.document);

//	for (let tabs_element of document.querySelectorAll('.daizy-wrapper .collapse')) {
//		var tabs = new Daizy.Tabs(tabs_element, {
//			'onClick': function(event, tabs){
//				tabs.getTabList().forEach(function(element){
//					element.classList.remove('active');
//				});
//				this.classList.add('active');
//			},
//		});
//	}

	//
	// Init tabs
	//
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


	//==========================================================================
	// Dashboard initialization
	var dashboard = new Daizy.Dashboard();
	dashboard.init();
	//==========================================================================


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
