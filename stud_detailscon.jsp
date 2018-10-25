<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@page import="java.util.* " %>
<html>
<body style=color:darkblue;background-color:powderblue>
<%
String s2=request.getParameter("FULL_NAME");
String s3=request.getParameter("DOB");
String s4=request.getParameter("GENDER");
String s5=request.getParameter("FATHER_NAME");
String s6=request.getParameter("MOTHER_NAME");
String s7=request.getParameter("ADDRESS");
String s8=request.getParameter("CITY");
String s9=request.getParameter("STATE");
String s10=request.getParameter("ADMISSION_DATE");
String s11=request.getParameter("BRANCH");
String s12=request.getParameter("CATEGORY");
String s13=request.getParameter("NATIONALITY");
String s14=request.getParameter("RELIGION");
String s15=request.getParameter("EMAIL");
String s16=request.getParameter("PHONE_NO");
String s17=request.getParameter("semester");


	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studb","root","root");
	Statement st=con.createStatement();
	ResultSet rs;
	int day, month, temp;
    int second, minute, hour;
    GregorianCalendar date = new GregorianCalendar();
    temp = date.get(Calendar.YEAR);
    
    String year=Integer.toString(temp);
    String last2Digit=year.substring(year.length()-2,year.length());
    

    
    String data="-123";
    String query="select * from student order by  scholar_no desc LIMIT 1";
    rs=st.executeQuery(query);
    int flag=0;
    if(!rs.next())
    {
    	flag=1;
    	
    }else{
    	
    	rs=st.executeQuery(query);
    while(rs.next()){
    data=rs.getString("scholar_no");
    }
    }
 
    
  
	String start2DigitDatabase=data.substring(0,2);
	if(flag==1)
	{
		start2DigitDatabase="-154354";
	}
	String newScholar="";
	if(start2DigitDatabase.equals(last2Digit)){
	
	int sch=Integer.parseInt(data)+1;
	
	newScholar=Integer.toString(sch);
	
	}
	else{
		newScholar=last2Digit+"2120001";
		
	}
	
		
	
	
	int s1=Integer.parseInt(newScholar);
	int i=st.executeUpdate("insert into student values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"',CURDATE(),'"+s11+"','"+s12+"','"+s13+"','"+s14+"','"+s15+"','"+s16+"','"+s17+"')");
	out.println("you successfully added the new student record!!!go to  <a href='stud_details.jsp' style=color:red>New Student Record </a>Page to continue.");
	%>
	</body>	
</html>

	
