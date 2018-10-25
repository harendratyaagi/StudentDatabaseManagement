<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%
String s1=request.getParameter("SCHOLAR_NO");
String s2=request.getParameter("SUBJECT_CODE");
String s3=request.getParameter("GRADE_POINT");
String s4=request.getParameter("GRADE");
String s5=request.getParameter("YEAR");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studb","root","root");
	Statement st=con.createStatement();
	ResultSet rs;
	
	st.executeUpdate("insert into result values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')");
	
	String str="select count(*) from result where SCHOLAR_NO='"+s1+"'";
	rs=st.executeQuery(str);
	
	out.println("done");
	
	int val=0;
	if(rs.next()){
		out.println(rs.getInt(1));	
		val=rs.getInt(1);
	}
	String row="";
	int grade=0;
	if(val==6){
		//do logic to update record
		str="select * from result where SCHOLAR_NO='"+s1+"'";
		
		rs=st.executeQuery(str);
		int flag=0;
		while(rs.next()){
			row=rs.getString(3);
			grade=Integer.parseInt(row);  
			if(grade<4)
			{
				flag=1;
				break;
			}
		}
		if(flag==0)
		{
			str="select * from student where SCHOLAR_NO='"+s1+"'";
			rs=st.executeQuery(str);
			int sem=0;
			while(rs.next()){
				sem=Integer.parseInt(rs.getString(17));
			}
			if(sem!=6)
			{
			
			
			sem=sem+1;
			str="Update student SET semester='"+sem+"'  where SCHOLAR_NO='"+s1+"'";
			st.executeUpdate(str);
			}
		}
	}
	
	out.println("you successfully upload the result!!!go to  <a href='result.jsp' style=color:red;>Result Page</a> to continue.");

%>