<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<% 
	StringBuilder myData=new StringBuilder();
	String strData ="";
    String chartTitle="";
    String legend="";
	try{
		//this list will hold the x-axis and y-axis data as a pair
		ArrayList<Map<String,Double>> list = new ArrayList();
   		Map<String,Double> map = null;
   		//Get the database connection
   		ApplicationDB db = new ApplicationDB();	
   		Connection con = db.getConnection();		

   		//Create a SQL statement
   		Statement stmt = con.createStatement();
   		String newDrinker = request.getParameter("person");
   		String entity = request.getParameter("command");
   		//String graphType = request.getParameter("graph");   
   		//Make a query
   		String query1 = "select day, round(sum(total_price),2) as quantity_count from bills where drinker = \"" + newDrinker + "\" group by day";
   		String query2 = "select monthname(date) as month, round(sum(total_price),2) as total from bills where drinker = \"" + newDrinker + "\" group by month order by total";
   		//Run the query against the database.
   		if (entity.equals("week")) {
   			ResultSet result = stmt.executeQuery(query1);
   			while (result.next()) { 
   	   			map=new HashMap<String,Double>();
   	   	   			map.put(result.getString("day"),result.getDouble("quantity_count"));
   	   			list.add(map);
   	   	    } 
   	   	    result.close();
   		}
   		else {
   			ResultSet result = stmt.executeQuery(query2);
   			while (result.next()) { 
   	   			map=new HashMap<String,Double>();
   	   	   			map.put(result.getString("month"),result.getDouble("total"));
   	   			list.add(map);
   	   	    } 
   	   	    result.close();
   		}
   		
   		//Process the result
   		/* while (result.next()) { 
   			map=new HashMap<String,Double>();
   	   			map.put(result.getString("day"),result.getDouble("quantity_count"));
   			list.add(map);
   	    } 
   	    result.close(); */
   	    
   	    //Create a String of graph data of the following form: ["Caravan", 3],["Cabana",2],...
        for(Map<String,Double> hashmap : list){
        		Iterator it = hashmap.entrySet().iterator();
            	while (it.hasNext()) { 
           		Map.Entry pair = (Map.Entry)it.next();
           		String key = pair.getKey().toString().replaceAll("'", "");
           		myData.append("['"+ key +"',"+ pair.getValue() +"],");
           	}
        }
        strData = myData.substring(0, myData.length()-1); //remove the last comma
        
        //Create the chart title according to what the user selected

          chartTitle = "Drinkers Spending";
          legend = "dollars";
	}catch(SQLException e){
    		out.println(e);
    }
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Graphs</title>
		<script src="https://code.highcharts.com/highcharts.js"></script>
		<script> 
		
			var data = [<%=strData%>]; //contains the data of the graph in the form: [ ["Caravan", 3],["Cabana",2],...]
			var title = '<%=chartTitle%>'; 
			var legend = '<%=legend%>'
			//this is an example of other kind of data
			//var data = [["01/22/2016",108],["01/24/2016",45],["01/25/2016",261],["01/26/2016",224],["01/27/2016",307],["01/28/2016",64]];
			var cat = [];
			data.forEach(function(item) {
			  cat.push(item[0]);
			});
			document.addEventListener('DOMContentLoaded', function () {
			var myChart = Highcharts.chart('graphContainer', {
			    chart: {
			        defaultSeriesType: 'column',
			        events: {
			            //load: requestData
			        }
			    },
			    title: {
			        text: title
			    },
			    xAxis: {
			        text: 'xAxis',
			        categories: cat
			    },
			    yAxis: {
			        text: 'yAxis'
			    },
			    series: [{
			        name: legend,
			        data: data
			    }]
			});
			});
		
		</script>
	</head>
	<body>

	<div id="graphContainer" style="width: 500px; height: 400px; margin: 0 auto"></div>



</body>
</html>