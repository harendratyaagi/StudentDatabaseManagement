<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%
String s1=request.getParameter("COMP_ID");
String s2=request.getParameter("COMP_NAME");
String s3=request.getParameter("ELIGIBILITY");
String s4=request.getParameter("VISITING_DATE");

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studb","root","root");
	Statement st=con.createStatement();
	st.executeUpdate("insert into company values(null,'"+s2+"','"+s3+"','"+s4+"')");
	out.println("you successfully enter the records of visited company!!!go to  <a href='admin.jsp' style=color:red>Home Page</a> to continue.");

%>