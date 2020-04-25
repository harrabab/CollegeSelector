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

		
					<h1>Toronto</h1>
					<p>Toronto is the provincial capital of Ontario and the most populous city in Canada, with a
						population of 2,731,571 as of 2016. Current to 2016, the Toronto census metropolitan area (CMA),
						of which the majority is within the Greater Toronto Area (GTA), held a population of 5,928,040,
						making it Canada's most populous CMA. The city is the anchor of the Golden Horseshoe, an urban
						agglomeration of 9,245,438 people (as of 2016) surrounding the western end of Lake Ontario.[13]
						Toronto is an international centre of business, finance, arts, and culture, and is recognized as
						one of the most multicultural and cosmopolitan cities in the world</p>
						
				</header>
				<header class="align-center"><img src="images/toronto.png" style="width: 85%; height: 369px;"></header>
	
				<!-- Content -->
				<h2 id="content">Colleges in Toronto</h2>



				<hr class="major" />

				<!-- Elements -->

				<div class="row 200%">
					<div class="6u 12u$(medium)" style="width: 100%;">
						<header>
							<h2>Humber College</h2>
							<p>The Humber Institute of Technology and Advanced Learning, commonly known as Humber
								College, was founded in 1967. Humber is a publicly funded college in Toronto, Ontario,
								Canada. Humber has three main campuses, Humber North campus, Lakeshore campus, and
								Humber Orangeville campus.</p>
								<a href="humber_college.jsp" class="button">Courses</a>
						</header>
						<header>
							<h2>Centennial College </h2>
							<p>Centennial College of Applied Arts and Technology is a diploma and degree granting
								college located in Toronto, Ontario, Canada. It is the oldest publicly funded college in
								Ontario.[1] Its campuses are primarily situated in the east side of the city,
								particularly in Scarborough,[1] with a new aerospace centre currently under construction
								at Downsview.[2] The enabling legislation is the Ministry of Training, Colleges and
								Universities Act.[3] Centennial College is recognized as one of the most culturally
								diverse post-secondary institutions in Ontario.[1] Almost 100 ethno-cultural groups are
								represented and 80 languages are spoken on campus.[1] In 2016, Centennial was ranked as
								one of Canada's Top 10 Research Colleges for the first time in its history.[4] Its main
								research facilities are its Wearable, Interactive and Mobile Technologies Access Centre
								in Healthcare (WIMTACH), established in 2015 through a $1.75 million federal grant.[5]
								and its new aerospace innovation hub, currently under construction at the former de
								Havilland plant in west-end Toronto.[6]</p>
									<a href="centennial_college.jsp" class="button">Courses</a>
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