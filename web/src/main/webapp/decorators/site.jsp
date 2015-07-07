<%@ include file="/common/taglibs.jsp"%>
<%-- <c:redirect url="/home"/> --%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html lang="en" class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html lang="en" class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html lang="en" class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
    <head>
    	<!-- meta charec set -->
        <meta charset="utf-8">
		<!-- Always force latest IE rendering engine or request Chrome Frame -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<!-- Page Title -->
        <title>MU</title>		
		<!-- Meta Description -->
        <meta name="description" content="Your Regular expense will change someone life. Make someone dream true via Online Recharge of Prepaid Mobile, Datacard, DTH and online shopping referral">
        <meta name="keywords" content="muniyamma, munima, muniyama, online, recharge, online recharge, online shopping, shopping referral, farmer, agriculture">
        <meta name="author" content="Muniyamma">
		<!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="icon" href="/images/favicon.ico"/>		
		<!-- CSS
		================================================== -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/v/${applicationScope.assetsVersion}/mu.css"/>
    </head>
	
    <body id="body">
		<input type="hidden" id="active-menu" value="${activeMenu}">
		<!-- preloader -->
		<div id="preloader">
			<img src="/images/core/preloader.gif" alt="Preloader">
		</div>
		<!-- end preloader -->

        <!--
        Our Works
        ==================================== -->
		
		<section id="works" class="works clearfix">
			<div class="project-wrapper">
				<div class="container">
					<%@ include file="/common/messages.jsp" %>
					<div class="row mb50" id="main-content">
						<decorator:body/>
					</div>
				</div>
			</div>
		</section>
		
        <!--
        End Our Works
        ==================================== -->
		
		<footer id="footer" class="footer">
			<div class="container">
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="row">
						<div class="footer-single">
							<!-- <img src="images/core/footer-logo.png" alt=""> -->
							<h2><a href="/">Muniyamma</a></h2>
							<!-- <p class="col-md-8 col-sm-9 col-xs-9 pull-right">Define Soon.</p> -->
						</div>
					</div>
				</div>
				<div class="col-md-9 col-sm-6 col-xs-12">
					<div class="row">
						<div class="text-center">
							<!-- <h6>Support</h6> -->
							<a href="/site/about">About</a> |
							<a href="/site/contact">Contact Us</a> |
							<a href="/site/termsAndConditions">Terms and Conditions</a> |
							<a href="/site/privacyPolicy">Privacy Policy</a> |
							<a href="/site/faq">FAQ</a> |
							<a href="/site/supportRequest">Recharge Complaints</a>
							<!-- <ul>
								<li><a href="/site/contact">Contact Us</a></li>
								<li><a href="/site/termsAndConditions">Terms and Conditions</a></li>
								<li><a href="/site/privacyPolicy">Privacy Policy</a></li>
							</ul> -->
						</div>
					</div>
					<div class="row">
						<p class="text-center">
							Copyright <i class="fa fa-copyright"></i> 2015 <a href="http://muniyamma.com/">Muniyamma</a>. All rights reserved. Designed & developed by <a href="http://muniyamma.com/">Muniyamma</a>
						</p>
					</div>
				</div>
			</div>
		</footer>
		
		<a href="javascript:void(0);" id="back-top"><i class="fa fa-angle-up fa-3x"></i></a>

		<!-- Essential jQuery Plugins
		================================================== -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/assets/v/${applicationScope.assetsVersion}/mu.js"></script>
		<script>
			var wow = new WOW ({
				boxClass:     'wow',      // animated element css class (default is wow)
				animateClass: 'animated', // animation css class (default is animated)
				offset:       120,          // distance to the element when triggering the animation (default is 0)
				mobile:       false,       // trigger animations on mobile devices (default is true)
				live:         true        // act on asynchronously loaded content (default is true)
			  }
			);
			wow.init();
		</script> 
    </body>
</html>
