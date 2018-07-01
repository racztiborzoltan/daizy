// =============================================================================
// DASHBOARD
//
(function($){

	var $container = $('.container.dashboard');
	if ($container.lenght === 0) {
		return;
	}

	var $dashboard = $container;

	var $header = $dashboard.find('header');

	var $navbar = $header.find('.admin-navbar');


	var $module_list = $dashboard.find('.admin-modules');
	var $module_list_items = $module_list.find('.admin-module');

	var $admin_module_search = $navbar.find('input#admin_module_search');
	$admin_module_search.on('keyup', function(){
		if (typeof this.prev_value == 'undefined') {
			this.prev_value = null;
		}
		if (this.prev_value === this.value) {
			return;
		}
		this.prev_value = this.value;

		var term = this.value.toLowerCase().removeAccents();
		$module_list_items.each(function(){
			var module_name_node = this.querySelector('.admin-module-header .module-name');
			var module_name = module_name_node ? module_name_node.textContent : '';
			if (term == '' || (module_name_node > '' && module_name.toLowerCase().removeAccents().match(term) != null)) {
				this.removeAttribute('hidden');
			} else {
				this.setAttribute('hidden', '');
			}
		});
	});


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
})(jQuery || null);
// =============================================================================
