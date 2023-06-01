<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html class="no-js" lang="zxx">

<!-- Mirrored from preview.colorlib.com/theme/abcbook/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 14 Apr 2023 04:30:08 GMT -->
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
<script nonce="3cc4dbfe-12fd-4b15-a557-bf2a5fe00e93">(function(w,d){!function(f,g,h,i){f[h]=f[h]||{};f[h].executed=[];f.zaraz={deferred:[],listeners:[]};f.zaraz.q=[];f.zaraz._f=function(j){return function(){var k=Array.prototype.slice.call(arguments);f.zaraz.q.push({m:j,a:k})}};for(const l of["track","set","debug"])f.zaraz[l]=f.zaraz._f(l);f.zaraz.init=()=>{var m=g.getElementsByTagName(i)[0],n=g.createElement(i),o=g.getElementsByTagName("title")[0];o&&(f[h].t=g.getElementsByTagName("title")[0].text);f[h].x=Math.random();f[h].w=f.screen.width;f[h].h=f.screen.height;f[h].j=f.innerHeight;f[h].e=f.innerWidth;f[h].l=f.location.href;f[h].r=g.referrer;f[h].k=f.screen.colorDepth;f[h].n=g.characterSet;f[h].o=(new Date).getTimezoneOffset();if(f.dataLayer)for(const s of Object.entries(Object.entries(dataLayer).reduce(((t,u)=>({...t[1],...u[1]})))))zaraz.set(s[0],s[1],{scope:"page"});f[h].q=[];for(;f.zaraz.q.length;){const v=f.zaraz.q.shift();f[h].q.push(v)}n.defer=!0;for(const w of[localStorage,sessionStorage])Object.keys(w||{}).filter((y=>y.startsWith("_zaraz_"))).forEach((x=>{try{f[h]["z_"+x.slice(7)]=JSON.parse(w.getItem(x))}catch{f[h]["z_"+x.slice(7)]=w.getItem(x)}}));n.referrerPolicy="origin";n.src="../../cdn-cgi/zaraz/sd0d9.js?z="+btoa(encodeURIComponent(JSON.stringify(f[h])));m.parentNode.insertBefore(n,m)};["complete","interactive"].includes(g.readyState)?zaraz.init():f.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document);</script>
</head>
<style>
.colorErr {
color:red}
</style>
<body>

	<main class="login-bg">

		<div class="register-form-area">
			<div class="register-form text-center">

				<div class="register-heading">
					<span>Sign Up</span>
					<p>Create your account to get full access</p>
				</div>
                <form:form action="createAccount" modelAttribute="user" method="post">
				<div class="input-box">
					<div class="single-input-fields">
						<label>Username</label> <input type="text"
							placeholder="Enter username" name="username"><form:errors path="username" cssClass="colorErr"/>
					</div>
					<div class="single-input-fields">
						<label>Email Address</label> <input type="email"
							placeholder="Enter email address" name="email"><form:errors path="email" cssClass="colorErr"/>
					</div>
					<div class="single-input-fields">
						<label>Password</label> <input type="password"
							placeholder="Enter Password" name="password"><form:errors path="password" cssClass="colorErr"/>
					</div>
					<div class="single-input-fields">
						<label>Confirm Password</label> <input type="password"
							placeholder="Confirm Password" name="matchingPassword"><form:errors path="matchingPassword" cssClass="colorErr"/>
					</div>
				</div>

				<div class="register-footer">
					<p>
						Already have an account? <a href="login"> Login</a> here
					</p>
					<button class="submit-btn3">Sign Up</button>
				</div>
				</form:form>
			</div>
			
		</div>

	</main>


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
	<script defer
		src="https://static.cloudflareinsights.com/beacon.min.js/v2b4487d741ca48dcbadcaf954e159fc61680799950996"
		integrity="sha512-D/jdE0CypeVxFadTejKGTzmwyV10c1pxZk/AqjJuZbaJwGMyNHY3q/mTPWqMUnFACfCTunhZUVcd4cV78dK1pQ=="
		data-cf-beacon='{"rayId":"7b7935a6bb35895e","version":"2023.3.0","b":1,"token":"cd0b4b3a733644fc843ef0b185f98241","si":100}'
		crossorigin="anonymous"></script>
</body>

<!-- Mirrored from preview.colorlib.com/theme/abcbook/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 14 Apr 2023 04:30:08 GMT -->
</html>