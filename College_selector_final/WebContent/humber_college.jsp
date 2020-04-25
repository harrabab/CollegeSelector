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
			<header class="align-center">
					<img src="images/humber_image.jpg" style="width: 85%; height: 369px;">
				</header>
			



				<hr class="major" />

				<!-- Elements -->

				<div class="row 200%">
					<div class="6u 12u$(medium)" style="width: 100%;">
						<header>
							<h2>Medical</h2>
							<p>Biomedical research (or experimental medicine) encompasses
								a wide array of research, extending from "basic research" (also
								called bench science or bench research),[1] – involving
								fundamental scientific principles that may apply to a
								preclinical understanding – to clinical research, which involves
								studies of people who may be subjects in clinical trials. Within
								this spectrum is applied research, or translational research,
								conducted to expand knowledge in the field of medicine. Both
								clinical and preclinical research phases exist in the
								pharmaceutical industry's drug development pipelines, where the
								clinical phase is denoted by the term clinical trial. However,
								only part of the clinical or preclinical research is oriented
								towards a specific pharmaceutical purpose. The need for
								fundamental and mechanism-based understanding, diagnostics,
								medical devices, and non-pharmaceutical therapies means that
								pharmaceutical research is only a small part of medical
								research.</p>
							
						</header>
						<header>
							<h2>Computer</h2>
							<p>Computer Programmer diploma program is designed to prepare
								students for a wide variety of employment opportunities within
								the dynamic and ever-growing field of programming. In addition
								to learning programming in a variety of languages, from Java and
								C# to ASP.NET, PHP, Python and Android programming, you will
								gain an in-depth understanding and use of industry-standard
								operating systems and database management systems.</p>
							
						</header>
							<header>
							<h2>Minimum requirement</h2>
							<p>Is your percentage is greater than 60% in Bachelor's<p>
							
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
							<option value= "31" >Medical</option>
							<option value = "32">Computer</option>
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