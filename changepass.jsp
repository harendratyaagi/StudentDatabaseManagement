<!DOCTYPE html>
<html lang="en">
  <head>

   
<style>
body {font-family: Arial, Helvetica, sans-serif; background-color:Chocolate;}


.container {
    border-radius: 40px;
    background-color:Bisque  ;
    padding: 20px;
    
}
input[type=text] {
    width: 200px;
    box-sizing: border-box;
    border: 2px solid RebeccaPurple ;
    border-radius: 4px;
    font-size: 15px;
    background-color: white;
    background-image: url('searchicon.png');
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
    width: 100%;
}
input[type=number] {
    width: 200px;
    box-sizing: border-box;
    border: 2px solid RebeccaPurple ;
    border-radius: 4px;
    font-size: 15px;
    background-color: white;
    background-image: url('searchicon.png');
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

input[type=number]:focus {
    width: 100%;
}
input[type=password] {
    width: 200px;
    box-sizing: border-box;
    border: 2px solid RebeccaPurple ;
    border-radius: 4px;
    font-size: 15px;
    background-color: white;
    background-image: url('searchicon.png');
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

input[type=password]:focus {
    width: 100%;
}
input[type=email] {
    width: 200px;
    box-sizing: border-box;
    border: 2px solid RebeccaPurple ;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('searchicon.png');
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

input[type=email]:focus {
    width: 100%;
}
</style>
</head>
<body>
  <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#"></a>
    <!-- END SCROLL TOP BUTTON -->

    <!--=========== BEGIN HEADER SECTION ================-->
    <header id="header">
      <!-- BEGIN MENU -->
      <div class="menu_area">
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
          <div class="container">
            <div class="navbar-header">
              <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
             
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <!-- LOGO -->
              <!-- TEXT BASED LOGO -->
             
                <h2  style="font-style: oblique" align="center">Change Your Password:-</h2><br>
                <p style=" margin-bottom: 40px;">Go to the <a href="studpage.jsp" style="color:Indigo "><span>Home Page</span></a>now</p>
<form action="changepasscon.jsp" method="post" name="myform">
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
                                        	   
                                                   
                                        	  if(pas!=cpas){
                                        		  alert("password should be match");
                                        		  return false;
                                        	  }
                                        	 
                                        	
                                                        
                                                       return true;
                                  }
                                           </script>
<table>
<tr><td>Email</td><td><input type="email" name="EMAIL" ></td></tr>
<tr><td>New Password</td><td><input type="password" name="PASSWORD" id="pass"></td></tr>
<tr><td>Confirm Password</td><td><input type="password" name="REPEAT_PASSWORD"  onkeyup='check();' /></td></tr>
<tr><td><input type="submit" value="Change Password" style="color:white;background:RebeccaPurple;" onclick="return validate()"></td></tr>
</table>
</form>
</html>