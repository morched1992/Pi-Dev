<!DOCTYPE html>
<html lang="en">
<head>
  	<title>JetSetMag - Gallerie Photos</title>
  	<meta charset="utf-8">
    <meta name="description" content="Your description">
    <meta name="keywords" content="Your keywords">
    <meta name="author" content="Your name">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/zerogrid.css">
	<link rel="stylesheet" href="css/responsive.css">
	<script src="js/css3-mediaqueries.js"></script>
    <script src="js/jquery-1.7.1.min.js"></script>
    <script src="js/superfish.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/tms-0.4.1.js"></script>
    <script src="js/slider.js"></script>
<!--[if lt IE 8]>
   <div style=' clear: both; text-align:center; position: relative;'>
     <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
       <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
    </a>
  </div>
<![endif]-->
<!--[if lt IE 9]>
	<script src="js/html5.js"></script>
	<link rel="stylesheet" href="css/ie.css"> 
<![endif]-->
</head>
<body>
<?php include('Connexion.php');
 if($_GET["idvideo"]!=null)
 	 {
	 $v=$_GET["idvideo"];
	 }
 else $v=1; 
 ?>
<div class="main-bg">
    <!-- Header -->
    <header>
    	<div class="nav-responsive"><div>MENU</div>
			<select onchange="location=this.value">
				<option></option>
				<option value="index.html">Home</option>
				<option value="products.html">Products</option>
				<option value="technology.html">Technology</option>
				<option value="#">--- Maecenas faucibus</option>
				<option value="#">--- Fusce tincidunt</option>
				<option value="#">--- Tempor eros</option>
				<option value="#">--- --- Ut viverra</option>
				<option value="#">--- --- Hendrerit mauris</option>
				<option value="#">--- Mauris ut du</option>
				<option value="pricing.html">Pricing</option>
				<option value="contacts.html">Contacts</option>
			</select>
		</div>
    	<div class="inner">
            
          <nav>
                <ul class="sf-menu">
                	<li><h1 class="logo"><a href="index.html"></a></h1> </li>
                    <li></br><a href="index.html">home</a></li>
                    <li></br><a href="products.html">News</a></li>
                    <li></br>
                    	<a href="#">Culture</a>
                        <ul>
                        	<li></br><a href="cinema.html">Cinema</a></li>
                            <li><a href="#">Théatre</a></li>
                            <li><a href="#">Concert</a></li>
                            
                          
                        </ul>
                    </li>
                     <li class="current"></br>
                    	<a href="#">Galerie</a>
                        <ul>
                        	<li class="current"></br><a href="#">Photo</a></li>
                            <li><a href="#">Videos</a></li>
                           
                            
                          
                        </ul>
                    </li>
                    <li></br><a href="Evenement.php">Evenement</a></li>
                    <li></br><a href="Kids.php">Kids</a></li>
                    <li></br><a href="contacts.html">contacts</a></li>
                </ul>
            </nav>
            <div class="clear"></div>
        </div>
    </header>
    <!-- Content -->
    
    <section id="content">
    <div style="float:right; width:20%; margin-left:30px " >
    <div id="cont_OTYxNjV8NXw1fDR8MXwwMDAwMDB8MnxDQjBFMEV8Y3wx"><div id="spa_OTYxNjV8NXw1fDR8MXwwMDAwMDB8MnxDQjBFMEV8Y3wx"><a id="a_OTYxNjV8NXw1fDR8MXwwMDAwMDB8MnxDQjBFMEV8Y3wx" href="http://www.meteocity.com/tunisie/tunis_v96165/" rel="nofollow" target="_blank" style="color:#EEE;text-decoration:none;">Météo Tunis</a> © meteocity.com</div><script type="text/javascript" src="http://widget.meteocity.com/js/OTYxNjV8NXw1fDR8MXwwMDAwMDB8MnxDQjBFMEV8Y3wx"></script></div></div>
    
    <div class="zerogrid" style="margin-left:10%;">
            <div class="wrapper">
            	<div class="row content-bg">
                	<div class="wrapper" >
                    	<article class="col-2-3">
							<div class="wrap-col">
                        	<h2>Gallerie Photos:</h2>
                            <div class="wrapper p2 hr-border-1">
                            <div align="center"> <br/>
          <?php
		  	 $query = "select * from videos where id_video='".$v."'";
			$cur=mysql_query($query);
 
			while($SelectionPhoto = mysql_fetch_array($cur))
				{  
		  ?>

<?php echo '<video width="480" height="360" controls="controls"> <source src="'.$SelectionPhoto['chemin_acces'].'" type="video/mp4" /></video>' ?>		


				<?php } ?>


   
		</div>
    </fieldset>
                                <dl class="extra-wrap def-list-1">
                                	
                                </dl></div>
                            </div>
                         </article>
                        <article class="col-1-3">
							<div class="wrap-col">
                        	<h2>Les Soirées:</h2>
                            <?php while($SelectionPhoto = mysql_fetch_array($cur2)) { ?>
                            <div class="wrapper hr-border-1">
                            	<span class="dropcap">
                                
                                	
                                 
                 <form method="GET" name="form1" action="gallerieVideo.php">
                  <input type="text" hidden="hidden" name="idvideo" value="<?php echo $SelectionPhoto['id_video'];?>"/> 
                 
                                    
                                    <input type="submit" class="dropcap" value="<?php echo $SelectionPhoto['titre'];?>"/>
                                    <br/>
                                   
                                    </form>
                                </span>
                                
                            
                            </div>
                            <?php }?>
                            </div>
                            <p class="p1 color-1">
                            	<i>
                                	JetSetMag n'est en aucun cas responsable de l'état dans lequel sont les personnes prises en photo. Chaque photo est prise avec l'accord préalable des personnes y figurant.
                             	</i>
                             </p>
                             <p>
                            	<i>       
