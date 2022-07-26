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
		String newDrinker = request.getParameter("person");
		//String newBeer = request.getParameter("beer");
		//float price = Float.valueOf(request.getParameter("price"));


		//Statement stmt = con.createStatement();
		//Get the selected radio button from the index.jsp
		//String entity = request.getParameter("command");
		//Make a SELECT query from the table specified by the 'command' parameter at the index.jsp
		//String str = "SELECT * FROM Bars WHERE name = \"" + newBar + " \"";
		//String str1 = "select bar, item, quantity, items_price, tax_price, tip, total_price, date, time from bills inner join transactions on bills.bill_id = transactions.bill_id where drinker = \"" + newDrinker + "\" order by bar, date, time";
		String str1 = "select bar, item, quantity, items_price, tax_price, tip, total_price, date, time from bills inner join transactions on bills.bill_id = transactions.bill_id where drinker = \"" + newDrinker + "\" order by bar, date, time";
		//Run the query against the database.
		ResultSet result = stmt.executeQuery(str1);
	%>
		
	<!--  Make an HTML table to show the results in: -->

<table>
	<tr>    
		<td>bar</td>
		<td>item</td>	
		<td>quantity</td>	
		<td>items price</td>
		<td>tax price</td>
		<td>tip</td>
		<td>total price</td>
		<td>date</td>
		<td>time</td>
	</tr>
		<%
		//parse out the results
		while (result.next()) { %>
			<tr>    			
				<td><%= result.getString("bar") %></td>
				<td><%= result.getString("item") %></td>
				<td><%= result.getString("quantity") %></td>
				<td><%= result.getString("items_price") %></td>
				<td><%= result.getString("tax_price") %></td>
				<td><%= result.getString("tip") %></td>
				<td><%= result.getString("total_price") %></td>
				<td><%= result.getString("date") %></td>
				<td><%= result.getString("time") %></td>
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