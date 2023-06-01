<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<!-- Mirrored from preview.colorlib.com/theme/abcbook/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 14 Apr 2023 04:29:44 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Game Store</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value="resources"/>/assets/img/icon/favicon.png">

<link rel="stylesheet" href="<c:url value="resources"/>/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="resources"/>/assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="<c:url value="resources"/>/assets/css/slicknav.css">
<link rel="stylesheet" href="<c:url value="resources"/>/assets/css/animate.min.css">
<link rel="stylesheet" href="<c:url value="resources"/>/assets/css/price_rangs.css">
<link rel="stylesheet" href="<c:url value="resources"/>/assets/css/magnific-popup.css">
<link rel="stylesheet" href="<c:url value="resources"/>/assets/css/fontawesome-all.min.css">
<link rel="stylesheet" href="<c:url value="resources"/>/assets/css/themify-icons.css">
<link rel="stylesheet" href="<c:url value="resources"/>/assets/css/slick.css">
<link rel="stylesheet" href="<c:url value="resources"/>/assets/css/nice-select.css">
<link rel="stylesheet" href="<c:url value="resources"/>/assets/css/style.css">
<link rel="stylesheet" href="<c:url value="resources"/>/assets/css/custom_style.css">
<script nonce="29dd1b9f-56e5-4fe9-97bb-d7cd6e808399">(function(w,d){!function(f,g,h,i){f[h]=f[h]||{};f[h].executed=[];f.zaraz={deferred:[],listeners:[]};f.zaraz.q=[];f.zaraz._f=function(j){return function(){var k=Array.prototype.slice.call(arguments);f.zaraz.q.push({m:j,a:k})}};for(const l of["track","set","debug"])f.zaraz[l]=f.zaraz._f(l);f.zaraz.init=()=>{var m=g.getElementsByTagName(i)[0],n=g.createElement(i),o=g.getElementsByTagName("title")[0];o&&(f[h].t=g.getElementsByTagName("title")[0].text);f[h].x=Math.random();f[h].w=f.screen.width;f[h].h=f.screen.height;f[h].j=f.innerHeight;f[h].e=f.innerWidth;f[h].l=f.location.href;f[h].r=g.referrer;f[h].k=f.screen.colorDepth;f[h].n=g.characterSet;f[h].o=(new Date).getTimezoneOffset();if(f.dataLayer)for(const s of Object.entries(Object.entries(dataLayer).reduce(((t,u)=>({...t[1],...u[1]})))))zaraz.set(s[0],s[1],{scope:"page"});f[h].q=[];for(;f.zaraz.q.length;){const v=f.zaraz.q.shift();f[h].q.push(v)}n.defer=!0;for(const w of[localStorage,sessionStorage])Object.keys(w||{}).filter((y=>y.startsWith("_zaraz_"))).forEach((x=>{try{f[h]["z_"+x.slice(7)]=JSON.parse(w.getItem(x))}catch{f[h]["z_"+x.slice(7)]=w.getItem(x)}}));n.referrerPolicy="origin";n.src="../../cdn-cgi/zaraz/sd0d9.js?z="+btoa(encodeURIComponent(JSON.stringify(f[h])));m.parentNode.insertBefore(n,m)};["complete","interactive"].includes(g.readyState)?zaraz.init():f.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document);</script>
</head>
<style>
.slider-bg1 {
   background-image:url(https://cdn2.steamgriddb.com/file/sgdb-cdn/hero/9ce050e2f8b9a793dbe3777b394500ad.png)
}
.slider-bg2 {
   background-image:url(https://cdn2.steamgriddb.com/file/sgdb-cdn/hero/52b34fd99ee8836d8ebf86537ec5fc69.png)
}
.slider-bg3 {
   background-image:url(https://cdn2.steamgriddb.com/file/sgdb-cdn/hero/b62a3ad876173e9cdfa736b6ff74a8e6.webp)
}
</style>
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
											<a href="home"><img
												src="<c:url value="resources"/>/assets/img/logo/logo2.png" alt=""></a>
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
											<li class="shopping-card"><a href="cart.html"><img
													src="<c:url value="resources"/>/assets/img/icon/cart.svg" alt=""></a></li>
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
									<a href="home"><img src="<c:url value="resources"/>/assets/img/logo/logo.png"
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
													<li><a href="login">login</a></li>
													<li><a href="cart">Cart</a></li>
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

		<div class="slider-area">
			<div class="container">
				<div class="row">
					<div class="col-xl-12">
						<div class="slider-active dot-style">

							<div
								class="single-slider slider-height slider-bg1 d-flex align-items-center">
								<div class="container">
									<div class="row justify-content-center">
										<div class="col-xxl-4 col-xl-4 col-lg-5 col-md-6 col-sm-7">
											<div class="hero-caption text-center">
												<span data-animation="fadeInUp" data-delay=".2s">Adventure</span>
												<h1 data-animation="fadeInUp" data-delay=".4s">
													Xenoblade<br> Chronicles 3
												</h1>
												<a href="categories" class="btn hero-btn" data-animation="bounceIn"
													data-delay=".8s">Browse Store</a>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div
								class="single-slider slider-height slider-bg2 d-flex align-items-center">
								<div class="container">
									<div class="row justify-content-center">
										<div class="col-xxl-4 col-xl-4 col-lg-5 col-md-6 col-sm-7">
											<div class="hero-caption text-center">
												<span data-animation="fadeInUp" data-delay=".2s">Action</span>
												<h1 data-animation="fadeInUp" data-delay=".4s">
													Aliens:<br> Dark Descent
												</h1>
												<a href="categories" class="btn hero-btn" data-animation="bounceIn"
													data-delay=".8s">Browse Store</a>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div
								class="single-slider slider-height slider-bg3 d-flex align-items-center">
								<div class="container">
									<div class="row justify-content-center">
										<div class="col-xxl-4 col-xl-4 col-lg-5 col-md-6 col-sm-7">
											<div class="hero-caption text-center">
												<span data-animation="fadeInUp" data-delay=".2s">Open World</span>
												<h1 data-animation="fadeInUp" data-delay=".4s">
													Red Dead<br> Redemption
												</h1>
												<a href="categories" class="btn hero-btn" data-animation="bounceIn"
													data-delay=".8s">Browse Store</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div class="best-selling section-bg">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-xl-7 col-lg-8">
						<div class="section-tittle text-center mb-55">
							<h2>Most Popular</h2>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-12">
						<div class="selling-active">
                           <c:forEach items="${list }" var="s">
							<div class="properties pb-20">
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
                          </c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div class="services-area2 top-padding">
			<div class="container">
				<div class="row">
					<div class="col-xl-9 col-lg-9 col-md-8">
						<div class="row">

							<div class="col-xl-12">
								<div
									class="section-tittle d-flex justify-content-between align-items-center mb-40">
									<h2 class="mb-0">Featured This Week</h2>
									<a href="categories" class="browse-btn">View All</a>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xl-12">
								<div class="services-active">
                                   <c:forEach items="${list }" var="s">
									<div class="single-services d-flex align-items-center" style="background-image:url(https://cdn.akamai.steamstatic.com/steam/apps/1174180/page_bg_generated_v6b.jpg?t=1671485009)}">
										<div class="features-img">
											<img src="https://cdn.akamai.steamstatic.com/steam/apps/${s.steam_appid }/header.jpg?t=1671485009" alt="">
										</div>
										<div class="features-caption" style="color:black">
											<img src="<c:url value="resources"/>/assets/img/icon/logo.html" alt="">
											<h3>${s.name }</h3>
											<p>By ${s.publishers }</p>
											
											<div class="review">
												<div class="rating">
													<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
														class="fas fa-star"></i> <i class="fas fa-star"></i> <i
														class="fas fa-star-half-alt"></i>
												</div>
												<p>(<fmt:formatNumber pattern="#,##0" value="${s.recommendations }" /> Review)</p>
											</div>
											<a href="app?appid=${s.steam_appid }" class="border-btn">View
												Details</a>
										</div>
									</div>
                                   </c:forEach>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-4 col-sm-9">

						<div class="google-add">
							<img src="<c:url value="resources"/>/assets/img/gallery/ad.jpg" alt="" class="w-100">
						</div>
					</div>
				</div>
			</div>
		</div>


		<section class="our-client section-padding best-selling">
			<div class="container">
				<div class="row justify-content-between">
					<div class="col-xl-5 col-lg-5 col-md-12">

						<div class="section-tittle  mb-40">
							<h2>Latest Published items</h2>
						</div>
					</div>
					<div class="col-xl-7 col-lg-7 col-md-12">
						<div class="nav-button mb-40">

							<nav>
								<div class="nav nav-tabs" id="nav-tab" role="tablist">
									<a class="nav-link active" id="nav-one-tab"
										data-bs-toggle="tab" href="#nav-one" role="tab"
										aria-controls="nav-one" aria-selected="true">All</a> <a
										class="nav-link" id="nav-two-tab" data-bs-toggle="tab"
										href="#nav-two" role="tab" aria-controls="nav-two"
										aria-selected="false">Horror</a> <a class="nav-link"
										id="nav-three-tab" data-bs-toggle="tab" href="#nav-three"
										role="tab" aria-controls="nav-three" aria-selected="false">Thriller</a>
									<a class="nav-link" id="nav-four-tab" data-bs-toggle="tab"
										href="#nav-four" role="tab" aria-controls="nav-four"
										aria-selected="false">Science Fiction</a> <a class="nav-link"
										id="nav-five-tab" data-bs-toggle="tab" href="#nav-five"
										role="tab" aria-controls="nav-five" aria-selected="false">History</a>
								</div>
							</nav>

						</div>
					</div>
				</div>
			</div>
			<div class="container">

				<div class="tab-content" id="nav-tabContent">
					<div class="tab-pane fade show active" id="nav-one" role="tabpanel"
						aria-labelledby="nav-one-tab">

						<div class="row">
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling7.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling8.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling6.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling4.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling9.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling2.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="nav-two" role="tabpanel"
						aria-labelledby="nav-two-tab">

						<div class="row">
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling4.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling9.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling2.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling7.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling8.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling6.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="nav-three" role="tabpanel"
						aria-labelledby="nav-three-tab">

						<div class="row">
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling7.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling8.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling6.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling4.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling9.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling2.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="nav-four" role="tabpanel"
						aria-labelledby="nav-four-tab">

						<div class="row">
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling9.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling2.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling7.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling8.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling6.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling4.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="nav-five" role="tabpanel"
						aria-labelledby="nav-five-tab">

						<div class="row">
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling7.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling8.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling6.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling4.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling9.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
								<div class="properties pb-30">
									<div class="properties-card">
										<div class="properties-img">
											<a href="book-details.html"><img
												src="<c:url value="resources"/>/assets/img/gallery/best_selling2.jpg" alt=""></a>
										</div>
										<div class="properties-caption properties-caption2">
											<h3>
												<a href="book-details.html">Moon Dance</a>
											</h3>
											<p>J. R Rain</p>
											<div
												class="properties-footer d-flex justify-content-between align-items-center">
												<div class="review">
													<div class="rating">
														<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star"></i> <i class="fas fa-star"></i> <i
															class="fas fa-star-half-alt"></i>
													</div>
													<p>
														(<span>120</span> Review)
													</p>
												</div>
												<div class="price">
													<span>$50</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-12">
						<div class="more-btn text-center mt-15">
							<a href="categories" class="border-btn border-btn2 more-btn2">Browse
								More</a>
						</div>
					</div>
				</div>
			</div>
		</section>


		<section class="container">
			<div class="row align-items-center justify-content-between">
				<div class="col-xl-6 col-lg-6">
					<div class="wantToWork-area w-padding2 mb-30"
						data-background="<c:url value="resources"/>/assets/img/gallery/wants-bg1.jpeg">
						<img src="<c:url value="resources"/>/assets/img/gallery/wants-bg1.jpg" alt="">
						<h2>
							The History<br> of Phipino
						</h2>
						<div class="linking">
							<a href="#" class="btn wantToWork-btn">View Details</a>
						</div>
					</div>
				</div>
				<div class="col-xl-6 col-lg-6">
					<div class="wantToWork-area w-padding2 mb-30"
						data-background="<c:url value="resources"/>/assets/img/gallery/wants-bg2.jpeg">
						<h2>Wilma Mumduya</h2>
						<div class="linking">
							<a href="#" class="btn wantToWork-btn">View Details</a>
						</div>
					</div>
				</div>
			</div>
		</section>


		<section class="subscribe-area">
			<div class="container">
				<div
					class="subscribe-caption text-center  subscribe-padding section-img2-bg"
					data-background="<c:url value="resources"/>/assets/img/gallery/section-bg1.jpeg" 
					style="background-image: url('<c:url value="resources"/>/assets/img/gallery/section-bg1.jpeg');">
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
											src="<c:url value="resources"/>/assets/img/logo/logo2.png" alt=""></a>
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
									<h4>Game Category</h4>
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


	<script src="<c:url value="resources"/>/assets/js/vendor/modernizr-3.5.0.min.js"></script>
	<script src="<c:url value="resources"/>/assets/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="<c:url value="resources"/>/assets/js/popper.min.js"></script>
	<script src="<c:url value="resources"/>/assets/js/bootstrap.min.js"></script>

	<script src="<c:url value="resources"/>/assets/js/owl.carousel.min.js"></script>
	<script src="<c:url value="resources"/>/assets/js/slick.min.js"></script>
	<script src="<c:url value="resources"/>/assets/js/jquery.slicknav.min.js"></script>

	<script src="<c:url value="resources"/>/assets/js/wow.min.js"></script>
	<script src="<c:url value="resources"/>/assets/js/jquery.magnific-popup.js"></script>
	<script src="<c:url value="resources"/>/assets/js/jquery.nice-select.min.js"></script>
	<script src="<c:url value="resources"/>/assets/js/jquery.counterup.min.js"></script>
	<script src="<c:url value="resources"/>/assets/js/waypoints.min.js"></script>
	<script src="<c:url value="resources"/>/assets/js/price_rangs.js"></script>

	<script src="<c:url value="resources"/>/assets/js/contact.js"></script>
	<script src="<c:url value="resources"/>/assets/js/jquery.form.js"></script>
	<script src="<c:url value="resources"/>/assets/js/jquery.validate.min.js"></script>
	<script src="<c:url value="resources"/>/assets/js/mail-script.js"></script>
	<script src="<c:url value="resources"/>/assets/js/jquery.ajaxchimp.min.js"></script>

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
	<script defer
		src="https://static.cloudflareinsights.com/beacon.min.js/v2b4487d741ca48dcbadcaf954e159fc61680799950996"
		integrity="sha512-D/jdE0CypeVxFadTejKGTzmwyV10c1pxZk/AqjJuZbaJwGMyNHY3q/mTPWqMUnFACfCTunhZUVcd4cV78dK1pQ=="
		data-cf-beacon='{"rayId":"7b7934b62f014006","version":"2023.3.0","b":1,"token":"cd0b4b3a733644fc843ef0b185f98241","si":100}'
		crossorigin="anonymous"></script>
</body>

<!-- Mirrored from preview.colorlib.com/theme/abcbook/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 14 Apr 2023 04:29:44 GMT -->
</html>