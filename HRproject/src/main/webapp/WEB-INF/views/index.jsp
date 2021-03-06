<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<link href="static1/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="static1/css/custom.css" rel="stylesheet">
<!-- Custom Fonts -->
<link href="static1/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>

<!-- Theme CSS -->
<link href="static1/css/agency.min.css" rel="stylesheet">
<!-- <link href="static1/css/styles.css" rel="stylesheet"> -->
<link href="static1/css/agency.css" rel="stylesheet">


</head>
<body>



	<!-- Navigation -->
	<nav id="mainNav"
		class="navbar navbar-default navbar-custom navbar-fixed-top">
		<div class="container">


			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header page-scroll">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> Menu <i
						class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand page-scroll" href="#page-top">HR
					Automotive Services</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">

				<ul class="nav navbar-nav navbar-right">
					<li class="hidden"><a href="#page-top"></a></li>

					<li><a class="page-scroll" href="services">Directions</a></li>

					<li><a class="page-scroll" href="#about">About</a></li>
					<li><a class="page-scroll" href="#team">Team</a></li>

					<c:choose>
						<c:when test="${empty loggedInUser}">



							<li><a href="login" class="page-scroll">Login</a></li>
							<li><a href="register" class="page-scroll">Sign Up</a></li>
						</c:when>
						<c:otherwise>
							<c:if test="${loggedInUser.role eq 'ADMIN'}">
								<li><a href="profile" class="page-scroll">My Profile</a></li>
								<li><a class="page-scroll" href="users">Costumers</a></li>
								<li><a href="logout" class="page-scroll">Logout</a></li>

							</c:if>
							<c:if test="${loggedInUser.role eq 'USER'}">
								<li><a href="profile" class="page-scroll">My Profile</a></li>
								<li><a href="mycars" class="page-scroll">My Cars</a></li>


								<li><a href="logout" class="page-scroll">Logout</a></li>
							</c:if>
						</c:otherwise>
					</c:choose>





				</ul>
			</div>

		</div>

	</nav>


	<header>
		<div class="container">
			<div class="intro-text">
				<div class="intro-lead-in">Welcome to HR Automotive!</div>
				<c:if test="${loggedInUser.role eq 'USER'}">

					<div class="intro-heading">How can we help?</div>
				</c:if>


				<c:choose>
					<c:when test="${empty loggedInUser}">
						<a href="login" class="page-scroll btn btn-xl">Schedule
							Service</a>
					</c:when>
					<c:otherwise>
						<c:if test="${loggedInUser.role eq 'USER'}">
							<a href="mycars" class="page-scroll btn btn-xl">Schedule
								Service</a>
						</c:if>
					</c:otherwise>
				</c:choose>

			</div>
		</div>
	</header>
	<div class="blackPadding"></div>

	<!-- About Section -->



	<section id="about">
		<div class="container">
			<div id="content">
				<div class="text-center">
					<h2 class="section-heading">About</h2>

					<span class="shop"> <img src="static1/img/HRpics/7.jpg"
						class="img-responsive " alt=""> <img
						src="static1/img/HRpics/2.jpg" class="img-responsive " alt="">

						<img src="static1/img/HRpics/4.jpg" class="img-responsive " alt="">


						<img src="static1/img/HRpics/8.jpg" class="img-responsive " alt="">



					</span>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<ul class="timeline">
						<li>
							<div class="timeline-image">
								<img class="img-circle img-responsive"
									src="static1/img/HRpics/8.jpg" alt="">
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>2012</h4>
									<h4 class="subheading">Our Shop was opened</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">The Mechanic with over 20 years of
										experience decided it was time to run his own business.</p>
								</div>
							</div>
						</li>

						<li>
							<div class="timeline-image">
								<img class="img-circle img-responsive"
									src="static1/img/HRpics/6.jpg" alt="">
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>2014</h4>
									<h4 class="subheading">Business expanded</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">Two new professional mechanics joined
										the team.</p>
								</div>
							</div>
						</li>

						<li class="timeline-inverted">
							<div class="timeline-image">
								<img class="img-circle img-responsive"
									src="static1/img/HRpics/7.jpg" alt="">
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>March 2017</h4>
									<h4 class="subheading">We relocated to the new
										location(current)</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">Better location with larger space and
										modern equipment. Easier access for costumers. Waiting area
										with free coffee and cable TV.</p>
								</div>
							</div>
						</li>


						<li class="timeline-inverted">
							<div class="timeline-image">
								<h4>
									Be Part <br>Of Our <br>Story!
								</h4>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</section>

	<!-- Team Section -->
	<section id="team" class="bg-light-gray">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">Our Amazing Team</h2>
					<h3 class="section-subheading text-muted">European vehicles
						specialists.</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-4">
					<div class="team-member">
						<img src="static1/img/team/1.jpg"
							class="img-responsive img-circle" alt="">
						<h4>Roman</h4>
						<p class="text-muted">Owner and Lead Mechanic</p>

					</div>
				</div>
				<div class="col-sm-4">
					<div class="team-member">
						<img src="static1/img/team/2.jpg"
							class="img-responsive img-circle" alt="">
						<h4>Stepan</h4>
						<p class="text-muted">Junior Mechanic</p>

					</div>
				</div>
				<div class="col-sm-4">
					<div class="team-member">
						<img src="static1/img/team/3.jpg"
							class="img-responsive img-circle" alt="">
						<h4>Vitaliy</h4>
						<p class="text-muted">Mechanic/Body Man</p>

					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<p class="large text-muted">Certified mechanics with years of
						experience. Always ready to help.</p>
				</div>
			</div>
		</div>
	</section>

	<!-- Clients Aside -->
	<aside class="clients">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<a target="_blank" href="https://www.continental.com/en-us"> <img
						src="static1/img/logos/envato.jpg"
						class="img-responsive img-centered" alt="">
					</a>
				</div>
				<div class="col-md-3 col-sm-6">
					<a target="_blank" href="https://www.mishimoto.com/"> <img
						src="static1/img/logos/designmodo.jpg"
						class="img-responsive img-centered" alt="">
					</a>
				</div>
				<div class="col-md-3 col-sm-6">
					<a target="_blank" href="https://www.castrol.com/"> <img
						src="static1/img/logos/themeforest.jpg"
						class="img-responsive img-centered" alt="">
					</a>
				</div>
				<div class="col-md-3 col-sm-6">
					<a target="_blank" href="https://www.knfilters.com/"> <img
						src="static1/img/logos/creative-market.jpg"
						class="img-responsive img-centered" alt="">
					</a>
				</div>
			</div>
		</div>
	</aside>

	<!-- Contact Section -->
	<section id="contact">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">Contact Us</h2>
					<h3 class="section-subheading text-muted">We are open Mon-Fri
						9am-5pm</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<form action="dropaline" method="post" role="form"
						class="contactForm">
						<div class="row">
							<input type="hidden" name="from" value="${loggedInUser.email}" />
							<input type="hidden" name="to"
								value="hrautomotiveservicesinc@gmail.com"> <input
								type="hidden" name="fromname" value="${loggedInUser.fname}">
							<div class="span8 margintop10 form-group">
								<textarea class="form-control" name="message" rows="7"
									data-rule="required" data-msg="Please write something for me"
									placeholder="Message"></textarea>
								<p class="text-left">
									<button class="btn btn-large btn-warning" type="submit">Send
										message</button>
								</p>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="footer.jsp" />






	<script src="static1/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="static1/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"
		integrity="sha384-mE6eXfrb8jxl0rzJDBRanYqgBxtJ6Unn4/1F7q4xRRyIw7Vdg9jP4ycT7x1iVsgb"
		crossorigin="anonymous"></script>

	<!-- Contact Form JavaScript -->
	<script src="static1/js/jqBootstrapValidation.js"></script>
	<script src="static1/js/contact_me.js"></script>

	<!-- Theme JavaScript -->
	<script src="static1/js/agency.min.js"></script>

</body>
</html>