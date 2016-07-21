<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Bootstrap Example</title>
  <meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		
    	
	    <style type="text/css">
	
</style>
	</head>	
	<body>
			<div class="container-fluid"> 
			<div class="row"> 
				<div class="col-md-12"> 
					<nav class="navbar navbar-default" role="navigation"> 
						<div class="navbar-header"> 
						
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
							</button> <a class="navbar-brand" href="#">Home</a>
						</div> 
						
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"> 
							<ul class="nav navbar-nav"> 
								<li class="dropdown"> 
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Mobiles<strong class="caret"></strong></a>
										<ul class="dropdown-menu"> 
									
											<li>
												<a href="#">Samsung</a>
											</li>
											<li class="divider">
											</li>								
											<li>
												<a href="#">Microsoft</a>
											</li>
											<li class="divider">
											</li>								
											<li>
												<a href="#">Motorola</a>
											</li>	
											<li class="divider">
											</li>
											<li>
												<a href="#">Micromax</a>
											</li>
											<li class="divider">
											</li>								
											<li>
												<a href="#">HTC</a>
											</li>	
										</ul> 
								</li> 
								<li> 
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Computers<strong class="caret"></strong></a>
									
										<ul class="dropdown-menu"> 
											<li>
											
												<a href="#" class="dropdown-toggle" data-toggle="dropdown">Desktops<strong class="caret"></strong></a>
													<ul class="dropdown-menu">
														<li>
															<a href="#">Dell</a>
														</li>
														<li class="divider">
														</li>								
														<li>
															<a href="#">HP</a>
														</li>
														<li class="divider">
														</li>								
														<li>
															<a href="#">Toshiba</a>
														</li>
														<li class="divider">
														</li>								
														<li>
															<a href="#">Compaq</a>
														</li>	
														<li class="divider">
														</li>
														<li>
															<a href="#">Lenovo</a>
														</li>
														<li class="divider">
														</li>
													</ul>
											</li>
											<li class="divider">
											</li>				
											<li>
												<a href="#" class="dropdown-toggle" data-toggle="dropdown">Laptops<strong class="caret"></strong></a>
													<ul class="dropdown-menu">
														<li>
															<a href="#">Dell</a>
														</li>	
														<li class="divider">
														</li>
														<li>
															<a href="#">HP</a>
														</li>	
														<li class="divider">
														</li>
														<li>
															<a href="#">Toshiba</a>
														</li>
														<li class="divider">
														</li>								
														<li>
															<a href="#">Compaq</a>
														</li>
														<li class="divider">
														</li>								
														<li>
															<a href="#">Lenovo</a>
														</li>
														
													</ul>
											</li>
									</ul> 
						</li> 
						<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Home Appliances<strong class="caret"></strong></a>
										<ul class="dropdown-menu">
											<li>
												<a href="#">Irons</a>
											</li>
											<li class="divider">
											</li>								
											<li>
												<a href="#">Induction Cockpots</a>
											</li>
											<li class="divider">
											</li>								
											<li>
												<a href="#">Microwave Oven</a>
											</li>	
											<li class="divider">
											</li>
											<li>
												<a href="#">Fans</a>
											</li>
																			
												
										</ul>
								</li>
					
					<form role="search" class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" placeholder="Search" class="form-control">
                </div>
            </form>
            <ul class="nav navbar-nav navbar-right">
<li><a href="login">Login</a></li>
<li><a href="signup">SignUp</a></li>
</ul>
				</div> 
				
			</nav> 
		</div>
		</div>
			</div>
		
	<!-- Carousel Start -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="pic1.jpg" alt="Mobiles" style="width:640px;height:500px">
	  <div class="carousel-caption">
	  <h3><b>ELECTRONIC GADGET STORE</b></h3>  
        <p><i>A complete for Mobiles</i></p> 
      </div>
	</div>

    <div class="item">
      <img src="pic4.jpg" alt="Comps" style="width:640px;height:500px">
	  <div class="carousel-caption">
	  <h3><b>ELECTRONIC GADGET STORE</b></h3>  
        <p><i>A complete for Laptops</i></p>  
      </div>
    </div>

    <div class="item">
      <img src="desk.jpg" alt="Desktop" style="width:640px;height:500px">
	  <div class="carousel-caption">
	  <h3><b>ELECTRONIC GADGET STORE</b></h3>  
        <p><i>A complete for Desktops</i></p>  
      </div>
    </div>

    <div class="item">
      <img src="pic5.jpg" alt="Appliances" style="width:640px;height:500px">
	  <div class="carousel-caption">
	  <h3><b>ELECTRONIC GADGET STORE</b></h3>  
        <p><i>A complete for Appliances</i></p>  
      </div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<div id="header1">
				<h4><b>Popular Items </b></h4>         
			</div>
			<div class="container">
			<div class="row">
				<div class="col-lg-2">
            <img style=" float:left; display:inline" src="sam_gal_j3.jpg" width="145" height="150" alt="bbc news special" />
            <figcaption>
			<b>Samsung Galaxy J3</b>
        	</figcaption>
        </div>
        <div class="col-lg-2">
            <img style=" float:left; display:inline"  src="sam_gal_j7.jpg" width="145" height="150" alt="bbc news special" />
            <figcaption>
			<b>Samsung Galaxy J7</b>
        	</figcaption>
        </div>
		<div class="col-lg-2">
            <img style=" float:left; display:inline"  src="sam_gal_s6.jpg" width="145" height="150" alt="bbc news special" />
            <figcaption>
			<b>Samsung Galaxy S6</b>
        	</figcaption>
        </div>
		<div class="col-lg-2">
            <img style=" float:left; display:inline"  src="dell_xps.jpg" width="145" height="150" alt="bbc news special" />
            <figcaption>
			<b>Dell XPS</b>
        	</figcaption>
        </div>
		<div class="col-lg-2">
            <img style=" float:left; display:inline"   src="hp_envy.jpg" width="145" height="150" alt="bbc news special" />
            <figcaption>
			<b>HP Envy Notebook</b>
        	</figcaption>
        </div>
		<div class="col-lg-2">
            <img style=" float:left; display:inline"   src="induction.jpg" width="145" height="150" alt="bbc news special" />
            <figcaption>
			<b>Pegion Induction Stove</b>
        	</figcaption>
        </div>
        
    </div>
</div>
	
	</body>
	</html>