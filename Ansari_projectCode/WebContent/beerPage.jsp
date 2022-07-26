<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>The Beer Page</title>
	</head>
	<body>

		Welcome to the Beer Page!<!-- the usual HTML way -->
							  
		<br>
	
	Type a beer, then click submit to see the top 5 bars where this beer sells the most!:
	<br>
		<form method="get" action="3Aquery.jsp">
			<table>
				<tr>    
					<td>Beer</td><td><input type="text" name="drink"></td>
				</tr>				
			</table>
		  <br>			
			<input type="submit" value="submit option">
		</form>
	<br>
	
	Type a beer, then click submit to see all the drinkers who are the biggest consumers of this beer!:
	<br>
		<form method="get" action="3Bquery.jsp">
			<table>
				<tr>    
					<td>Beer</td><td><input type="text" name="drink"></td>
				</tr>				
			</table>
		  <br>			
			<input type="submit" value="submit option">
		</form>
	<br>
	
	Type a beer, then click submit to see a time distribution of when this beer sells the most!:
	<br>
		<form method="get" action="3Cquery.jsp">
			<table>
				<tr>    
					<td>Beer</td><td><input type="text" name="drink"></td>
				</tr>				
			</table>
		  <br>			
			<input type="submit" value="submit option">
		</form>
	<br>

</body>
</html>