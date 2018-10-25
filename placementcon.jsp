<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%
String s1=request.getParameter("SCHOLAR_NO");
String s2=request.getParameter("COMP_ID");
String s3=request.getParameter("PROFILE");
String s4=request.getParameter("LOCATION");
String s5=request.getParameter("CTC");
String s6=request.getParameter("PLACED_DATE");

	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studb","root","root");
	Statement st=con.createStatement();
	ResultSet rs;
	int i=st.executeUpdate("insert into placement values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')");
	out.println(" you successfully enter the placement record!!!go to  <a href='placement.jsp' style=color:red>Placement</a>Page to continue. ");

%>