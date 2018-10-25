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
    width:65%;
}
table, th ,td {
    border: 3px solid black;
    border-collapse: collapse;
   
}

th, td {
    padding: 10px;
    text-align: left;
}

</style>

<!-- end form style-->

  </head>
  <body>
  
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
             
                <h2  style="font-style: oblique" align="center">Visited Company:-</h2><br>

<table >
<tr style="background:red">
<th>Company Name</th>
<th>Eligibility</th>
<th>Visiting Date</th>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from company ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr style="color:deeppink">
<td><%=resultSet.getString("COMP_NAME") %></td>
<td><%=resultSet.getString("ELIGIBILITY") %></td>
<td><%=resultSet.getString("VISITING_DATE") %></td>

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