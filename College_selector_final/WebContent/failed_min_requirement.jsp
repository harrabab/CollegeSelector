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

<body class="subpage">

	<!-- Header -->
	<header id="header" class="alt">
		<div class="logo">CollegeSelector.ca</div>
		<%
		if(session.getAttribute("email")==null){
			response.sendRedirect("login.jsp");
		}
				
				%>

	</header>

	<!-- Main -->
	<div id="main">
		<section class="wrapper style1">
			<div class="inner">

				<header class="align-center">
					<h1>Humber</h1>
					<p></p>
				</header>
					<p>  Hi ${email}</p>

				<!-- Content -->
			



				<hr class="major" />

				<!-- Elements -->

				<div class="row 200%">
					<div class="6u 12u$(medium)" style="width: 100%;">
						<header>
							<h2>Failed Minimum requirement</h2>
							<p>You have to have minimum percentage of 60% to enroll into this course</p>
							<p>Try in other courses</p>
							
						</header>
						<header>




					</div>
					
					

				</div>
			</div>
		</section>
	</div>

	<!-- Footer -->
	<footer id="footer">
		<div class="copyright">
			<ul class="icons">
				<li><a href="https://twitter.com/" class="icon fa-twitter"><span
						class="label">Twitter</span></a></li>
				<li><a href="https://www.facebook.com/"
					class="icon fa-facebook"><span class="label">Facebook</span></a></li>
				<li><a href="https://www.instagram.com/"
					class="icon fa-instagram"><span class="label">Instagram</span></a></li>
				<li><a href="https://www.snapchat.com/"
					class="icon fa-snapchat"><span class="label">Snapchat</span></a></li>
			</ul>
			<p>&copy; CollegeSelector.ca</p>
		</div>
	</footer>




</body>

</html>