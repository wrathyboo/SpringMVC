<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html class="no-js" lang="zxx">

<!-- Mirrored from preview.colorlib.com/theme/abcbook/book-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 14 Apr 2023 04:29:45 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Book Shop</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/icon/favicon.png">

<link rel="stylesheet"
	href="<c:url value="resources"/>/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<c:url value="resources"/>/assets/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="<c:url value="resources"/>/assets/css/slicknav.css">
<link rel="stylesheet"
	href="<c:url value="resources"/>/assets/css/animate.min.css">
<link rel="stylesheet"
	href="<c:url value="resources"/>/assets/css/price_rangs.css">
<link rel="stylesheet"
	href="<c:url value="resources"/>/assets/css/magnific-popup.css">
<link rel="stylesheet"
	href="<c:url value="resources"/>/assets/css/fontawesome-all.min.css">
<link rel="stylesheet"
	href="<c:url value="resources"/>/assets/css/themify-icons.css">
<link rel="stylesheet"
	href="<c:url value="resources"/>/assets/css/slick.css">
<link rel="stylesheet"
	href="<c:url value="resources"/>/assets/css/nice-select.css">
<link rel="stylesheet"
	href="<c:url value="resources"/>/assets/css/style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<script nonce="a0733e4b-58f1-4cf0-a836-524a9657cbfa">(function(w,d){!function(f,g,h,i){f[h]=f[h]||{};f[h].executed=[];f.zaraz={deferred:[],listeners:[]};f.zaraz.q=[];f.zaraz._f=function(j){return function(){var k=Array.prototype.slice.call(arguments);f.zaraz.q.push({m:j,a:k})}};for(const l of["track","set","debug"])f.zaraz[l]=f.zaraz._f(l);f.zaraz.init=()=>{var m=g.getElementsByTagName(i)[0],n=g.createElement(i),o=g.getElementsByTagName("title")[0];o&&(f[h].t=g.getElementsByTagName("title")[0].text);f[h].x=Math.random();f[h].w=f.screen.width;f[h].h=f.screen.height;f[h].j=f.innerHeight;f[h].e=f.innerWidth;f[h].l=f.location.href;f[h].r=g.referrer;f[h].k=f.screen.colorDepth;f[h].n=g.characterSet;f[h].o=(new Date).getTimezoneOffset();if(f.dataLayer)for(const s of Object.entries(Object.entries(dataLayer).reduce(((t,u)=>({...t[1],...u[1]})))))zaraz.set(s[0],s[1],{scope:"page"});f[h].q=[];for(;f.zaraz.q.length;){const v=f.zaraz.q.shift();f[h].q.push(v)}n.defer=!0;for(const w of[localStorage,sessionStorage])Object.keys(w||{}).filter((y=>y.startsWith("_zaraz_"))).forEach((x=>{try{f[h]["z_"+x.slice(7)]=JSON.parse(w.getItem(x))}catch{f[h]["z_"+x.slice(7)]=w.getItem(x)}}));n.referrerPolicy="origin";n.src="../../cdn-cgi/zaraz/sd0d9.js?z="+btoa(encodeURIComponent(JSON.stringify(f[h])));m.parentNode.insertBefore(n,m)};["complete","interactive"].includes(g.readyState)?zaraz.init():f.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document);</script>
</head>
<body>
	<style>
* {
	box-sizing: border-box
}

/* Slideshow container */
.slideshow-container {
	max-width: 1000px;
	position: relative;
	margin: auto;
}

/* Hide the images by default */
.mySlides {
	display: none;
}

/* Next & previous buttons */
.prev, .next {
	cursor: pointer;
	position: absolute;
	top: 50%;
	width: auto;
	margin-top: -22px;
	padding: 16px;
	color: white;
	font-weight: bold;
	font-size: 18px;
	transition: 0.6s ease;
	border-radius: 0 3px 3px 0;
	user-select: none;
}

/* Position the "next button" to the right */
.next {
	right: 0;
	border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
	background-color: rgba(0, 0, 0, 0.8);
}

