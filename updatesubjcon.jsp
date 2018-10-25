<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<html>
<body style=color:darkblue;background-color:powderblue>
<%
String s1=request.getParameter("SEMESTER");
String s2=request.getParameter("SUBJECT_CODE");
String s3=request.getParameter("YEAR");

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studb","root","root");
	Statement st=con.createStatement();
	
	st.executeUpdate("insert into subject_y values('"+s1+"','"+s2+"','"+s3+"')");
	out.println("you successfully updated the subjects!!!go to  <a href='updatesubj.jsp' style=color:red>Update Subjects Page</a> to continue.");
	
%>
</body>
</html>