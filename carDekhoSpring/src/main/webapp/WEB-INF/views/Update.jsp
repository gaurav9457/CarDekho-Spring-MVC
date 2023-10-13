<%@page import="com.jspiders.carDekhoSpring.pojo.CarPOJO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%List<CarPOJO> cars=(List<CarPOJO>)request.getAttribute("cars"); 
      CarPOJO pojo=(CarPOJO)request.getAttribute("car");
      String msg=(String)request.getAttribute("msg");%>
    <jsp:include page="NavBar.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
background-image:
		url('https://png.pngtree.com/background/20220730/original/pngtree-car-sharing-service-illustration-picture-image_1885541.jpg');
background-size: cover;
background-repeat: no-repeat;
background-position: inherit;
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
   font-weight: bolder;
   color:black;
   
}

</style>
</head>
<body>
<div align="center">
<h1>Select Car To Update</h1>
       <%
       if (pojo == null) {
       %>
<fieldset>
			
			<form action="./update" method="post">
				<table>
					<tr>
						<td>Enter Car ID : </td>
						<td><input type="text" name="id"></td>
					</tr>
				</table>
				<input id="addbtn" type="submit" value="SELECT">
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
			for (CarPOJO car : cars) {
			%>
			<tr>
				<td><%=car.getId()%></td>
				<td><%=car.getName()%></td>
				<td><%=car.getBrand()%></td>
				<td><%=car.getFueltype()%></td>
				<td><%=car.getPrice()%></td>
			</tr>
			<%
			}
			%>
		</table>
		<%
		}
		} else {
		%>
		<fieldset>
			
			<form action="./updateCar" method="post">
				<table>
					<tr>
						<td>ID</td>
						<td><%=pojo.getId()%></td>
						<td><input type="text" name="id" value="<%=pojo.getId()%>" hidden="true"></td>
					</tr>
					<tr>
						<td>Name</td>
						<td><input type="text" name="name"
							value="<%=pojo.getName()%>"></td>
					</tr>
					<tr>
						<td>Brand</td>
						<td><input type="text" name="brand"
							value="<%=pojo.getBrand()%>"></td>
					</tr>
					<tr>
						<td>Fueltype</td>
						<td><input type="text" name="fueltype"
							value="<%=pojo.getFueltype()%>"></td>
					</tr>
					<tr>
						<td>Price</td>
						<td><input type="text" name="price"
							value="<%=pojo.getPrice()%>"></td>
					</tr>
				</table>
				<input id="addbtn"type="submit" value="UPDATE">
			</form>
		</fieldset>
		<%
		}
		%>
</div>


</body>
</html>