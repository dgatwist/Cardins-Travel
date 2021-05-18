<?php 
session_start();

include 'functions.php';

if(empty($_SESSION['currency']) || $_SESSION['currency']=="USD")
{
	$_SESSION['currency']="USD";
	$_SESSION['c_from']= "EUR";
	$_SESSION['c_to']= "USD";
	$_SESSION['c_symbol']= "$";
}
else if($_SESSION['currency']=="EUR")
{
	$_SESSION['c_from']= "USD";
	$_SESSION['c_to']= "EUR";
    $_SESSION['c_symbol']= "€";
}	

?>
<!DOCTYPE HTML>
<html>
	<head>
		
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Cardin Travel and Tours</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />

  <!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link rel="stylesheet" href="Admin/dist/css/public.css" />

	<link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">

	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	
	<!-- Date Picker -->
	<link rel="stylesheet" href="css/bootstrap-datepicker.css">
	<!-- Flaticons  -->
	<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
        <script data-ad-client="ca-pub-5380283051139290" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
	</head>
	<body>

<?php include 'Admin/login.php'; ?>

	<div class="colorlib-loader"></div>

	<div id="page">

<?php include 'nav.php'; ?>

		<aside id="colorlib-hero">
			<div class="flexslider">
				<ul class="slides">
			   	<li style="background-image: url(img/Burundi3.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container-fluid">
			   			<div class="row">
				   			<div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
				   				<div class="slider-text-inner text-center">
				   					<h2>1 Day Tour</h2>
				   					<h1>Amazing Bujumbura Tour</h1>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			   	<li style="background-image: url(img/Dubai5.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container-fluid">
			   			<div class="row">
				   			<div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
				   				<div class="slider-text-inner text-center">
				   					<h2>7 Days in Dubai</h2>
				   					<h1>Breath-Taking Desert Views</h1>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			   	<li style="background-image: url(img/Rwanda2.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container-fluids">
			   			<div class="row">
				   			<div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
				   				<div class="slider-text-inner text-center">
				   					<h2>1 Day Tour </h2>
				   					<h1>Explore Kigali</h1>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>	   	
			  	</ul>
		  	</div>
		</aside>
		<div id="colorlib-reservation">
			<!-- <div class="container"> -->
				<div class="row">
					<div class="search-wrap">
						<div class="container">
							<ul class="nav nav-tabs">
								<li class="active"><a data-toggle="tab" href="#hotel"><i class="flaticon-resort"></i> Hotel</a></li>
								<li><a data-toggle="tab" href="#car"><i class="flaticon-plane"></i> Tour</a></li>
							</ul>
						</div>
						<div class="tab-content">
				         <div id="hotel" class="tab-pane fade in active">
						      <form method="GET" class="colorlib-form" action="search_hotel.php">
				              	<div class="row">
				              	 <div class="col-md-2">
				              	 	<div class="booknow">
				              	 		<h2>Book Now</h2>
					              	 	<span>Best Price Online</span>
				              	 	</div>
				              	 </div>
				                <div class="col-md-8">
				              	 <div class="form-group">
				                    <label for="date">Location:</label>
				                    <div class="form-field">
				                      <input type="text" id="hotel_location" class="hotel_location tt-query form-control" autocomplete="off" spellcheck="false" placeholder="Search Location" name="hotel_location">
				                    </div>
				                  </div>
				                </div>
				                <div class="col-md-2">
				                  <input type="submit" name="submit" id="submit" value="Find Hotel" class="btn btn-primary btn-block">
				                </div>
				              </div>
				            </form>
						   </div>

				         <div id="car" class="tab-pane fade">
						      <form method="GET" class="colorlib-form" action="search_tour.php">
				              	<div class="row">
				              	 <div class="col-md-2">
				              	 	<div class="booknow">
				              	 		<h2>Book Now</h2>
					              	 	<span>Best Price Online</span>
				              	 	</div>
				              	 </div>
				                <div class="col-md-8">
				              	 <div class="form-group">
				                    <label for="date">Location:</label>
				                    <div class="form-field">
				                      <input type="text" id="location" class="form-control" placeholder="Search Location" name="tour_location">
				                    </div>
				                  </div>
				                </div>
				                <div class="col-md-2">
				                  <input type="submit" name="submit" id="submit" value="Find Packages" class="btn btn-primary btn-block">
				                </div>
				              </div>
				            </form>
						   </div>

			         </div>
					</div>
				</div>
			</div>
		</div>

		<div id="colorlib-services">
			<div class="container">
				<div class="row no-gutters">
					<div class="col-md-3 animate-box text-center aside-stretch">
						<div class="services">
							<span class="icon">
								<i class="flaticon-around"></i>
							</span>
							<h3>Amazing Travel</h3>
							<p>With Cardins Travel and Tours we have been arranging trips for visitors to our beautiful country Burundi and World’s Most beautiful destinations for long time. If you want to see the mountain Chimpanzes or maybe the hippopotames and giraffes in the Rusizi park we can help. We can also arrange coffee plantation tours, a private driver, hotels, bird watching, photographic expeditions, romantic getaways or anything else that you need as well as catering for small or large groups. Contact us today for more information and prices.</p>
						</div>
					</div>
					<div class="col-md-3 animate-box text-center">
						<div class="services">
							<span class="icon">
								<i class="flaticon-resort"></i>
							</span>
							<h3>Luxurious Hotels</h3>
							<p>Book Luxury Hotels Online with Cardins Travel and Tours with No reservation costs, Great rates with our 24/7 Customer Service, Secure Booking and Read Real Guest Reviews.

