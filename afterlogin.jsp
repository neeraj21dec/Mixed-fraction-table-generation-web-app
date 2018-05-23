<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" %>


<%
Connection con=null;
Statement st=null;
ResultSet rs=null;

String mail=request.getParameter("mail");
String pwd=request.getParameter("pwd");

try
{

 // Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 // con=DriverManager.getConnection("jdbc:odbc:pp");

Class.forName("com.mysql.jdbc.Driver");
 con=DriverManager.getConnection("jdbc:mysql://localhost/adv","root","12345");
}

catch(ClassNotFoundException e1)
 {
 out.println(e1);
 }

catch(SQLException e2)
 {
 out.println(e2);
 }

 
 try
 {
 st=con.createStatement();
 rs=st.executeQuery("select * from users");
 
 while(rs.next())
 {
String name2=rs.getString(1);
String mail2=rs.getString(2);
String pwd2=rs.getString(3);
	if(mail2.equals(mail) && pwd2.equals(pwd))
	response.sendRedirect("generate.html");
	else
	out.println("wrong login"); 
 }
 }
 catch(SQLException e3)
 {
 out.println(e3);
 }
catch(Exception e4)
 {
 out.println(e4);
 }
%>