Toute demande de suppression d'une photo devra être faite par le biai de l'onglet CONTACT, la demande sera traitée dans un délais de 24h. Merci de votre compréhension. 
                                </i>
                            </p>
							</div>
                        </article>
                    </div>
                </div>
            </div>
        </div>
        
    </section>
   
    
    <!-- Footer -->
    <footer><br/><br/>
    	<div class="zerogrid" style="margin-right:180px">
        	<div class="row footer-bg" >
        			
                    <div class="wrapper">
                    <div class="hr-border-2"></div>
                        <div class="col-1-3">
							<div class="wrap-col">
	                        	<div class="copyright">
	                            	&copy; 2012 <strong class="footer-logo">AgroPlus</strong>
	                                <div>
									<a rel="nofollow" href="http://www.templatemonster.com">Website Template</a> by TemplateMonster.com
									<a rel="nofollow" href="http://www.zerotheme.com/432/free-responsive-html5-css3-website-templates.html">Responsive Themes</a> by Zerotheme.com
									</div>
	                            </div>
							</div>
                        </div>
						<div class="col-2-3">
							<div class="col-1-4">
								<div class="wrap-col">
		                        	<h5 class="heading-1">Archives:</h5>
		                            <ul class="footer-list">
		                            	<li><a href="#">October 2012</a></li>
		                                <li><a href="#">September 2012</a></li>
		                                <li><a href="#">August 2012</a></li>
		                                <li><a href="#">July 2012</a></li>
		                            </ul>
								</div>
	                        </div>
	                        <div class="col-1-4">
								<div class="wrap-col">
		                        	<h5 class="heading-1">Links:</h5>
		                            <ul class="footer-list">
		                            	<li><a href="#">Documentation</a></li>
		                                <li><a href="#">Plugins</a></li>
		                                <li><a href="#">Suggest Ideas</a></li>
		                                <li><a href="#">Support Forum</a></li>
		                            </ul>
								</div>
	                        </div>
	                        <div class="col-1-4">
								<div class="wrap-col">
		                        	<h5 class="heading-1">Support:</h5>
		                            <ul class="footer-list">
		                            	<li><a href="#">Special Proposition</a></li>
		                                <li><a href="#">Free Phone</a></li>
		                                <li><a href="#">Solutions</a></li>
		                            </ul>
								</div>
	                        </div>
	                        <div class="col-1-4">
								<div class="wrap-col">
		                        	<ul class="social-list">
		                            	<li><a href="#"><img src="images/social-icon-1.png" alt=""></a></li>
		                                <li><a href="#"><img src="images/social-icon-2.png" alt=""></a></li>
		                                <li><a href="#"><img src="images/social-icon-3.png" alt=""></a></li>
		                            </ul>
								</div>
	                        </div>
							
						</div>
                    </div>
        	</div>
        </div>
    </footer>
</div>
</body>
</html>