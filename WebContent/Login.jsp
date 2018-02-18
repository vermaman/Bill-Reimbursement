<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %> 
<%
	String name=null;
	String email= request.getParameter("email");
	String password=request.getParameter("password");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/appdb","root","1234");
	Statement smt=con.createStatement();
	ResultSet rs=smt.executeQuery("select * from emp where email='" + email +"' and password='"+ password +"'");
	if(rs.next())
	{
		session.setAttribute("name",rs.getString(4));
		response.sendRedirect("loginSuccess.jsp");
	}
	else
		out.println("Invalid Email or Password <a href='log.jsp'>Login</a> "); 
%>
</html>