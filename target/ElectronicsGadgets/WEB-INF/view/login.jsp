<!DOCTYPE html>  
<html lang="en">  
 <head>  
   <title>Login Page</title>  
      <meta charset="utf-8">
  	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="bootstrap.min.css">  
	  <style type="text/css">
        <title> <img src ="resources/images/title_icon.jpg"> </img>Online Shopping 
		@ Electronic Gadget Store </title>
	  </style>
 </head>
 <body>
	 <!-- Begin Page Content -->
     <div class="text-center" style="padding:50px 0">
     
     <div id="container">
     	<form action="login_process.php" method="post">
        	<label for="loginmsg" style=color:hsla(0,100%,50%,0.5) font-family:Arial Black></label>
                    <label for="username"><b><b>Username:</b></b></label>
                    <input type="text" id="username" name="username">
                    <label for="password"><b><b>Password:</b></b></label>
                    <input type="password" id="password" name="password">
                    <div id="lower">
                        <input type="checkbox"><label class="check" for="checkbox"><b>Keep me logged in</b></label>
						<input type="submit" value="Login">
                    </div><!--/ lower-->
                </form>
            </div><!--/ container-->
            </div>
            <!-- End Page Content -->
			<script src="bootstrap.min.js"></script>
	  </body>
        </html>