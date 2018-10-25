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
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
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



table {
    width:80%;
}
table, th ,td {
    border: 3px solid black;
    border-collapse: collapse;
   
}

th, td {
    padding: 13px;
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
  <p>Go to the<a href="index.jsp"><span>HOME PAGE </span></a>Now</p>


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
             
                <h2  style="font-style: oblique" align="center">Placement Record:-</h2><br>

<table >
<tr style="background:red">
<td>Full Name</td>
<td>Company name</td>
<td>Profile</td>
<td>Location</td>
<td>Package</td>
<td>Placement Date</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT student.FULL_NAME,company.COMP_NAME, placement.PROFILE, placement.LOCATION, placement.CTC,placement.PLACED_DATE FROM ((student INNER JOIN placement ON student.scholar_no = placement.scholar_no)INNER JOIN company ON company.COMP_ID = placement.COMP_ID)";                                                                        
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr style="color:SlateBlue">
<td><%=resultSet.getString("FULL_NAME") %></td>
<td><%=resultSet.getString("COMP_NAME") %></td>
<td><%=resultSet.getString("PROFILE") %></td>
<td><%=resultSet.getString("LOCATION") %></td>
<td><%=resultSet.getString("CTC") %></td>
<td><%=resultSet.getString("PLACED_DATE") %></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
 <p>Go to the<a href="index.jsp"><span>HOME PAGE </span></a>Now</p>
</body>
</html>