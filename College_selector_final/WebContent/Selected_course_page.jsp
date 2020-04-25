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
		<div class="logo">CollegeSelector.ca   </div><p style="color:black;">Hi ${email}</p>  
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
					<h1>Selected Course</h1>
					 <form class="modal-content animate" action="viewlist" method="get">
						
						<button type="submit">View Course Enrolled</button>
				
							
						  </form>
						
				</header>

				<!-- Content -->
				<h2 id="content">You can select one course at a Time</h2>
<%
Object name = request.getAttribute("propertyList1");
Object cityname = request.getAttribute("propertyList2");
Object coursename = request.getAttribute("propertyList3");
Object collegename = request.getAttribute("propertyList4");

if(!(name == null)){

out.println("Name  : " +name);
out.println("City name : " +cityname);
out.println("Course name : " +coursename);
out.println("College name: " +collegename);
}



%>



				<hr class="major" />

				<!-- Elements -->

				<div class="row 200%">
						<header class="align-center">
					<h1>Apply for Offer letter</h1>
					 <form class="modal-content animate" action="appliied_offer" method="get">
						
						<button type="submit">Apply</button>
				
							
						  </form>
						
				</header>
					

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