<div class="container login-container h-100">
    <div class="row h-100 align-items-center">
    	<div class="col-md-6 offset-md-3 text-center">
    		<input id="adminLoginUrl" type="hidden" value=""/>
        	<form class="login" method="post">
        		<input name="login" type="hidden" value=""/>
        		<input name="redirect_url" type="hidden" value=""/>
        		<div class="form-group">
        			<input class="form-control text-center" name="email" type="email" autofocus="autofocus" required="required" placeholder="E-mail"/>
        		</div>
        		<div class="form-group">
        			<input class="form-control text-center" name="password" type="password" required="required" placeholder="Password"/>
        		</div>
        		<div class="form-group">
        			<button class="btn btn-primary" type="submit">
        				Login
                  		<i class="material-icons loader animate-spin" hidden="">autorenew</i>
        			</button>
        		</div>
        		<div class="form-group">
                	<?php include __DIR__.'/../language_switcher.php'?>
        		</div>
        	</form>

            <div class="modal fade" id="loginAlertMessageModal" tabindex="-1" role="dialog" aria-labelledby="loginAlertMessageModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <div class="alert-message"></div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                  </div>
                </div>
              </div>
            </div>
    	</div>
    </div>
</div>
