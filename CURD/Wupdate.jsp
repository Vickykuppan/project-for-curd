<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
String course=request.getParameter("course");
out.print(id+"<br><br>");
out.print(course+"<br><br>");
%>
</center>
</body>
</html>