/* Caption text */
.text {
	color: #f2f2f2;
	font-size: 15px;
	padding: 8px 12px;
	position: absolute;
	bottom: 8px;
	width: 100%;
	text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
	color: #f2f2f2;
	font-size: 12px;
	padding: 8px 12px;
	position: absolute;
	top: 0;
}

/* The dots/bullets/indicators */
/* .dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
} */
.active, .dot:hover {
	background-color: #717171;
}

/* Fading animation */
.fade1 {
	animation-name: fade;
	animation-duration: 1.5s;
}

@
keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}
}
</style>
	<header>
		<div class="header-area">
			<div class="main-header ">
				<div class="header-top ">
					<div class="container">
						<div class="row">
							<div class="col-xl-12">
								<div
									class="d-flex justify-content-between align-items-center flex-sm">
									<div class="header-info-left d-flex align-items-center">

										<div class="logo">
											<a href="index-2.html"><img
												src="assets/img/logo/logo.png" alt=""></a>
										</div>

										<form action="#" class="form-box">
											<input type="text" name="Search"
												placeholder="Search book by author or publisher">
											<div class="search-icon">
												<i class="ti-search"></i>
											</div>
										</form>
									</div>
									<div class="header-info-right d-flex align-items-center">
										<ul>
											<li><a href="#">FAQ</a></li>
											<li><a href="#">Track Order</a></li>
											<li class="shopping-card"><a href="cart"><img
													src="assets/img/icon/cart.svg" alt=""></a></li>
											<li><a href="login" class="btn header-btn">Sign in</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="header-bottom  header-sticky">
					<div class="container">
						<div class="row align-items-center">
							<div class="col-xl-12">

								<div class="logo2">
									<a href="index-2.html"><img src="assets/img/logo/logo.png"
										alt=""></a>
								</div>

								<div class="main-menu text-center d-none d-lg-block">
									<nav>
										<ul id="navigation">
											<li><a href="home">Home</a></li>
											<li><a href="categories">Categories</a></li>
											<li><a href="about.html">About</a></li>
											<li><a href="#">Pages</a>
												<ul class="submenu">
													<li><a href="login.html">login</a></li>
													<li><a href="cart.html">Cart</a></li>
													<li><a href="checkout.html">Checkout</a></li>
													<li><a href="book-details.html">book Details</a></li>
													<li><a href="blog_details.html">Blog Details</a></li>
													<li><a href="elements.html">Element</a></li>
												</ul></li>
											<li><a href="blog.html">Blog</a></li>
											<li><a href="contact.html">Contect</a></li>
										</ul>
									</nav>
								</div>
							</div>

							<div class="col-xl-12">
								<div class="mobile_menu d-block d-lg-none"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<main>
		<div class="container" style="max-width: 70%">
			<div style="margin-top: 50px; margin-bottom: 20px">
				<h2>${title }</h2>
			</div>
			<div class="row">
				<div class="col-8" style="">
					<div class="slideshow-container">
						<c:forEach items="${movies }" var="s">
							<div class="mySlides fade1">
								<div class="numbertext"></div>
								<video controls autoplay muted style="width: 100%;">
									<source src="${s }" type="video/webm">
								</video>
								<div class="text"></div>
							</div>
						</c:forEach>
						<!-- Full-width images with number and caption text -->
						<c:forEach items="${screenshots }" var="s">
							<div class="mySlides fade1">
								<div class="numbertext"></div>
								<img src="${s }" style="width: 100%">
								<div class="text"></div>
							</div>
						</c:forEach>


						<!-- Next and previous buttons -->
						<a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a
							class="next" onclick="plusSlides(1)">&#10095;</a>
					</div>
					<div class="row" style="margin-top: 20px">
						<label style="font-size: 30px; text-decoration: solid; margin-bottom: 15px;border-bottom: 1px solid rgba(25, 20, 20, 0.1); width:50%">Description</label>
						<p>${description }</p>
					</div>
				</div>
				<div class="col-4">
					<div class="row">
						<img
							src="https://cdn.akamai.steamstatic.com/steam/apps/${id }/header.jpg?t=1671485009"
							alt="">
					</div>
					<div class="row" style="margin-top: 20px;">
						<div class="col">
							<p style="font-size: 24px">${price }</p>
						</div>
						<div style="padding-left: 10px">

							<c:choose>
								<c:when test="${price == 'Free to play'}">
									<div>
										<div class="row" style="margin-top: 20px;">
											<div class="btn btn-primary" onclick="javascript:location.href='cart'" style="width: 100%;">Install</div>
										</div>
									</div>
								</c:when>
								<c:otherwise>
									<div>
										<div class="row" onclick="javascript:location.href='cart'" style="margin-top: 20px;">
											<div class="btn btn-primary" style="width: 100%;">Buy
												now</div>
										</div>
										<div class="row" style="margin-top: 12px;">
											<div class="btn" onclick="javascript:location.href='cart'"
												style="width: 100%; border: 1px solid rgba(245, 245, 245, 0.6); background-color: #cfcfcf;">Add
												to cart</div>
										</div>
									</div>
								</c:otherwise>
							</c:choose>


							<div class="row"
								style="margin-top: 20px; border-bottom: 1px solid rgba(25, 20, 20, 0.1)">
								<div class="col left-text">ALL REVIEWS</div>
								<div class="col right-text" style="color: #66C0F4">
									${review_score }
									<p style="color: grey">(${total_reviews })</p>
								</div>
							</div>
							<div class="row"
								style="margin-top: 20px; border-bottom: 1px solid rgba(25, 20, 20, 0.1)">
								<div class="col left-text">RELEASH DATE</div>
								<div class="col right-text">${date }</div>
							</div>
							<div class="row"
								style="margin-top: 20px; border-bottom: 1px solid rgba(25, 20, 20, 0.1)">
								<div class="col left-text">PUBLISHER</div>
								<div class="col right-text">
									<c:forEach items="${publishers }" var="s">
                   ${s }, 
               </c:forEach>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
