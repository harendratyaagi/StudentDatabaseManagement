<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%
String s1=request.getParameter("SUBJECT_CODE");
String s2=request.getParameter("SUB_NAME");
String s3=request.getParameter("CREDITS");

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studb","root","root");
	Statement st=con.createStatement();
	st.executeUpdate("insert into subjects values('"+s1+"','"+s2+"','"+s3+"')");
	out.println("you successfully added the new subjects!!!go to  <a href='new_subj.jsp' style=color:red>New Subject Page</a> to continue.");

%>