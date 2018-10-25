

<%@ page import ="java.sql.*" %>
<html>
<body style=color:darkblue;background-color:powderblue>
<%
    String s1 = request.getParameter("email");    
    String s2= request.getParameter("password");
   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studb","root","root");

    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from signup");
    while(rs.next()) {
      
       String p1=rs.getString(2);
       String p2=rs.getString(5);
      
      if(s1.equals(p1)&& s2.equals(p2)){
       //	out.println("sucessfully read");
       response.sendRedirect("admin.jsp");
       }
   	else {
   		out.println("email or password was wrong ! Please <a href='adminlogin.jsp' style=color:red>Login Again</a> to continue.");
    	
   		} 
  } 
%>
</body>
</html>