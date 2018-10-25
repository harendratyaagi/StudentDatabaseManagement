<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<html>
<body>
<%
String s1=request.getParameter("EMAIL");
String Newpass=request.getParameter("PASSWORD");
try{
	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studb","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select EMAIL,PASSWORD from signup where EMAIL='"+s1+"' ");

if(rs.next())
{
Statement st1=con.createStatement();
int i=st1.executeUpdate("update signup set PASSWORD='"+Newpass+"' where EMAIL='"+s1+"'");
out.println("password changed successfully ! Go to the <a href='studpage.jsp' style=color:red>Home</a> now.");
st1.close();
con.close();
}
else{
	
	out.print("User does not exist");
}
}catch(Exception e){
out.println(e);
}
%>

</body>
</html>
