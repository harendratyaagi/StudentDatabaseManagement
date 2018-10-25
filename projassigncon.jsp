<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%
String s1=request.getParameter("PROJECT_ID");
String s2=request.getParameter("SCHOLAR_NO");

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studb","root","root");
	Statement st=con.createStatement();
	st.executeUpdate("insert into proj_assign values('"+s1+"','"+s2+"')");
	out.println("you successfully assign the project to student!!!go to  <a href='projassign.jsp' style=color:red>Project Assign Page</a> to continue.");

%>>