<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>

<head>
	<title>CollegeSelector.ca</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="assets/css/main.css" />
</head>

<body>

	<!-- Header -->
	<header id="header" class="alt">
	
		
			<%
		if(session.getAttribute("email")==null){
			response.sendRedirect("login_page.jsp");
		}
				
				%>
				Welcome ${email}


	</header>
		<form action ="logout"  method="get">
          <input style= "margin-top: 25px;" type ="submit" value = "logout">
          </form>
	


	<!-- Banner -->
	<section id="banner">
		<div class="inner">
			<header>
				<h1>This is CollegeSelector.ca</h1>
				<p><br />300+ programs

					30,000 full-time students

					8,000+ graduates every year

					500+ career options
					Study in Ontario
				</p>
		
			</header>
			<a href="#main" class="button big scrolly">Learn More</a>
		</div>
	</section>

	<!-- Main -->
	<div id="main">

		<!-- Section -->
		<section class="wrapper style1">
			<div class="inner">
				<!-- 2 Columns -->
				<div class="flex flex-2">
					<div class="col col1">
						<div class="image round fit">
							<a href="generic.html" class="link"><img src="images/student_pic.jpg" alt="" /></a>
						</div>
					</div>
					<div class="col col2">
						<h3>Select A city where you want to study ?</h3>
						<a href="toronto_colleges.jsp" class="button">Toronto</a>
						<a href="ottawa_colleges.jsp" class="button">Ottawa</a>
						<a href="waterloo_colleges.jsp" class="button">Waterloo</a>

					</div>
				</div>
			</div>
		</section>




	</div>

	<!-- Footer -->
	<footer id="footer">
		<div class="copyright">
			<ul class="icons">
				<li><a href="https://twitter.com/" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
				<li><a href="https://www.facebook.com/" class="icon fa-facebook"><span class="label">Facebook</span></a>
				</li>
				<li><a href="https://www.instagram.com/" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
				<li><a href="https://www.snapchat.com/" class="icon fa-snapchat"><span class="label">Snapchat</span></a>
				</li>
			</ul>
			<p>&copy; CollegeSelector.ca </p>
		</div>
	</footer>




</body>

</html>