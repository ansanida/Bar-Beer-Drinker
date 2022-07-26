<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>The Bar Page</title>
	</head>
	<body>

		Welcome to the Bar Page!<!-- the usual HTML way -->
							  
		<br>
	
	Type a bar, then click submit to see the top 10 drinkers that are the largest spenders!:
	<br>
		<form method="get" action="2Aquery.jsp">
			<table>
				<tr>    
					<td>Bar </td><td><input type="text" name="barvalia"></td>
				</tr>				
			</table>
		  <br>			
			<input type="submit" value="submit option">
		</form>
	<br>
	
	Type a bar, then click submit to see the top 10 beers that are the most popular!:
	<br>
		<form method="get" action="2Bquery.jsp">
			<table>
				<tr>    
					<td>Bar </td><td><input type="text" name="barvalia"></td>
				</tr>				
			</table>
		  <br>			
			<input type="submit" value="submit option">
		</form>
	<br>
	
	Type a bar, then click submit to see the top 5 manufacturers who sell the most beers!:
	<br>
		<form method="get" action="2Cquery.jsp">
			<table>
				<tr>    
					<td>Bar </td><td><input type="text" name="barvalia"></td>
				</tr>				
			</table>
		  <br>			
			<input type="submit" value="submit option">
		</form>
	<br>
	Type a bar, then click submit to see the busiest periods!:
	<br>
		<form method="get" action="2Dquery.jsp">
			<table>
				<tr>    
					<td>Bar </td><td><input type="text" name="barvalia"></td>
					<input type="radio" name="command" value="days"/>Click here to see for a day.
		  <br>
		  			<input type="radio" name="command" value="week"/>Click here to see for the week.
				</tr>				
			</table>
		  <br>			
			<input type="submit" value="submit option">
		</form>
	<br>

</body>
</html>