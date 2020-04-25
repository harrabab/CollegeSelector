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
		<div class="logo">CollegeSelector.ca <p style="color:black;">Hi ${email}</p>  </div><p style="color:black;">Hi ${email}</p>  
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

		
					<h1 style="color:green">Payment Successful !</h1>
					<p>Your payment has been successful and your application has been submited It will take 15 days to complete the process</p>
						
				</header>
				
	
				<!-- Content -->
				<h2 id="content">Thank you</h2>



				<hr class="major" />

				<!-- Elements -->

				

		
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
				<li><a href="https://www.instagram.com/" class="icon fa-instagram"><span
							class="label">Instagram</span></a></li>
				<li><a href="https://www.snapchat.com/" class="icon fa-snapchat"><span class="label">Snapchat</span></a>
				</li>
			</ul>
			<p>&copy; CollegeSelector.ca </p>
		</div>
	</footer>




</body>

</html>l>