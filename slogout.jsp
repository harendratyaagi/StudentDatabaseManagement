  <%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
    <html>
   
    <body>
    <%request.getSession().setAttribute("user", null);%>
    Your session has expired. Click here to <a href='adminlogin.jsp' style="color:red"> login </a>  again. or go to the <a href='index.jsp' style="color:red">Home page</a> now<br>
    </body>
    </html>