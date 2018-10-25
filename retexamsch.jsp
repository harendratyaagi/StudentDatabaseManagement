<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "studb";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection con = null;
Statement st = null;
ResultSet rs = null;
Connection conn = null;
Statement st1 = null;
ResultSet rs1 = null;
Connection con2 = null;
Statement st2 = null;
ResultSet rs2 = null;
%>
<!DOCTYPE html>
<html lang="en">
  <head>

    <!-- Basic Page Needs
    ================================================== -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <title>MANIT : Student Page</title>

    <!-- Mobile Specific Metas
    ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon -->
    <link rel="shortcut icon" type="image/icon" href="img/logo2.png"/>

    <!-- CSS
    ================================================== -->       
    <!-- Bootstrap css file-->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Font awesome css file-->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- Superslide css file-->
    <link rel="stylesheet" href="css/superslides.css">
    <!-- Slick slider css file -->
    <link href="css/slick.css" rel="stylesheet"> 
    <!-- Circle counter cdn css file -->
    <link rel='stylesheet prefetch' href='https://cdn.rawgit.com/pguso/jquery-plugin-circliful/master/css/jquery.circliful.css'>  
    <!-- smooth animate css file -->
    <link rel="stylesheet" href="css/animate.css"> 
    <!-- preloader -->
    <link rel="stylesheet" href="css/queryLoader.css" type="text/css" />
    <!-- gallery slider css -->
    <link type="text/css" media="all" rel="stylesheet" href="css/jquery.tosrus.all.css" />    
    <!-- Default Theme css file -->
   <link id="switcher" href="css/themes/default-theme.css" rel="stylesheet">
    <!-- Main structure css file -->
    <link href="style.css" rel="stylesheet">
   
    <!-- Google fonts -->
    <link href='http://fonts.googleapis.com/css?family=Merriweather' rel='stylesheet' type='text/css'>   
    <link href='http://fonts.googleapis.com/css?family=Varela' rel='stylesheet' type='text/css'>    

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->  
<!--start form style-->
<style>
body {font-family: Arial, Helvetica, sans-serif; background-color:Chocolate;}

input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 2px solid red;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}

input[type=submit] {
    background-color: blue;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: deeppink;
}

.container {
    border-radius: 40px;
    background-color:Bisque  ;
    padding: 20px;
    
}


.button {
  padding: 15px 15px;
  font-size: 16px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: Indigo  ;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: deeppink}

