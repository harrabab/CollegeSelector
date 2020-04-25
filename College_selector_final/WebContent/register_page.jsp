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

	</header>

	<!-- Main -->
	<div id="main">
		<section class="wrapper style1">
			<div class="inner">

				<header class="align-center">
					<h1>Register to CollegeSelector.ca</h1>
					<p>Students can apply to all colleges through  CollegeSelector.ca, not directly to the colleges you’re interested in. This means that with one form, you can apply for up to five programs, and up to three of these can be at any one college.

						Please note: application steps below are for domestic students only. International students should visit the application process for international students page.
						
						To review, here are the steps in more detail:

						Step 1 - Complete Registeration form on the CollegeSelector.ca 
						
						Step 2 - Login to the CollegeSelector.ca and select college and course you want to choose.
						
						Step 3 - CollegeSelector.ca provide the option to check your validity.

						step 4 - Make Payement

						Please note that there is a non-refundable $95 application fee.
						
						
						</p>
				</header>

				<!-- Content -->
				<h2 id="content">Registartion form</h2>



				<hr class="major" />

				<!-- Elements -->

				<div class="row 200%">
					<div class="6u 12u$(medium)" style="width: 100%;">
						<form action="register" method="post" onsubmit="return myfun()">
							<div class="container">
							  <h1>Register</h1>
							  <p>Please fill in this form to create an account.</p>
							  <hr>

							  <label for="name"><b>Name</b></label>
							  <input type="text" placeholder="Enter name" id="nameid" name="name" required>
						  
							  <label for="email"><b>Email</b></label>
							  <input type="text" placeholder="Enter Email" id="ename" name="ename" required>
						  
							  <label for="psw"><b>Password</b></label>
							  <input type="password" placeholder="Enter Password" id="psw" name="psw" required>
						  
							  <label for="psw-repeat"><b>Repeat Password</b></label>
							  <input type="password" placeholder="Repeat Password" id="pswrepeat" name="psw-repeat" required>
							  <hr>
							  <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
							  
							  <input type="submit" class="registerbtn">
						  
							</div>
							
							<div class="container signin">
							  <p>Already have an account? <a href="login_page.html">Sign in</a>.</p>
							</div>
						  </form>
					


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


<script type="text/javascript">
function myfun(){
	
	var name = document.getElementById("nameid").value;
	var ename = document.getElementById("ename").value;
	var psw = document.getElementById("psw").value;
	var pswrepeat = document.getElementById("pswrepeat").value;
	
    var nameRGEX = /^[a-z ,.'-]+$/i;
    var emailRGEX = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    
    var fnameresult = nameRGEX.test(name);
    var emailresult = emailRGEX.test(ename);
    
    if (fnameresult == false) {
        alert('Please enter a valid first name');
        return false;

    }
    
    else{
    	
    	if(emailresult == false){
    		  alert('Please enter a valid email');	
    		  return false;
    	}
    	else{
    		
    		if(!(psw == pswrepeat)){
    			
    			  alert('Password donot match');
    			  return false;
    		}
    		else{
    			alert("Register successfull");
    			return true;
    		}
    	}
    }
    
    
	

	
}
</script>

</body>

</html>