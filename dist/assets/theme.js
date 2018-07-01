// =============================================================================
(function($){
	if (!$) {
		window.alert('jQuery is required!');
	}

	this.ZiteBuildCMS = this.ZiteBuildCMS || {};
	this.ZiteBuildCMS.Admin = this.ZiteBuildCMS.Admin || {};

})(jQuery || null);
// =============================================================================


(function($){

	//
	// oldal betöltésekor az oldal töltést jelző loader elrejtése!
	//
	$(document).ready(function(){
		$('.page-loader').hide();
	});
})(jQuery);

