<?php
/**
 * @var \Daizy\Template $this
 */
$content = $this->getVariable('content', 'content/404.php');

$feather_icons_dir = realpath(__DIR__.'/../assets/daizy/feather-4.7.3/icons');
?>
<!DOCTYPE html>
<html lang="hu">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">


	<title>Daizy Minimalistic Admin Template</title>
	<link rel="stylesheet" href="assets/daizy//mini.css-3.0.0/dist/mini-default.min.css">
	<link rel="stylesheet" href="assets/daizy/mini-css-plus.css">
	<link rel="stylesheet" href="assets/daizy/daizy.css">
</head>
<body class="container">
    <div class="page-wrapper col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
    	<div class="page-loader">
    		<div class="spinner primary"></div>
    	</div>

        <header>
            <form class="search" onsubmit="return false;">
                <input type="search" placeholder="Search..."/>
            </form>

            <label for="drawer-control" class="drawer-toggle"></label>

            <input type="checkbox" id="drawer-control" class="drawer">
            <div>
                <label for="drawer-control" class="drawer-close"></label>
                <a href="" class="button" title="Main page">
                	<span class="icon-home"></span>
                	<span class="caption">Main page</span>
                </a>
                <span class="button language-switcher">
                	<span class="caption">
                		<span class="icon-settings"></span>
                		Language:
                	</span>
                    <select title="Change language...">
                    	<option value="hu">hu</option>
                    	<option value="en">en</option>
                    	<option value="de">de</option>
                    </select>
                </span>
                <a href="" class="button" title="Display help">
                	<span class="icon-help"></span>
                	<span class="caption">Help</span>
                </a>
                <a href="" class="button logout" title="Logout">
                	<span class="icon-link"></span>
                	<span class="caption">Logout</span>
                </a>
            </div>
        </header>

		<main>
            <div class="collapse">
                <input type="checkbox" id="collapse-section-dashboard" aria-hidden="true">
                <label for="collapse-section-dashboard" aria-hidden="true">
                	<span class="caption">Dashboard</span>
                	<a href="#" class="icon-svg float-right maximize-section">
                		<?php echo file_get_contents($feather_icons_dir.'/maximize-2.svg')?>
                	</a>
                </label>
                <div>
                	<p>This is the first section of the collapse</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu non sodales neque sodales ut etiam sit amet nisl. Ullamcorper sit amet risus nullam eget. Nibh tortor id aliquet lectus proin. Eget nunc scelerisque viverra mauris in aliquam sem. Nisi lacus sed viverra tellus in hac habitasse platea. Pellentesque nec nam aliquam sem et tortor consequat id. Eu consequat ac felis donec et odio pellentesque diam. Urna porttitor rhoncus dolor purus non enim. Nec ultrices dui sapien eget.</p>
                    <p>Parturient montes nascetur ridiculus mus. Sem et tortor consequat id porta nibh venenatis cras. Tristique senectus et netus et. In eu mi bibendum neque egestas congue. Curabitur vitae nunc sed velit dignissim sodales. Amet tellus cras adipiscing enim eu turpis egestas pretium. Vitae aliquet nec ullamcorper sit amet risus. Auctor augue mauris augue neque gravida in fermentum et. Amet porttitor eget dolor morbi. Tincidunt augue interdum velit euismod in pellentesque massa placerat duis.</p>
                    <p>Vel orci porta non pulvinar. Nec dui nunc mattis enim ut tellus elementum sagittis. Suspendisse interdum consectetur libero id faucibus. In metus vulputate eu scelerisque felis imperdiet. Vitae semper quis lectus nulla at. Volutpat commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend. Pellentesque massa placerat duis ultricies lacus sed turpis tincidunt. Elementum eu facilisis sed odio morbi quis commodo odio. Accumsan in nisl nisi scelerisque eu ultrices. Pellentesque habitant morbi tristique senectus et netus et malesuada. At consectetur lorem donec massa sapien faucibus et molestie. Pellentesque habitant morbi tristique senectus. Venenatis tellus in metus vulputate eu scelerisque felis imperdiet. Nisi scelerisque eu ultrices vitae auctor eu augue ut lectus. Ultricies lacus sed turpis tincidunt id aliquet. Tempor commodo ullamcorper a lacus vestibulum.</p>
                    <p>Adipiscing bibendum est ultricies integer quis auctor elit sed. Eu augue ut lectus arcu bibendum at varius vel pharetra. Non tellus orci ac auctor augue mauris augue. Amet tellus cras adipiscing enim. Ultricies integer quis auctor elit sed vulputate mi. Non enim praesent elementum facilisis leo vel fringilla est ullamcorper. Vestibulum morbi blandit cursus risus at ultrices mi tempus imperdiet. Pharetra vel turpis nunc eget lorem dolor sed. Sit amet dictum sit amet justo donec enim diam vulputate. Nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit. Arcu cursus euismod quis viverra nibh. Sem fringilla ut morbi tincidunt augue interdum velit. At in tellus integer feugiat scelerisque varius morbi. Dignissim sodales ut eu sem. Urna cursus eget nunc scelerisque viverra mauris in. Facilisis mauris sit amet massa vitae tortor condimentum lacinia quis. Vitae congue eu consequat ac. A erat nam at lectus urna duis. Sem viverra aliquet eget sit amet tellus. Faucibus vitae aliquet nec ullamcorper.</p>
                    <p>Leo urna molestie at elementum eu facilisis sed odio. Eget mi proin sed libero enim. Condimentum mattis pellentesque id nibh tortor id aliquet lectus proin. Turpis egestas maecenas pharetra convallis posuere morbi leo urna molestie. Dolor sit amet consectetur adipiscing elit. Vitae turpis massa sed elementum. Quis vel eros donec ac odio tempor orci dapibus. Nunc sed velit dignissim sodales ut eu sem integer. Ante in nibh mauris cursus mattis. Tellus rutrum tellus pellentesque eu tincidunt tortor aliquam nulla.</p>
                </div>

                <input type="checkbox" id="collapse-section-tables" aria-hidden="true">
                <label for="collapse-section-tables" aria-hidden="true">
                	<span class="caption">Tables</span>
                	<a href="#" class="icon-svg float-right maximize-section">
                		<?php echo file_get_contents($feather_icons_dir.'/maximize-2.svg')?>
                	</a>
                </label>
                <div>
                    <table>
                      <caption>People</caption>
                      <thead>
                        <tr>
                          <th>Name</th>
                          <th>Surname</th>
                          <th>Alias</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td data-label="Name">Chad</td>
                          <td data-label="Surname">Wilberts</td>
                          <td data-label="Alias">MrOne</td>
                        </tr>
                        <tr>
                          <td data-label="Name">Adam</td>
                          <td data-label="Surname">Smith</td>
                          <td data-label="Alias">TheSmith</td>
                        </tr>
                        <tr>
                          <td data-label="Name">Sophia</td>
                          <td data-label="Surname">Canderson</td>
                          <td data-label="Alias">Candee</td>
                        </tr>
                      </tbody>
                    </table>

                    <table class="horizontal">
                      <caption>People</caption>
                      <thead>
                        <tr>
                          <th>Name</th>
                          <th>Surname</th>
                          <th>Alias</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td data-label="Name">Chad</td>
                          <td data-label="Surname">Wilberts</td>
                          <td data-label="Alias">MrOne</td>
                        </tr>
                        <tr>
                          <td data-label="Name">Adam</td>
                          <td data-label="Surname">Smith</td>
                          <td data-label="Alias">TheSmith</td>
                        </tr>
                        <tr>
                          <td data-label="Name">Sophia</td>
                          <td data-label="Surname">Canderson</td>
                          <td data-label="Alias">Candee</td>
                        </tr>
                      </tbody>
                    </table>

                    <table class="striped">
                      <caption>People</caption>
                      <thead>
                        <tr>
                          <th>Name</th>
                          <th>Surname</th>
                          <th>Alias</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td data-label="Name">Chad</td>
                          <td data-label="Surname">Wilberts</td>
                          <td data-label="Alias">MrOne</td>
                        </tr>
                        <tr>
                          <td data-label="Name">Adam</td>
                          <td data-label="Surname">Smith</td>
                          <td data-label="Alias">TheSmith</td>
                        </tr>
                        <tr>
                          <td data-label="Name">Sophia</td>
                          <td data-label="Surname">Canderson</td>
                          <td data-label="Alias">Candee</td>
                        </tr>
                      </tbody>
                    </table>

                    <table class="hoverable">
                      <caption>People</caption>
                      <thead>
                        <tr>
                          <th>Name</th>
                          <th>Surname</th>
                          <th>Alias</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td data-label="Name">Chad</td>
                          <td data-label="Surname">Wilberts</td>
                          <td data-label="Alias">MrOne</td>
                        </tr>
                        <tr>
                          <td data-label="Name">Adam</td>
                          <td data-label="Surname">Smith</td>
                          <td data-label="Alias">TheSmith</td>
                        </tr>
                        <tr>
                          <td data-label="Name">Sophia</td>
                          <td data-label="Surname">Canderson</td>
                          <td data-label="Alias">Candee</td>
                        </tr>
                      </tbody>
                    </table>

                    <table>
                      <caption>People</caption>
                      <thead>
                        <tr>
                          <td>Bad idea</td>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th data-label="Bad">Also bad idea</th>
                        </tr>
                      </tbody>
                    </table>
                </div>

                <input type="checkbox" id="collapse-section-forms" aria-hidden="true">
                <label for="collapse-section-forms" aria-hidden="true">
                	<span class="caption">Forms</span>
                	<a href="#" class="icon-svg float-right maximize-section">
                		<?php echo file_get_contents($feather_icons_dir.'/maximize-2.svg')?>
                	</a>
                </label>
                <div>
                	<h3>Simple form</h3>
                    <form>
                      <fieldset>
                        <legend>Simple form</legend>
                        <label for="username_1">Username</label>
                        <input type="text" id="Username_1" placeholder="Username"/>
                        <label for="password_1">Password</label>
                        <input type="password" id="password_1" placeholder="Password"/>
                      </fieldset>
                    </form>

                    <h3>Best practices</h3>
                    <form>
                      <fieldset>
                        <legend>Simple form</legend>
                        <div class="row">
                          <div class="col-sm-12 col-md-6">
                            <label for="username_2">Username</label>
                            <input type="text" id="Username_2" placeholder="Username"/>
                          </div>
                          <div class="col-sm-12 col-md-6">
                            <label for="password_2">Password</label>
                            <input type="password" id="password_2" placeholder="Password"/>
                          </div>
                        </div>
                      </fieldset>
                    </form>
                </div>

            </div>
		</main>

        <footer class="text-center">
        	<tt class="copyright">
        		<small title="<?php echo $copyright_text = '&copy; DaiZy Html Template v0.0.0'?>" class="caption">
            		<?php echo $copyright_text?>
        		</small>
    		</tt>
        </footer>
    </div>
    <div class="scripts" hidden="">
		<script src="assets/daizy/umbrella-2.10.2/umbrella.min.js" type="text/javascript"></script>
		<script src="assets/daizy/daizy.js" type="text/javascript"></script>
    </div>
</body>
</html>