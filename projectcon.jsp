<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%
String s1=request.getParameter("PROJECT_ID");
String s2=request.getParameter("PROJECT_NAME");
String s3=request.getParameter("MENTOR_NAME");

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studb","root","root");
	Statement st=con.createStatement();
	st.executeUpdate("insert into project values(null,'"+s2+"','"+s3+"')");
	out.println("you successfully enter the project details!!!go to  <a href='project.jsp' style=color:red>Project Details Page</a> to continue.");

%>