
<!DOCTYPE html>
<html lang="en">
<head>
	<title>STUDENT Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	 <%request.getSession().setAttribute("user", "jangra");%>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="images/stu.jpg" alt="IMG">
				</div>

				<form class="login100-form validate-form" action="studlogincon.jsp" method="post" name="myform">
					<span class="login100-form-title">
						<a href="studlogin.jsp" style="color:darkBlue; font-size:30px" >Student</a><a href="adminlogin.jsp" style="font-size:30px">/AdminLogin</a>
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="number" name="SCHOLAR_NO" placeholder="scholar no...">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="password" id="pass" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div><br>
					<input type="checkbox" onclick="myFunction()">Show Password

                                              <script>
                                            function myFunction() {
                                           var x = document.getElementById("pass");
                                         if (x.type === "password") {
                                         x.type = "text";
                                          } else {
                                            x.type = "password";
                                           }
                                            }
                                            function validate()
                                            {
                                         	  
                                         	   var scl=document.myform.SCHOLAR_NO.value;
                                                    
                                         	  
                                         	  if((scl.length<9)||(scl.length>=10)){
                                         		  alert("Scholar number should be of 9 digits");
                                         		  return false;
                                         	  }
                                         	
                                                         
                                                        return true;
                                            }                 
                                          </script>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" onclick="return validate()">
							Login
						</button>
					</div>

					

					<div class="text-center p-t-136">
						<a class="txt2" href="signup.jsp">
							Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>