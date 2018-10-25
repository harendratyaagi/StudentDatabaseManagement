<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<html>
<body style=color:darkblue;background-color:powderblue>
<%
String s1=request.getParameter("Your_Name");
String s2=request.getParameter("email");
String s3=request.getParameter("subject");
String s4=request.getParameter("tell_us");

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studb","root","root");
	Statement st=con.createStatement();
	
	st.executeUpdate("insert into contact_us values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')");
	out.println("you have successfully submitted !!!go to  <a href='index.jsp' style=color:red>Home Page</a> to continue.");
	
%>
</body>
</html>