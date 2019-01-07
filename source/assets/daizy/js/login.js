//=============================================================================
//Admin bejelentkezés
//
(function(window, document, jQuery){

	var $authentication_area = $('.authentication-area');

	if ($authentication_area.length === 0) {
		return;
	}

	var $login_area = $authentication_area.find('.login-area');
	var $lost_password_area = $authentication_area.find('.lost-password-area');
	console.log($login_area);

	$login_area.on('show.bs.collapse', function(){
		var lost_password_email_value = $lost_password_area.find(':input.input-email').val();
		if (lost_password_email_value > '') {
			$login_area.find(':input.input-email').val(lost_password_email_value);
		}
		$lost_password_area.collapse('hide');
	});
	$lost_password_area.on('show.bs.collapse', function(){
		var login_email_value = $login_area.find(':input.input-email').val();
		if (login_email_value > '') {
			$lost_password_area.find(':input.input-email').val(login_email_value);
		}
		$login_area.collapse('hide');
	});

//	var LoginPlugin = {};

//	window.Daizy.LoginPlugin = LoginPlugin;

})(window, window.document, jQuery);
//=============================================================================