</div>



			<section class="subscribe-area">
				<div class="container">
					<div
						class="subscribe-caption text-center  subscribe-padding section-img2-bg"
						data-background="assets/img/gallery/section-bg1.jpg">
						<div class="row justify-content-center">
							<div class="col-xl-6 col-lg-8 col-md-9">
								<h3>Join Newsletter</h3>
								<p>Lorem started its journey with cast iron (CI) products in
									1980. The initial main objective was to ensure pure water and
									affordable irrigation.</p>
								<form action="#">
									<input type="text" placeholder="Enter your email">
									<button class="subscribe-btn">Subscribe</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</section>
	</main>
	<footer>
		<div class="footer-wrappper section-bg">
			<div class="footer-area footer-padding">
				<div class="container">
					<div class="row justify-content-between">
						<div class="col-xl-3 col-lg-5 col-md-4 col-sm-6">
							<div class="single-footer-caption mb-50">
								<div class="single-footer-caption mb-30">

									<div class="footer-logo mb-25">
										<a href="index-2.html"><img
											src="assets/img/logo/logo2_footer.png" alt=""></a>
									</div>
									<div class="footer-tittle">
										<div class="footer-pera">
											<p>Get the breathing space now, and weâll extend your
												term at the other end year for go.</p>
										</div>
									</div>

									<div class="footer-social">
										<a href="https://bit.ly/sai4ull"><i
											class="fab fa-facebook"></i></a> <a href="#"><i
											class="fab fa-instagram"></i></a> <a href="#"><i
											class="fab fa-linkedin-in"></i></a> <a href="#"><i
											class="fab fa-youtube"></i></a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-2 col-lg-3 col-md-4 col-sm-5">
							<div class="single-footer-caption mb-50">
								<div class="footer-tittle">
									<h4>Book Category</h4>
									<ul>
										<li><a href="#">History</a></li>
										<li><a href="#">Horror - Thriller</a></li>
										<li><a href="#">Love Stories</a></li>
										<li><a href="#">Science Fiction</a></li>
										<li><a href="#">Business</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
							<div class="single-footer-caption mb-50">
								<div class="footer-tittle">
									<h4>&nbsp;</h4>
									<ul>
										<li><a href="#">Biography</a></li>
										<li><a href="#">Astrology</a></li>
										<li><a href="#">Digital Marketing</a></li>
										<li><a href="#">Software Development</a></li>
										<li><a href="#">Ecommerce</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-4 col-md-4 col-sm-6">
							<div class="single-footer-caption mb-50">
								<div class="footer-tittle">
									<h4>Site Map</h4>
									<ul class="mb-20">
										<li><a href="#">Home</a></li>
										<li><a href="#">About Us</a></li>
										<li><a href="#">FAQs</a></li>
										<li><a href="#">Blog</a></li>
										<li><a href="#">Contact</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="footer-bottom-area">
				<div class="container">
					<div class="footer-border">
						<div class="row d-flex align-items-center">
							<div class="col-xl-12 ">
								<div class="footer-copy-right text-center">
									Copyright &copy;
									<script>document.write(new Date().getFullYear());</script>
									All rights reserved | This template is made with <i
										class="fa fa-heart color-danger" aria-hidden="true"></i> by <a
										href="https://colorlib.com/" style="color: black"
										target="_blank" rel="nofollow noopener">Colorlib</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>

	<div id="back-top">
		<a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
	</div>


	<script
		src="<c:url value="resources"/>/assets/js/vendor/modernizr-3.5.0.min.js"></script>
	<script
		src="<c:url value="resources"/>/assets/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="<c:url value="resources"/>/assets/js/popper.min.js"></script>
	<script src="<c:url value="resources"/>/assets/js/bootstrap.min.js"></script>

	<script src="<c:url value="resources"/>/assets/js/owl.carousel.min.js"></script>
	<script src="<c:url value="resources"/>/assets/js/slick.min.js"></script>
	<script
		src="<c:url value="resources"/>/assets/js/jquery.slicknav.min.js"></script>

	<script src="<c:url value="resources"/>/assets/js/wow.min.js"></script>
	<script
		src="<c:url value="resources"/>/assets/js/jquery.magnific-popup.js"></script>
	<script
		src="<c:url value="resources"/>/assets/js/jquery.nice-select.min.js"></script>
	<script
		src="<c:url value="resources"/>/assets/js/jquery.counterup.min.js"></script>
	<script src="<c:url value="resources"/>/assets/js/waypoints.min.js"></script>
	<script src="<c:url value="resources"/>/assets/js/price_rangs.js"></script>

	<script src="<c:url value="resources"/>/assets/js/contact.js"></script>
	<script src="<c:url value="resources"/>/assets/js/jquery.form.js"></script>
	<script
		src="<c:url value="resources"/>/assets/js/jquery.validate.min.js"></script>
	<script src="<c:url value="resources"/>/assets/js/mail-script.js"></script>
	<script
		src="<c:url value="resources"/>/assets/js/jquery.ajaxchimp.min.js"></script>

	<script src="<c:url value="resources"/>/assets/js/plugins.js"></script>
	<script src="<c:url value="resources"/>/assets/js/main.js"></script>

	<script async
		src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
let slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
}
</script>
	<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>
	<script defer
		src="https://static.cloudflareinsights.com/beacon.min.js/v2b4487d741ca48dcbadcaf954e159fc61680799950996"
		integrity="sha512-D/jdE0CypeVxFadTejKGTzmwyV10c1pxZk/AqjJuZbaJwGMyNHY3q/mTPWqMUnFACfCTunhZUVcd4cV78dK1pQ=="
		data-cf-beacon='{"rayId":"7b7934cf6cb34006","version":"2023.3.0","b":1,"token":"cd0b4b3a733644fc843ef0b185f98241","si":100}'
		crossorigin="anonymous"></script>
</body>

<!-- Mirrored from preview.colorlib.com/theme/abcbook/book-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 14 Apr 2023 04:29:45 GMT -->
</html>