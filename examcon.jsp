<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%
String s1=request.getParameter("SUBJECT_CODE");
String s2=request.getParameter("EXAM_TYPE");
String s3=request.getParameter("EXAM_DATE");
String s4=request.getParameter("EXAM_TIME");
String s5=request.getParameter("ROOM_NO");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studb","root","root");
	Statement st=con.createStatement();
	st.executeUpdate("insert into exam values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')");
	out.println("you successfully upload the exam schedule!!!go to  <a href='exam.jsp' style=color:red>Exam Schedule Page</a> to continue.");

%>