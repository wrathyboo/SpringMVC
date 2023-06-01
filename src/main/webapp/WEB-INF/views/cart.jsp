<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html class="no-js" lang="zxx">

<!-- Mirrored from preview.colorlib.com/theme/abcbook/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 14 Apr 2023 04:29:44 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Book Shop</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="assets/img/icon/favicon.png">

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
<script nonce="13933abb-aaaa-4a7d-9973-347ea4f1b432">(function(w,d){!function(f,g,h,i){f[h]=f[h]||{};f[h].executed=[];f.zaraz={deferred:[],listeners:[]};f.zaraz.q=[];f.zaraz._f=function(j){return function(){var k=Array.prototype.slice.call(arguments);f.zaraz.q.push({m:j,a:k})}};for(const l of["track","set","debug"])f.zaraz[l]=f.zaraz._f(l);f.zaraz.init=()=>{var m=g.getElementsByTagName(i)[0],n=g.createElement(i),o=g.getElementsByTagName("title")[0];o&&(f[h].t=g.getElementsByTagName("title")[0].text);f[h].x=Math.random();f[h].w=f.screen.width;f[h].h=f.screen.height;f[h].j=f.innerHeight;f[h].e=f.innerWidth;f[h].l=f.location.href;f[h].r=g.referrer;f[h].k=f.screen.colorDepth;f[h].n=g.characterSet;f[h].o=(new Date).getTimezoneOffset();if(f.dataLayer)for(const s of Object.entries(Object.entries(dataLayer).reduce(((t,u)=>({...t[1],...u[1]})))))zaraz.set(s[0],s[1],{scope:"page"});f[h].q=[];for(;f.zaraz.q.length;){const v=f.zaraz.q.shift();f[h].q.push(v)}n.defer=!0;for(const w of[localStorage,sessionStorage])Object.keys(w||{}).filter((y=>y.startsWith("_zaraz_"))).forEach((x=>{try{f[h]["z_"+x.slice(7)]=JSON.parse(w.getItem(x))}catch{f[h]["z_"+x.slice(7)]=w.getItem(x)}}));n.referrerPolicy="origin";n.src="../../cdn-cgi/zaraz/sd0d9.js?z="+btoa(encodeURIComponent(JSON.stringify(f[h])));m.parentNode.insertBefore(n,m)};["complete","interactive"].includes(g.readyState)?zaraz.init():f.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document);</script></head>
<body>
<header>
<div class="header-area">
<div class="main-header ">
<div class="header-top ">
<div class="container">
<div class="row">
<div class="col-xl-12">
<div class="d-flex justify-content-between align-items-center flex-sm">
<div class="header-info-left d-flex align-items-center">

<div class="logo">
<a href="index-2.html"><img src="assets/img/logo/logo.png" alt=""></a>
</div>

<form action="#" class="form-box">
<input type="text" name="Search" placeholder="Search book by author or publisher">
<div class="search-icon">
<i class="ti-search"></i>
</div>
</form>
</div>
<div class="header-info-right d-flex align-items-center">
<ul>
<li><a href="#">FAQ</a></li>
<li><a href="#">Track Order</a></li>
<li class="shopping-card">
<a href="cart.html"><img src="assets/img/icon/cart.svg" alt=""></a>
</li>
<li>
   <c:if test="${isAuth == true }">
      <a href="home" class="btn header-btn">Logout</a>
   </c:if>


</li>
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
<a href="index-2.html"><img src="assets/img/logo/logo.png" alt=""></a>
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
</ul>
</li>
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

<div class="container">
<div class="row">
<div class="col-xl-12">
<div class="slider-area">
<div class="slider-height2 slider-bg5 d-flex align-items-center justify-content-center">
<div class="hero-caption hero-caption2">
<h2>Cart</h2>
</div>
</div>
</div>
</div>
</div>
</div>


<section class="cart_area section-padding">
<div class="container">
<div class="cart_inner">
<div class="table-responsive">
<table class="table">
<thead>
<tr>
<th scope="col">Product</th>
<th scope="col">Price</th>
<th scope="col">Quantity</th>
<th scope="col">Total</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<div class="media">
<div class="d-flex">
<img src="assets/img/gallery/best-books1.jpg" alt="" />
</div>
<div class="media-body">
<p>Minimalistic shop for multipurpose use</p>
</div>
</div>
</td>
<td>
<h5>$360.00</h5>
</td>
<td>
<div class="product_count">
<span class="input-number-decrement"> <i class="ti-minus"></i></span>
<input class="input-number" type="text" value="1" min="0" max="10">
<span class="input-number-increment"> <i class="ti-plus"></i></span>
</div>
</td>
<td>
<h5>$720.00</h5>
</td>
</tr>
<tr>
<td>
<div class="media">
<div class="d-flex">
<img src="assets/img/gallery/best_selling1.jpg" alt="" />
</div>
<div class="media-body">
<p>Minimalistic shop for multipurpose use</p>
</div>
</div>
</td>
<td>
<h5>$360.00</h5>
</td>
<td>
<div class="product_count">
<span class="input-number-decrement"> <i class="ti-minus"></i></span>
<input class="input-number2" type="text" value="1" min="0" max="10">
<span class="input-number-increment"> <i class="ti-plus"></i></span>
</div>
</td>
<td>
<h5>$720.00</h5>
</td>
</tr>
<tr class="bottom_button">
<td>
<a class="btn" href="#">Update Cart</a>
</td>
<td></td>
<td></td>
<td>
<div class="cupon_text float-right">
<a class="btn" href="#">Close Coupon</a>
</div>
</td>
</tr>
<tr>
<td></td>
<td></td>
<td>
<h5>Subtotal</h5>
</td>
<td>
<h5>$2160.00</h5>
</td>
</tr>
<tr class="shipping_area">
<td></td>
<td></td>
<td>
<h5>Shipping</h5>
</td>
<td>
<div class="shipping_box">
<ul class="list">
<li>
Flat Rate: $5.00
<input type="radio" aria-label="Radio button for following text input">
</li>
<li>
Free Shipping
<input type="radio" aria-label="Radio button for following text input">
</li>
<li>
Flat Rate: $10.00
<input type="radio" aria-label="Radio button for following text input">
</li>
<li class="active">
Local Delivery: $2.00
<input type="radio" aria-label="Radio button for following text input">
</li>
</ul>
<h6>
Calculate Shipping
<i class="fa fa-caret-down" aria-hidden="true"></i>
</h6>
<select class="shipping_select">
<option value="1">Bangladesh</option>
<option value="2">India</option>
 <option value="4">Pakistan</option>
</select>
<select class="shipping_select section_bg">
<option value="1">Select a State</option>
<option value="2">Select a State</option>
<option value="4">Select a State</option>
</select>
<input class="post_code" type="text" placeholder="Postcode/Zipcode" />
<a class="btn" href="#">Update Details</a>
</div>
</td>
</tr>
</tbody>
</table>
<div class="checkout_btn_inner float-right">
<a class="btn" href="#">Continue Shopping</a>
<a class="btn checkout_btn" href="#">Proceed to checkout</a>
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
<a href="index-2.html"><img src="assets/img/logo/logo2_footer.png" alt=""></a>
</div>
<div class="footer-tittle">
<div class="footer-pera">
<p>Get the breathing space now, and weâll extend your term at the other end year for go.</p>
</div>
</div>

<div class="footer-social">
<a href="https://bit.ly/sai4ull"><i class="fab fa-facebook"></i></a>
<a href="#"><i class="fab fa-instagram"></i></a>
<a href="#"><i class="fab fa-linkedin-in"></i></a>
<a href="#"><i class="fab fa-youtube"></i></a>
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
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com/" style="color: black" target="_blank" rel="nofollow noopener">Colorlib</a>
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

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>
<script defer src="https://static.cloudflareinsights.com/beacon.min.js/v2b4487d741ca48dcbadcaf954e159fc61680799950996" integrity="sha512-D/jdE0CypeVxFadTejKGTzmwyV10c1pxZk/AqjJuZbaJwGMyNHY3q/mTPWqMUnFACfCTunhZUVcd4cV78dK1pQ==" data-cf-beacon='{"rayId":"7b7934bb7ba44006","version":"2023.3.0","b":1,"token":"cd0b4b3a733644fc843ef0b185f98241","si":100}' crossorigin="anonymous"></script>
</body>

<!-- Mirrored from preview.colorlib.com/theme/abcbook/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 14 Apr 2023 04:29:44 GMT -->
</html>