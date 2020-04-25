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
		

	</header>

	<!-- Main -->
	<div id="main">
		<section class="wrapper style1">
			<div class="inner">

				<header class="align-center">
					<h1>Great Lakes</h1>
					<p></p>
				</header>
					<p>  Hi ${email}</p>
							<header class="align-center"><img src="images/great_lakes.jpg" style="width: 85%; height: 369px;"></header>
	<%
		if(session.getAttribute("email")==null){
			response.sendRedirect("login.jsp");
		}
				
				%>
				<!-- Content -->
			



				<hr class="major" />

				<!-- Elements -->

				<div class="row 200%">
					<div class="6u 12u$(medium)" style="width: 100%;">
						<header>
							<h2>German</h2>
							<p>These courses are aimed at young learners. Open to students with previous knowledge of German and to beginners.</p>
							
						</header>
						<header>
							<h2>English</h2>
							<p>Exclusively for learners who speak English as an additional language, this program offers five levels of instruction, from Foundations to Advanced
							 levels and ultimately the English for Academic Purposes (EAP) level. When you complete the EAP level (and pass one General Elective course), 
							you will receive a General Arts and Science Ontario College Certificate and may apply to other Sheridan programs without further language testing.</p>
							
						</header>
						
						 <header>
							<h2>Select Course</h2>
							
							 <form class="modal-content animate" action="Selected_course" method="post">
						
							<div class="container">
							<select  name="subject">
							<option value= "37" >German</option>
							<option value = "38">English</option>
							 </select>
							  <br>
								
							<button type="submit" id="submit_button">Select Course</button>
							</div>
							
							

						
							
						  </form>
							
						</header>


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