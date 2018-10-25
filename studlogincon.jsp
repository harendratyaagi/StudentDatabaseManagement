

<%@ page import ="java.sql.*" %>
<%@ page import = "java.io.*,java.util.*" %>
<html>
<body style=color:darkblue;background-color:powderblue>
<%
    String s1 = request.getParameter("SCHOLAR_NO");    
    String s2= request.getParameter("password");
   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studb","root","root");

    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from signup where scholar_no='"+s1+"'");
    while(rs.next()) {
      
       String p1=rs.getString(4);
       String p2=rs.getString(5);
      if(s1.equals(p1)&& s2.equals(p2)){
    	 
    	  
    		session.setAttribute("msg",s1);
      
       response.sendRedirect("studpage.jsp");
       }
   	else {
   		out.println("scholar no. or password was wrong ! Please <a href='studlogin.jsp' style=color:red>Login Again</a> to continue.");	
   	}break;
  }
%>
</body>
</html>