Cardins Travel and Tours offers Best Price Guarantee. Get Instant Confirmation. We speak your language. Types: Hotels, Apartments, Villas.</p>
						</div>
					</div>
					<div class="col-md-3 animate-box text-center">
						<div class="services">
							<span class="icon">
								<i class="flaticon-car"></i>
							</span>
							<h3>Book Your Trip</h3>
							<p>Tell us more about your dream vacation! we'll lay out the plans for you.</p>
						</div>
					</div>
					<div class="col-md-3 animate-box text-center">
						<div class="services">
							<span class="icon">
								<i class="flaticon-postcard"></i>
							</span>
							<h3>Nice Support</h3>
							<p>We know that when it comes to support, one size doesn't fit all. That's why we offer flexible SLAs that let you choose the exact level of support that provide the shortest response times and longest coverage hours.

We are obsessed with keeping our Customers happy. Our global support group always get the fastest possible response. An intelligent 24/7 Contact Center puts you in contact with the support expert most qualified to handle your request, regardless of your location.

Our Support services help you get maximum value from Cardins Travel and Tours Especially with Consistent Customer experience with 24/7 availability option.</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="colorlib-tour colorlib-light-grey">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3 text-center colorlib-heading animate-box">
						<h2>Popular Destination</h2>
						<p>We travel not to escape life, but for life not to escape us.</p>
					</div>
				</div>
			</div>
			<div class="tour-wrap">

			                <?php  
							   require 'config.php';

			                    $statement="select * from tours where deletedAt is null order by tour_id asc LIMIT 8";
			                    $res_data = mysqli_query($conn, $statement);

			                    if (mysqli_num_rows($res_data) > 0)
			                    {
			                        while($row = mysqli_fetch_assoc($res_data))
			                        {
										if($_SESSION['currency']=="USD")
										{
											$price= $row['price'];
										}
										else if($_SESSION['currency']=="EUR")
										{
											$price= convertCurrency($row['price'], $_SESSION['c_from'], $_SESSION['c_to']);
										}

										echo "<a href=\"tour-place.php?tour_id=$row[tour_id]\" class=\"tour-entry animate-box\">";
											echo "<div class=\"tour-img\" style=\"background-image: url(Admin/$row[image]);\">";
											echo "</div>";
											echo "<span class=\"desc\">";
												echo "<h2>$row[title]</h2>";
												echo "<span class=\"city\">$row[location]</span>";
												//echo "<span class=\"price\">$$row[price]</span>";
												echo "<span class=\"price\">$_SESSION[c_symbol]$price</span>";
											echo "</span>";
										echo "</a>";
							        }
			                    }
			                    else
			                    {
			                        echo "Nothing found in db";
			                    }
			                    //mysqli_close($conn);
			                ?>

			</div>
		</div>


		<div id="colorlib-blog">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3 text-center colorlib-heading animate-box">
						<h2>Recent Blog</h2>
						<p> I hope you enjoy the variety of travel stories, photography, and videos these travel bloggers publish from around the world!</p>
					</div>
				</div>
				<div class="blog-flex">
					<div class="f-entry-img" style="background-image: url(img/Dubai4.jpg);">
					</div>
					<div class="blog-entry aside-stretch-right">
						<div class="row">
			                <?php  
							   require 'config.php';

			                    $statement="select * from posts where deletedAt is null order by addedOn asc LIMIT 3";
			                    $res_data = mysqli_query($conn, $statement);

			                    if (mysqli_num_rows($res_data) > 0)
			                    {
			                        while($row = mysqli_fetch_assoc($res_data))
			                        {
			                      		$cat_title_query= mysqli_query($conn, "SELECT title from categories WHERE cat_id= $row[cat_id]");
			                     		$cat_title= mysqli_fetch_assoc($cat_title_query);
			                     		$title= $cat_title['title'];

			                     		$timeStamp = $row['addedOn'];
										$timeStamp = date( "m/d/Y", strtotime($timeStamp));

										echo "<div class=\"col-md-12 animate-box\">";
											echo "<a href=\"post-view.php?post_id=$row[post_id]\" class=\"blog-post\">";
											 echo "<span class=\"img\" style=\"background-image: url(Admin/$row[image]);\"></span>";
												echo "<div class=\"desc\">";
													echo "<span class=\"date\">$timeStamp</span>";
													echo "<h3>$row[title]</h3>";
													echo "<span class=\"cat\">$title</span>";
												echo "</div>";
											echo "</a>";
										echo "</div>";
							        }
			                    }
			                    else
			                    {
			                        echo "Nothing found in db";
			                    }
			                    //mysqli_close($conn);
			                ?>

						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="colorlib-intro" class="intro-img" style="background-image: url(images/cover-img-20.jpg); background-position: center !important;" data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3 text-center animate-box">
						<div class="intro-desc">
							<div class="text-salebox">
								<div class="text-lefts">
									<div class="sale-box">
										<div class="sale-box-top">
											<h2 class="number">30</h2>
											<span class="sup-1">%</span>
											<span class="sup-2">Off</span>
										</div>
										<h2 class="text-sale">Sale</h2>
									</div>
								</div>
								<div class="text-rights">
									<h3 class="title">On Burundi Trips!</h3>
									<p>This tour leads to magic birds watching heaven and admiring the beautifulness of Burundi.</p>
									<p><a href="tour-place.php?tour_id=1" class="btn btn-primary">Book Now</a></p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="colorlib-hotel">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3 text-center colorlib-heading animate-box">
						<h2>Recommended Hotels</h2>
						<p></p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 animate-box">
						<div class="owl-carousel">
							<?php  

			                    $statement_hotel="select * from hotels where deletedAt is null order by hotel_id asc LIMIT 5";
			                    $res_data_hotel = mysqli_query($conn, $statement_hotel);

			                    if (mysqli_num_rows($res_data_hotel) > 0)
			                    {
			                        while($row = mysqli_fetch_assoc($res_data_hotel))
			                        {
		                     			$min_price_query= mysqli_query($conn, "SELECT min(price) from room_type WHERE hotel_id= $row[hotel_id]");
			                     		$min_price= mysqli_fetch_assoc($min_price_query);
			                     		$price_min= $min_price['min(price)'];

										if($_SESSION['currency']=="USD")
										{
											$price= $price_min;
										}
										else if($_SESSION['currency']=="EUR")
										{
											$price= convertCurrency($price_min, $_SESSION['c_from'], $_SESSION['c_to']);
										}			                     		

										echo "<div class=\"item\">";
											echo "<div class=\"hotel-entry\">";
												echo "<a href=\"hotel-room.php?hotel_id=$row[hotel_id]\" class=\"hotel-img\" style=\"background-image: url(Admin/$row[image]);\">";
													echo "<p class=\"price\"><span>$_SESSION[c_symbol]$price</span><small> /night</small></p>";
												echo "</a>";
												echo "<div class=\"desc\">";
													echo "<h3><a href=\"hotel-room.php?hotel_id=$row[hotel_id]\">$row[title]</a></h3>";
													echo "<span class=\"place\">$row[location]</span>";
													echo "<p>$row[hotel_desc]</p>";
												echo "</div>";
											echo "</div>";
										echo "</div>";
							        }
			                    }
			                    else
			                    {
			                        echo "Nothing found in db";
			                    }
			                    mysqli_close($conn);
			                ?>
						</div>
					</div>
				</div>
			</div>
		</div> 

	
<?php include 'subscribe.php'; ?>

<?php include 'footer.php'; ?>

	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script src="js/bootstrap-datepicker.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>


<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/606c9d0b067c2605c0bfce34/1f2k4b0ro';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->

	</body>
</html>
