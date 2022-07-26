<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>The Drinker Page</title>
	</head>
	<body>

		Welcome to the Drinker Page!<!-- the usual HTML way -->
							  
		<br>
	
	Type a drinker, then click submit to see all of his/her transactions!:
	<br>
		<form method="get" action="1Aquery.jsp">
			<table>
				<tr>    
					<td>Drinker</td><td><input type="text" name="person"></td>
				</tr>				
			</table>
		  <br>			
			<input type="submit" value="submit option">
		</form>
	<br>
	
	Type a drinker, then click submit to see a graph with the beers they order the most!:
	<br>
		<form method="get" action="1Bquery.jsp">
			<table>
				<tr>    
					<td>Drinker</td><td><input type="text" name="person"></td>
				</tr>				
			</table>
		  <br>			
			<input type="submit" value="submit option">
		</form>
	<br>
	
	Type a drinker, then click submit to see graphs with their spending in different bars!:
	<br>
		<form method="get" action="1Cquery.jsp">
			<table>
				<tr>    
					<td>Drinker</td><td><input type="text" name="person"></td>
					
				</tr>
				<input type="radio" name="command" value="week"/>Click here to see per days of the week.
		  <br>
		  		<input type="radio" name="command" value="month"/>Click here to see per month.				
			</table>
		  <br>			
			<input type="submit" value="submit option">
		</form>
	<br>
	

</body>
</html>