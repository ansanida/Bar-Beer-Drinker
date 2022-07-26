<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Project Index</title>
	</head>
	<body>

		Welcome to the Bar Beer Drinker PLUS project! <!-- the usual HTML way -->
							  
		<br>
	
		 <!-- Show html form to i) display something, ii) choose an action via a 
		  | radio button -->
		<!-- forms are used to collect user input 
			The default method when submitting form data is GET.
			However, when GET is used, the submitted form data will be visible in the page address field-->
		Click on a button to go to a certain page!
	<br>
	<br>
		<form method="get" action="drinkerPage.jsp">

		  <input type="submit" value="go to drinker page" />
		</form>
		<br>

		<br>
		<form method="get" action="barPage.jsp">
	
			<input type="submit" value="go to the bar page">
		</form>
	<br>
	

	<br>
		<form method="get" action="beerPage.jsp">

		<input type="submit" value="go to the beer page">
		</form>
	<br>
	
	<br>
		This is also the modification page!
		Type in a query to update/modify any table in the database. Then, press submit!
		<form method="get" action="modification.jsp">
	
		<td>Query: </td><td><input type="text" name="update"></td>

		<input type="submit" value="submit query">
		</form>
	<br>


</body>
</html>