<!DOCTYPE html>
<html lang="en">
<head>
	<title>Student Signup</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images_signup/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor_signup/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts_signup/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts_signup/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts_signup/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor_signup/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor_signup/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor_signup/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor_signup/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor_signup/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css_signup/util.css">
	<link rel="stylesheet" type="text/css" href="css_signup/main.css">
<!--===============================================================================================-->
<style>
#message {
    display:none;
    background: #f1f1f1;
    color: #000;
    position: relative;
    padding: 20px;
    margin-top: 10px;
}

#message p {
    padding: 10px 35px;
    font-size: 18px;
}

/* Add a green text color and a checkmark when the requirements are right */
.valid {
    color: green;
}

.valid:before {
    position: relative;
    left: -35px;
  
}

/* Add a red text color and an "x" when the requirements are wrong */
.invalid {
    color: red;
}

.invalid:before {
    position: relative;
    left: -35px;
    
}
</style>
</head>
<body style="background-color:#999999;">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="login100-more" style="background-image: url('images_signup/bg-01.jpg');"></div>

			<div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50">
				<form class="login100-form validate-form" action="signupcon.jsp" method="post" name="myform" onsubmit="return checkCheckBoxes(this);">
					<span class="login100-form-title p-b-59">
						Sign Up
					</span>

					<div class="wrap-input100 validate-input" data-validate="Name is required">
						<span class="label-input100">Full Name</span>
						<input class="input100" type="text" name="FULL_NAME" placeholder="Name...">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<span class="label-input100">Email</span>
						<input class="input100" type="email" name="EMAIL" placeholder="Email add...">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Username is required">
						<span class="label-input100">Username</span>
						<input class="input100" type="text" name="USERNAME" placeholder="Username...">
						<span class="focus-input100"></span>
					</div>
                                        
                                         <div class="wrap-input100 validate-input" data-validate="Scholar_no. is required">
						<span class="label-input100">Scholar_NO.</span>
						<input class="input100" type="number" name="SCHOLAR_NO" placeholder="Scholar_no....">
						<span class="focus-input100"></span>
					</div>


					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="PASSWORD" name="PASSWORD" id="pass"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,12}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required placeholder="*************" onkeyup='check();' />
						<span class="focus-input100"></span>
						<input type="checkbox" onclick=" return myFunction()" style="margin-left:250px;">Show Password
					</div>
				
				  <div id="message">
                                               <h3>Password must contain the following:</h3>
                                               <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
                                               <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
                                               <p id="number" class="invalid">A <b>number</b></p>
                                               <p id="length" class="invalid">Minimum <b>8 characters</b></p>
                                             </div>
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
                                        	   var pas=document.myform.PASSWORD.value;
                                        	   var cpas=document.myform.REPEAT_PASSWORD.value;
                                        	   var scl=document.myform.SCHOLAR_NO.value;
                                                   
                                        	  if(pas!=cpas){
                                        		  alert("password should be match");
                                        		  return false;
                                        	  }
                                        	  if((scl.length<9)||(scl.length>=10)){
                                        		  alert("Scholar number should be of 9 digits");
                                        		  return false;
                                        	  }
                                        	
                                                        
                                                       return true;
                                  }
                                               function checkCheckBoxes(theForm) {
    if (
    theForm.MyCheckbox.checked == false) 
    {
        alert ('You must be agree to the terms of users!');
        return false;
    } else {    
        return true;
    }
}
                                         
                                             
                                             				
                                             
                                             var myInput = document.getElementById("psw");
                                             var letter = document.getElementById("letter");
                                             var capital = document.getElementById("capital");
                                             var number = document.getElementById("number");
                                             var length = document.getElementById("length");

                                             // When the user clicks on the password field, show the message box
                                             myInput.onfocus = function() {
                                                 document.getElementById("message").style.display = "block";
                                             }

                                             // When the user clicks outside of the password field, hide the message box
                                             myInput.onblur = function() {
                                                 document.getElementById("message").style.display = "none";
                                             }

                                             // When the user starts to type something inside the password field
                                             myInput.onkeyup = function() {
                                               // Validate lowercase letters
                                               var lowerCaseLetters = /[a-z]/g;
                                               if(myInput.value.match(lowerCaseLetters)) {  
                                                 letter.classList.remove("invalid");
                                                 letter.classList.add("valid");
                                               } else {
                                                 letter.classList.remove("valid");
                                                 letter.classList.add("invalid");
                                               }
                                               
                                               // Validate capital letters
                                               var upperCaseLetters = /[A-Z]/g;
                                               if(myInput.value.match(upperCaseLetters)) {  
                                                 capital.classList.remove("invalid");
                                                 capital.classList.add("valid");
                                               } else {
                                                 capital.classList.remove("valid");
                                                 capital.classList.add("invalid");
                                               }

                                               // Validate numbers
                                               var numbers = /[0-9]/g;
                                               if(myInput.value.match(numbers)) {  
                                                 number.classList.remove("invalid");
                                                 number.classList.add("valid");
                                               } else {
                                                 number.classList.remove("valid");
                                                 number.classList.add("invalid");
                                               }
                                               
                                               // Validate length
                                               if(myInput.value.length >= 8) {
                                                 length.classList.remove("invalid");
                                                 length.classList.add("valid");
                                               } else {
                                                 length.classList.remove("valid");
                                                 length.classList.add("invalid");
                                               }
                                             }
                                             
                                          </script>

					<div class="wrap-input100 validate-input" data-validate = "Repeat Password is required">
						<span class="label-input100">Repeat Password</span>
						<input class="input100" type="PASSWORD" name="REPEAT_PASSWORD"  placeholder="*************" onkeyup='check();' />
						<span class="focus-input100"  id='message'></span>
					</div><br>
					

					<div class="flex-m w-full p-b-33">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="CHECKBOX" name="MyCheckbox" value="check"  >
							<label class="label-checkbox100" for="ckb1">
								<span class="txt1">
									I agree to the
									<a href="#" class="txt2 hov1">
										Terms of User
									</a>
								</span>
							</label>
						</div>

						
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn" onclick="return validate()" >
								Sign Up
							</button>
						</div>

						<a href="studlogin.jsp" class="dis-block txt3 hov1 p-r-30 p-t-10 p-b-10 p-l-30">
							Sign in
							<i class="fa fa-long-arrow-right m-l-5"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
<!--===============================================================================================-->
	<script src="vendor_signup/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor_signup/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor_signup/bootstrap/js/popper.js"></script>
	<script src="vendor_signup/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor_signup/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor_signup/daterangepicker/moment.min.js"></script>
	<script src="vendor_signup/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor_signup/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js_signup/main.js"></script>

</body>
</html>