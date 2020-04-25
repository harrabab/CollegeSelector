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
		<div class="logo">CollegeSelector.ca</div><p style="color:black;">Hi ${email}</p> 
<%
		if(session.getAttribute("email")==null){
			response.sendRedirect("login.jsp");
		}
				
				%>
	</header>
	<p>  Hi ${email}</p>

	<!-- Main -->
	<div id="main">
		<section class="wrapper style1">
			<div class="inner">

				<header class="align-center">
					<h1>Waterloo</h1>
					<p>Waterloo is a city in Ontario, Canada. It is the smallest of three cities in the Regional
						Municipality of Waterloo (and previously in Waterloo County, Ontario), and is adjacent to the
						city of Kitchener.

						Kitchener and Waterloo are often jointly referred to as "Kitchener–Waterloo", "KW", or the "Twin
						Cities" (when the reference includes the nearby city of Cambridge, Ontario, the term
						"Tri-Cities" or "the Tri-City" are used). While there were several unsuccessful attempts to
						combine the municipalities of Kitchener and Waterloo, following the 1973 establishment of the
						Region of Waterloo there was less motivation to do so. At the time of the 2016 census, the
						population of Waterloo was 104,986.[1]</p>
				</header>
					<header class="align-center"><img src="images/univ_waterloo.jpg" style="width: 85%; height: 369px;"></header>

				<!-- Content -->
				<h2 id="content">Colleges in Waterloo</h2>



				<hr class="major" />

				<!-- Elements -->

				<div class="row 200%">
					<div class="6u 12u$(medium)" style="width: 100%;">
						<header>
							<h2>University of Waterloo</h2>
							<p>The University of Waterloo (commonly referred to as Waterloo, UW, or UWaterloo) is a
								public research university with a main campus in Waterloo, Ontario, Canada. The main
								campus is on 404 hectares (998 acres) of land adjacent to "Uptown" Waterloo and Waterloo
								Park. The university offers academic programs administered by six faculties and thirteen
								faculty-based schools. The university also operates three satellite campuses and four
								affiliated university colleges.[9][10] Waterloo is a member of the U15, a group of
								research-intensive universities in Canada.[11] The University of Waterloo is most famous
								for its co-operative education (co-op) programs, which allow the students to integrate
								their education with applicable work experiences. The university operates the largest
								post-secondary co-operative education program in the world, with over 20,000
								undergraduate students in over 140 co-operative education programs.</p>
									<a href="waterloo_univ.jsp" class="button">Courses</a>
						</header>
						<header>
							<h2>Great Lakes Bible College</h2>
							<p>Great Lakes Bible College (formerly known as the School of Bible and Missions) is a
								private Bible college associated with the Churches of Christ located in Waterloo,
								Ontario, Canada. It is accredited by the Ontario Ministry of Education as a private
								university.</p>
									<a href="great_lakes.jsp" class="button">Courses</a>
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

</html>