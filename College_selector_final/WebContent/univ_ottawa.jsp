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

		<%
			if (session.getAttribute("email") == null) {
				response.sendRedirect("login.jsp");
			}
		%>
	</header>
	<p>Hi ${email}</p>

	<!-- Main -->
	<div id="main">
		<section class="wrapper style1">
			<div class="inner">

				<header class="align-center">
					<h1>University of Ottawa</h1>
					<p></p>
				</header>

				<!-- Content -->
	<header class="align-center">
					<img src="images/univ_ottawa.jpg" style="width: 85%; height: 369px;">
				</header>



				<hr class="major" />

				<!-- Elements -->

				<div class="row 200%">
					<div class="6u 12u$(medium)" style="width: 100%;">
						<header>
							<h2>Farsi</h2>
							<p>Farsi – or Persian – is the main language in Iran and is a
								significant language in many West Asian and South Asian
								countries. Spoken by more than 200 million people worldwide,
								Farsi comes with a rich literary heritage. Whether you are
								travelling for business, marrying into a family where Farsi is
								the main language, or exploring the heritage of your ancestors,
								our courses in Farsi can help you join the conversation. A
								command of Farsi can also be helpful if you are interested in
								exploring Persian culture, literature and poetry, which continue
								to influence the modern world.</p>
						</header>
						<header>
							<h2>Persian</h2>
							<p> Persian – is the main language in Iran and is a
								significant language in many West Asian and South Asian
								countries. Spoken by more than 200 million people worldwide,
								Farsi comes with a rich literary heritage. Whether you are
								travelling for business, marrying into a family where Farsi is
								the main language, or exploring the heritage of your ancestors,
								our courses in Farsi can help you join the conversation. A
								command of Farsi can also be helpful if you are interested in
								exploring Persian culture, literature and poetry, which continue
						</header>
						
						<header>
							<h2>Minimum requirement</h2>
							<p>Is your percentage is greater than 60%  in Bachelor's<p>
							
							 <form class="modal-content animate" action="min_req_carl" method="post">
						
							<div class="container">
							<select id="min"  onchange="myFunction()">
							<option value= "select_yes_or_no" >Select one option</option>
							<option value= "yes" >Yes</option>
							<option value = "no">No</option>
							 </select>
							  <br>
						
							</div>
													
						  </form>
							
						</header>
						
						 <header>
							<h2>Select Course</h2>
							
							 <form class="modal-content animate" action="Selected_course" method="post">
						
							<div class="container">
							<select  name="subject">
							<option value= "39" >Farsi</option>
							<option value = "310">Persian</option>
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
	<script type="text/javascript">
var a =document.getElementById("submit_button");
a.disabled = true; 

function myFunction() {
	var b = document.getElementById("min").value;
	
	if(b == "yes"){
		
		a.disabled = false; 
		console.log(b);
		
	}
	
	
}



</script>




</body>

</html>