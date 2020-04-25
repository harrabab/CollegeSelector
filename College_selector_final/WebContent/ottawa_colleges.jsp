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


	<!-- Main -->
	<div id="main">
		<section class="wrapper style1">
			<div class="inner">

				<header class="align-center">
					<h1>Ottawa</h1>
					<p>Ottawa is Canada’s capital, in the east of southern Ontario, near the city of Montréal and the
						U.S. border. Sitting on the Ottawa River, it has at its centre Parliament Hill, with grand
						Victorian architecture and museums such as the National Gallery of Canada, with noted
						collections of indigenous and other Canadian art. The park-lined Rideau Canal is filled with
						boats in summer and ice-skaters in winter.</p>
				</header>
					<header class="align-center"><img src="images/ottawa.jpg"" style="width: 85%; height: 369px;"></header>
				

				<!-- Content -->
			



				<hr class="major" />

				<!-- Elements -->

				<div class="row 200%">
					<div class="6u 12u$(medium)" style="width: 100%;">
						<header>
							<h2>University of Ottawa</h2>
							<p>The University of Ottawa was first established as the College of Bytown in 1848 by the
								first bishop of the Catholic Archdiocese of Ottawa, Joseph-Bruno Guigues.[9] Placed
								under the direction of the Oblates of Mary Immaculate, it was renamed the College of
								Ottawa in 1861 and received university status five years later through a royal
								charter.[10] On 5 February 1889, the university was granted a pontifical charter by Pope
								Leo XIII, elevating the institution to a pontifical university.[11] The University was
								reorganized on July 1, 1965, as a corporation, independent from any outside body or
								religious organization. As a result, the civil and pontifical charters were kept by the
								newly created Saint Paul University, federated with the university. The remaining civil
								faculties were retained by the reorganized university.</p>
								<a href="univ_ottawa.jsp" class="button">Courses</a>
						</header>
						<header>
							<h2>Carleton University</h2>
							<p>Carleton University is a public comprehensive university in Ottawa, Ontario, Canada.
								Founded in 1942 as Carleton College, a private, non-denominational evening college to
								serve veterans returning from World War II,[4] the institution was chartered as a
								university by the provincial government in 1952 through The Carleton University Act. The
								legislation was subsequently amended in 1957 to give the institution its current
								name.[4] The university moved to its current campus in 1959,[4] expanding rapidly
								throughout the 1960s amid broader efforts by the provincial government to increase
								support to post-secondary institutions and enhance access to higher education.</p>
								<a href="carleton_univ.jsp" class="button">Courses</a>
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