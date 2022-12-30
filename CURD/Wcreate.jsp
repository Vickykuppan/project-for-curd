<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<center>
<body bgcolor="red">

<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String course=request.getParameter("course");
String email=request.getParameter("email");
String address=request.getParameter("address");
String phonenumber=request.getParameter("phonenumber");

int a=Integer.parseInt(id);
int b=Integer.parseInt(phonenumber);

try
{
	System.out.println("1");
	Class.forName("com.mysql.jdbc.Driver");
	System.out.println("11");
Connection  con= DriverManager.getConnection( "jdbc:mysql://localhost:3306/javadb","root"," ");
System.out.println("111");
 PreparedStatement ps=con.prepareStatement("(insert into Students values(?,?,?,?,?,?)");
 System.out.println("1111");
 ps.setInt(1,a);
 ps.setString(2,name);
 ps.setString(3,course);
 ps.setString(4,email);
 ps.setString(5,address);
 ps.setInt(6,b);
 ps.executeUpdate();
con.close();
}
catch(Exception e)
{
System.out.println(e);
	}
%>
</center>
</body>
</html>