<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%@include file="header.jsp" %>
<%
    if ((session.getAttribute("name") == null) || (session.getAttribute("name") == "")) {
%>
You are not logged in<br/>
<a href="log.jsp">Please Login</a>
<%} else {
%>
<h3>Welcome,<%=session.getAttribute("name")%></h3><br>
<pre>
Fill Form:
<form action=>


</pre>



<h4><a href='logout.jsp'>Logout</a></h4>
<%
    }
%>
</body>
</html>