.button:active {
  background-color: black;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
body {
     
    transition: background-color .5s;
    background-color:Chocolate;
}

.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.sidenav a:hover {
    color: deeppink;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

#main {
    transition: margin-left .5s;
    padding: 16px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
table {
    width:100%;
}
table, th ,td {
    border: 3px solid black;
    border-collapse: collapse;
   
}

th, td {
    padding: 15px;
    text-align: left;
}

</style>

<!-- end form style-->
<%response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);%>
  </head>
  <body>
  <%String u = (String) request.getSession().getAttribute("user");
    if (u != null ) {
    System.out.println("user != null");
    out.print("Welcome "+u);
    }else{
    System.out.println("user == null");
    response.sendRedirect("slogout.jsp");
    }%>


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
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <!-- LOGO -->
              <!-- TEXT BASED LOGO -->
              <a class="navbar-brand" style="color:deeppink" href="studpage.jsp">WeLcOmE<span > StuDent</span></a>            
              <!-- IMG BASED LOGO  -->
               <!-- <a class="navbar-brand" href="studpage.jsp"><img src="img/logo.png" alt="logo"></a>  -->         
                     
            </div>
            <div id="navbar" class="navbar-collapse collapse">
         
              
               
                
              
               <ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
                 
          <a href="admlogout.jsp" class="button" >Logout</a>
           <li><a href="changepass.jsp" style="font-size:16px;color:Maroon  ">change_password</a></li>
              </ul>      
              <ul id="top-menu" class="nav navbar-nav navbar-left main-nav">
                <li><a href="studpage.jsp" style="font-size:16px;color:blue" >Home</a></li>
                 <li><a href="retsubj.jsp" style="font-size:16px;color:blue">Subjects</a></li>
                  </ul> 
              <ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
                 
          <div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
   <a href="retproject.jsp">Project Details</a>
   <a href="retexamsch.jsp">Exam_time_table</a>
  <a href="retresult.jsp">Result</a>
</div>

<div id="main">
  
  <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Notifications</span>
</div>

<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
    document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
    document.body.style.backgroundColor = "white";
}
</script>
              </ul>           
                  
        
               
            </div><!--/.nav-collapse -->
          </div>     
        </nav>  
      </div>
      <!-- END MENU -->    
    </header>
    <!--=========== END HEADER SECTION ================--> 

  

        <!--=========== BEGIN COURSE BANNER SECTION ================-->
    <section id="imgStud">
      
    </section>
    <!--=========== END COURSE BANNER SECTION ================-->
    
    <!--=========== BEGIN COURSE BANNER SECTION ================-->
    <section id="courseArchive">
      <div class="container">
        <div class="row">
          <!-- start course content -->
          <div class="col-lg-8 col-md-8 col-sm-8">
            <div class="courseArchive_content">
              <!-- start blog archive  -->
              <div class="row">
                <!-- start single blog archive -->
                
                    
                   
                  </div>
                </div>
                <h2  style="font-style: oblique" align="center">Your Exam Schedule :-</h2><br>



<form action="" method="post">
<p align="center"><b>Select Semester:-</b>
<select name="sem"  style="margin-left:200px;border:2px solid:black; border-style:groove;width:180px">
<option value="0">Select semester</option>
<% 
try{
	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studb","root","root");
	 st=con.createStatement();
	 rs=st.executeQuery("select distinct semester from subject_y  order by semester");
while(rs.next()){
%>
<option value="<%=rs.getString(1) %>"><%=rs.getString(1)%></option>
<% 	
}
}catch(Exception e){
	e.printStackTrace();
}
%>
</select></p><br><br>
<p align="center"><b>Select Exam Type:-</b>
<select name="exam"  style="margin-left:200px;border:2px solid:black; border-style:groove;width:180px;" >
<option value="0">Select exam type</option>
<% 
try{
	 con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/studb","root","root");
	 st2=con2.createStatement();
	 rs2=st2.executeQuery("select distinct exam_type from exam  order by exam_type");
while(rs2.next()){
%>
<option value="<%=rs2.getString(1) %>"><%=rs2.getString(1)%></option>
<% 	
}
}catch(Exception e){
	e.printStackTrace();
}
%>
</select></p><br>
<input type="submit" value="Get Exam Schedule" onclick="this.form.submit();" style="margin-left:950px;">
<% 
try{
	 conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/studb","root","root");
	 st1=conn.createStatement();
	 rs1=st1.executeQuery("SELECT distinct subject_code,exam_type,exam_date,exam_time,room_no from exam where SUBJECT_CODE in(select SUBJECT_CODE from subject_y where SEMESTER='"+request.getParameter("sem")+"') and exam_type='"+request.getParameter("exam")+"'");
%>

<table style="margin-left:200px;">
<tr style="background:red">
<td>Subject Code</td>
<td>Exam Type</td>
<td>Exam Date</td>
<td>Exam Time</td>
<td>Room no.</td>
</tr>
<% 
while(rs1.next()){
	%>
	<tr style="color:blue">
<td><%=rs1.getString(1) %></td>
<td><%=rs1.getString(2) %></td>
<td><%=rs1.getString(3) %></td>
<td><%=rs1.getString(4) %></td>
<td><%=rs1.getString(5) %></td>
	</tr>
	<%
	}
}catch(Exception e){
	
}
	%>
</table>
</form>
</body>
</html>