//=============================================================================
//Admin bejelentkezés
//
(function(window, document){

	var LoginPlugin = {};

	var login_area = document.querySelector('.login-area');

	var collapse_divs = login_area.querySelectorAll('.collapse > label + div');

	for (var x = 0; x < collapse_divs.length; x++) {
		Daizy.onTransitionEnd(collapse_divs[x], function(event){
			var toggle_input = this.previousElementSibling.previousElementSibling;
			// A nem látható collapse panel nem számít:
			if (!toggle_input.checked) {
				return;
			}
			var div = this;
			var input = div.querySelector('input[autofocus]') || document.createElement('input');
			input.click();
			input.focus();
		});
	}



	LoginPlugin.login_area = login_area;

	window.Daizy.LoginPlugin = LoginPlugin;

})(window, window.document);
//=============================================================================

(function($){

	return;

	var $form = $('form.login');
	if ($form.length === 0) {
		return;
	}

	document.body.classList.add('login');

	var $modal = $('#loginAlertMessageModal');
	$modal.on('hidden.bs.modal', function(){
		$form.find(':input:visible:first').focus();
	});
	if ($modal.attr('data-show') == 'true') {
		$modal.modal('show');
	}

	var $loader = $form.find('.loader');

	var logged_in_xhr = null;

	var check_interval = null;

	function checkLoggedIn()
	{
		if (logged_in_xhr !== null) {
			logged_in_xhr.abort();
		}
		var xhr_url = new URL($('#adminLoginUrl').val());
		xhr_url.searchParams.set('checkLoggedIn', '');
		logged_in_xhr = $.getJSON(xhr_url, function(json){
			if (json.loggedIn && json.loggedIn === true) {
				window.location.reload();
			}
		});
	}

	$form.submit(function(){

		// Az aktuális URL be lesz állítva átirányítási URL-nek:
		$form.find(':input[name="redirect_url"]').val(window.location.toString());

		$modal.modal('hide');
		$modal.find('.alert-message').text('');

		$loader.removeAttr('hidden');

		var xhr = $.ajax({
			type: $form.prop('method'),
			url: $form.prop('action'),
			data: $form.serialize(),
			dataType: 'json'
		});
		xhr.done(function(json){
			if (json.message) {
				$modal.find('.alert-message').text(json.message);
				$modal.modal('show');
			}
			// Sikeres elküldés esetén percentként elmegy egy kérés, ami a sikeres
			// bejelentkezettséget fogja ellenőrizni:
			if (check_interval != null) {
				window.clearInterval(check_interval);
			}
			check_interval = window.setInterval(checkLoggedIn, 10000);
		});
		xhr.always(function(json){
			$loader.attr('hidden', '');
		});

		return false;
	});

})(window.jQuery || null);
