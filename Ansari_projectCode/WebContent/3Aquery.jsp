<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	try {

		//Get the database connection
		ApplicationDB db = new ApplicationDB();	
		Connection con = db.getConnection();

		//Create a SQL statement
		Statement stmt = con.createStatement();

		//Get parameters from the HTML form at the HelloWorld.jsp
		String newBeer = request.getParameter("drink");
		//String newBeer = request.getParameter("beer");
		//float price = Float.valueOf(request.getParameter("price"));


		//Statement stmt = con.createStatement();
		//Get the selected radio button from the index.jsp
		//String entity = request.getParameter("command");
		//Make a SELECT query from the table specified by the 'command' parameter at the index.jsp
		//String str = "SELECT * FROM Bars WHERE name = \"" + newBar + " \"";
		String str1 = "select bar, sum(quantity) as beer_count from bills left join transactions on bills.bill_id = transactions.bill_id where item = \"" + newBeer + "\" group by bar order by beer_count desc limit 5";
		//Run the query against the database.
		ResultSet result = stmt.executeQuery(str1);
	%>
		
	<!--  Make an HTML table to show the results in: -->

<table>
	<tr>    
		<td>bar</td>
		<td>beer count</td>	
	</tr>
		<%
		//parse out the results
		while (result.next()) { %>
			<tr>    
			
				<td><%= result.getString("bar") %></td>
				<td><%= result.getString("beer_count") %></td>
			</tr>
			

		<% }
		//close the connection.
		db.closeConnection(con);
		%>
	</table>

		
	<%} catch (Exception e) {
		out.print(e);
	}%>


</body>
</html>