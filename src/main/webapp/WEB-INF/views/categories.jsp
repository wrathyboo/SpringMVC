<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<!-- Mirrored from preview.colorlib.com/theme/abcbook/categories.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 14 Apr 2023 04:29:45 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Game Shop</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value="resources"/>/assets/img/icon/favicon.png">

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
<link rel="stylesheet"
	href="<c:url value="resources"/>/assets/css/custom.css">
<script nonce="9fb0f9ff-2c10-4e94-848b-7f10db82ea45">(function(w,d){!function(f,g,h,i){f[h]=f[h]||{};f[h].executed=[];f.zaraz={deferred:[],listeners:[]};f.zaraz.q=[];f.zaraz._f=function(j){return function(){var k=Array.prototype.slice.call(arguments);f.zaraz.q.push({m:j,a:k})}};for(const l of["track","set","debug"])f.zaraz[l]=f.zaraz._f(l);f.zaraz.init=()=>{var m=g.getElementsByTagName(i)[0],n=g.createElement(i),o=g.getElementsByTagName("title")[0];o&&(f[h].t=g.getElementsByTagName("title")[0].text);f[h].x=Math.random();f[h].w=f.screen.width;f[h].h=f.screen.height;f[h].j=f.innerHeight;f[h].e=f.innerWidth;f[h].l=f.location.href;f[h].r=g.referrer;f[h].k=f.screen.colorDepth;f[h].n=g.characterSet;f[h].o=(new Date).getTimezoneOffset();if(f.dataLayer)for(const s of Object.entries(Object.entries(dataLayer).reduce(((t,u)=>({...t[1],...u[1]})))))zaraz.set(s[0],s[1],{scope:"page"});f[h].q=[];for(;f.zaraz.q.length;){const v=f.zaraz.q.shift();f[h].q.push(v)}n.defer=!0;for(const w of[localStorage,sessionStorage])Object.keys(w||{}).filter((y=>y.startsWith("_zaraz_"))).forEach((x=>{try{f[h]["z_"+x.slice(7)]=JSON.parse(w.getItem(x))}catch{f[h]["z_"+x.slice(7)]=w.getItem(x)}}));n.referrerPolicy="origin";n.src="../../cdn-cgi/zaraz/sd0d9.js?z="+btoa(encodeURIComponent(JSON.stringify(f[h])));m.parentNode.insertBefore(n,m)};["complete","interactive"].includes(g.readyState)?zaraz.init():f.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document);</script>
</head>
<body>
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
											<a href="/"><img
												src="<c:url value="resources"/>/assets/img/logo/logo2.png"
												alt=""></a>
										</div>

										<form action="search" class="form-box">
											<input type="text" name="input"
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
													src="<c:url value="resources"/>/assets/img/icon/cart.svg"
													alt=""></a></li>
											<li><c:if test="${auth == true}">

												</c:if> <c:choose>
													<c:when test="${auth == false}">
														<a href="login" class="btn header-btn">Sign in</a>

													</c:when>
													<c:otherwise>
														<form action="<c:url value="/j_spring_security_logout" />"
															method="post">
															<input type="hidden" name="${_csrf.parameterName}"
																value="${_csrf.token}" /> <input type="submit"
																value="Logout" />
														</form>
													</c:otherwise>
												</c:choose></li>
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
									<a href="/"><img
										src="<c:url value="resources"/>/assets/img/logo/logo.png"
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
											<li><a href="contact.html">Contact</a></li>
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

		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="slider-area">
						<div
							class="slider-height2 slider-bg4 d-flex align-items-center justify-content-center">
							<div class="hero-caption hero-caption2">
								<h2>Game Category</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div class="listing-area pt-50 pb-50">
			<div class="container">
				<div class="row">

					<div class="col-xl-4 col-lg-4 col-md-6">

						<div class="category-listing mb-50">

							<div class="single-listing">
								<form action="filteredSearch">
									<div class="select-Categories pb-30">
										<div class="small-tittle mb-20">
											<h4>Filter options</h4>
										</div>
										<label class="container">On Sale <input
											type="checkbox" name="onSale" value="true"
											${currentOnSale ? checked : null }> <span
											class="checkmark"></span>
										</label> <label for="customRange1" class="form-label">Example
											range</label>

									</div>


									<aside
										class="left_widgets p_filter_widgets price_rangs_aside sidebar_box_shadow mb-40">
										<div class="small-tittle">
											<h4>Narrow by Price</h4>
										</div>
										<div class="range-form">
											<div class="form-group row">
												<div class="col">
													<label>
														<p>
															Under $<span id="demo">0</span>
														</p>
													</label> <input type="range" min="0" max="100"
														value="${currentPrice }" name="price"
														class="form-control-range range-slider" id="myRange"
														style="width: 100%">
												</div>
											</div>
										</div>
									</aside>



									<div class="select-Categories pt-100 pb-60">
										<input class="btn btn-primary" type="submit" value="Search">
									</div>

								</form>


							</div>
						</div>

					</div>

					<div class="col-xl-8 col-lg-8 col-md-6">
						<div class="row justify-content-end">
							<div class="col-xl-4">
								<div class="product_page_tittle">
									<div class="short_by">
										<form
											action="categories?page=${currentPage }&sortField=${currentOrder}">
											<select name="sortField" id="product_short_list"
												onchange="this.form.submit()">
												<option>Sort by:</option>
												<option value="asc">Name Asc</option>
												<option value="desc">Name Desc</option>
												<option value="discount">Discount</option>
											</select>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="best-selling p-0">
							<div class="row">
								<c:forEach items="${list}" var="s">
									<div class="col-xxl-3 col-xl-4 col-lg-4 col-md-12 col-sm-6">
										<div class="properties pb-30">
											<div class="properties-card">

												<div class="properties-img">
													<a href="app?appid=${s.steam_appid }"><img
														src="https://steamcdn-a.akamaihd.net/steam/apps/${s.steam_appid }/library_600x900_2x.jpg"
														alt=""></a>

												</div>
												<div class="properties-caption properties-caption2"
													style="white-space: nowrap; overflow: hidden;">


													<a href="app?appid=${s.steam_appid }"
														style="color: black; text-overflow: ellipsis;">${s.name }</a>


													<div
														class="properties-footer d-flex justify-content-between align-items-center">
														<div class="review">
															<div class="rating">
																<p>
																	(<span style="color: #66C0F4">${s.recommendations }</span>)
																	<br> Reviews
																</p>
															</div>

														</div>
														<div class="price">
															<c:choose>
																<c:when test="${s.initial == 0}">
																	<span>FREE</span>
																</c:when>
																<c:otherwise>
																	<c:choose>
																		<c:when test="${s.discount_percent > 0 }">
																			<c:set var="discounted"
																				value="${ (s.initial * (s.discount_percent / 100)) }"></c:set>
																			<span style="color: green">-${s.discount_percent}%</span>
																			<span style="font-size: 13px"> <fmt:formatNumber
																					type="number" pattern="$##.##"
																					minFractionDigits="2"
																					value="${ (s.initial - discounted)  /100 }" /></span>
																		</c:when>
																		<c:otherwise>
																			<span style="color: black"> <fmt:formatNumber
																					type="number" pattern="$##.##"
																					value="${s.initial / 100}" /></span>
																		</c:otherwise>
																	</c:choose>

																</c:otherwise>
															</c:choose>

														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>



							</div>
						</div>
					</div>
					<c:if test="${lastPage > 0}">
						<div class="row">
							<div class="col-xl-12">
								<nav aria-label="Page navigation example">
									<ul class="pagination justify-content-center">
										<li class="page-item"><a class="page-link"
											href="categories?page=1&sortField=${currentOrder }"
											tabindex="-1">First</a></li>
										<c:forEach begin="${pagStart }" end="${pagEnd }" step="1"
											varStatus="loop">
											<li
												class="page-item <c:if test="${loop.index + 1 == currentPage }">active</c:if> "><a
												class="page-link"
												href="categories?page=${loop.index + 1 }&sortField=${currentOrder }">${loop.index + 1 }</a></li>
										</c:forEach>
										<li class="page-item"><a class="page-link"
											href="categories?page=${lastPage + 1 }&sortField=${currentOrder }">Last</a>
										</li>
									</ul>
								</nav>
							</div>
						</div>
					</c:if>

				</div>
			</div>
		</div>
		</div>


		<section class="subscribe-area">
			<div class="container">
				<div
					class="subscribe-caption text-center  subscribe-padding section-img2-bg"
					data-background="<c:url value="resources"/>/assets/img/gallery/section-bg1.jpg">
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
										<a href="home"><img
											src="<c:url value="resources"/>/assets/img/logo/logo2.png"
											alt=""></a>
									</div>
									<div class="footer-tittle">
										<div class="footer-pera">
											<p>Get the breathing space now, and we’ll extend your
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
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>
	<script type="text/javascript">
var slider = document.getElementById("myRange");
var output = document.getElementById("demo");
output.innerHTML = slider.value; // Display the default slider value

// Update the current slider value (each time you drag the slider handle)
slider.oninput = function() {
    output.innerHTML = this.value;
}
</script>
	<script defer
		src="https://static.cloudflareinsights.com/beacon.min.js/v2b4487d741ca48dcbadcaf954e159fc61680799950996"
		integrity="sha512-D/jdE0CypeVxFadTejKGTzmwyV10c1pxZk/AqjJuZbaJwGMyNHY3q/mTPWqMUnFACfCTunhZUVcd4cV78dK1pQ=="
		data-cf-beacon='{"rayId":"7b7934c76cb49e23","version":"2023.3.0","b":1,"token":"cd0b4b3a733644fc843ef0b185f98241","si":100}'
		crossorigin="anonymous"></script>
</body>

<!-- Mirrored from preview.colorlib.com/theme/abcbook/categories.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 14 Apr 2023 04:29:45 GMT -->
</html>