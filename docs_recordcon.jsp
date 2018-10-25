<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%
String s1=request.getParameter("SCHOLAR_NO");
String s2=request.getParameter("10TH__CERT");
String s3=request.getParameter("12TH_CERT");
String s4=request.getParameter("TRANSFER_CERT");
String s5=request.getParameter("SCORE_CARD");
String s6=request.getParameter("GAP_CERT");

	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studb","root","root");
	Statement st=con.createStatement();
	ResultSet rs;
	st.executeUpdate("insert into docs_record values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')");
	out.println("you successfully enter the documents record!!!go to  <a href='docs_record.jsp' style=color:red>Home Page</a> to continue.");

%>