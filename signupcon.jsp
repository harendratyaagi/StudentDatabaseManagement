<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<html>
<body style=color:darkblue;background-color:powderblue>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studb","root","root");
	Statement st=con.createStatement();
String s1=request.getParameter("FULL_NAME");
String s2=request.getParameter("EMAIL");
String s3=request.getParameter("USERNAME");
String s4=request.getParameter("SCHOLAR_NO");
String s5=request.getParameter("PASSWORD");
String s6=request.getParameter("REPEAT_PASSWORD");
String strQuery="SELECT COUNT(*) FROM signup where SCHOLAR_NO='"+s4+"'";

	
	
	ResultSet rs=st.executeQuery(strQuery);
	rs.next();
	String Countrow=rs.getString(1);
	
	if(Countrow.equals("0"))
	{
	int i=st.executeUpdate("insert into signup values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')");
	
	out.println("you have sucessfully registered! <a href='studlogin.jsp'>Login Now</a> to continue.");
	}
	else
	{
		out.println("you have already registered! <a href='login.html' style=color:red>Login Now</a> to continue.");
	}
	}
  catch (Exception e)
  {
	  e.printStackTrace();
  }
%>
</body>
</html>