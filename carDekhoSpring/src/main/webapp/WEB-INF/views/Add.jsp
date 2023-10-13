<%@page import="com.jspiders.carDekhoSpring.pojo.CarPOJO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%List<CarPOJO> cars=(List<CarPOJO>)request.getAttribute("cars") ;
   String msg= (String) request.getAttribute("msg"); %>
    <jsp:include page="NavBar.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Dekho </title>
<style type="text/css">
form {
	margin-top: 10px;
}

form table {
	margin: auto;
	width: 100%;
	
}

tr {
	text-align: center;
}
td{
font-size: medium;

}

#data {
	background-color: #bde0fe;
	border: 1px solid Black;
	width: 100%;
	border: 1px solid Black;
	color: Black;
}

#data td {
	border: 1px solid white;
	text-align: center;
}
fieldset table {
	margin: auto;
	text-align: center;
}

fieldset {
	margin: 15px 520px;
	text-align: center;
}

legend {
	color: white;
	background-color: #333;
}
body {
	background-image:
		url('https://png.pngtree.com/background/20220730/original/pngtree-car-sharing-service-illustration-picture-image_1885541.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	background-position: inherit;}
	
#addbtn{
  background-color: #f75d34;
  color: white;
  padding: 5px;
  margin-top: 8px;
  border-radius: 30px;
  
  
}
#addbtn:hover {
	padding: 10px;
	border-radius: 0px;
	cursor: pointer;
}
h1{
   font-family: monospace;
   font-weight: bold;
   color:black;
   
}
</style>
</head>
<body>
  <h1 align="center">Add New Car Details</h1>
  <div align="center">
		<fieldset>
			
			<form action="./add" method="post">
				<table>
					<tr>
						<td>Car-Name :</td>
						<td><input type="text" name="name"></td>
					</tr>
					<tr>
						<td>Car-brand :</td>
						<td><input type="text" name="brand"></td>
					</tr>
					<tr>
						<td>Fueltype  :</td>
						<td><input type="text" name="fueltype"></td>
					</tr>
					<tr>
						<td>Car-Price :</td>
						<td><input type="text" name="price"></td>
					</tr>
				</table>
				<input id="addbtn" type="submit" value="ADD CAR">
			</form>
		</fieldset>
		
		<%
		if (msg != null) {
		%>
		<h3><%=msg%>
		</h3>
		<%
		}
		%>
		<%
		if (cars != null) {
		%>
		<table id="data">
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>BRAND</th>
				<th>FUELTYPE</th>
				<th>PRICE</th>
			</tr>
			<%
			for (CarPOJO pojo : cars) {
			%>
			<tr>
				<td><%=pojo.getId()%></td>
				<td><%=pojo.getName()%></td>
				<td> <%=pojo.getBrand() %></td>
				<td><%=pojo.getFueltype() %></td>
				<td><%=pojo.getPrice()%></td>
			</tr>
			<%
			}
			%>
		</table>
		<%
		}
		%>
		</div>
</body>
</html>