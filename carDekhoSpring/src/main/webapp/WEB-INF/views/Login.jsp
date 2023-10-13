<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String msg=(String)request.getAttribute("msg"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Dekho WebApp</title>
<style type="text/css">
fieldset table {
	margin: auto;
	margin-top:20px;
	text-align: left;
}

fieldset {
	margin: 15px 520px;
	margin-top:50px;
	text-align: center;
	border: none;
}
#addbtn{
  background-color: #f75d34;
  width:120px;
  color: white;
  padding: 10px;
  margin-top: 8px;
  border-radius: 30px;
  box-shadow: rgba(0, 0, 0, 0.25) 0px 14px 28px, rgba(0, 0, 0, 0.22) 0px 10px 10px;
  
  
}
#addbtn:hover {
	padding: 15px;
	border-radius: 0px;
	cursor: pointer;
	box-shadow: 0px 15px 20px #f75d34 ;
}


body {
	background-image:
		url('https://img.freepik.com/premium-vector/taxi-service-smartphone-touchscreen-city-skyscrapers-transportation-network-app_603999-173.jpg?w=740');
	background-size: inherit;
	background-repeat: no-repeat;
	
	background-position:top;
	}

a{

color: black;
text-decoration: none;
font-size: 20px;


}
a:hover{
color: #f75d34;
}
h2{
font-family: monospace;
font-style: inherit;
}

</style>
</head>
<body>

   <div align="center">
   <h1> Welcome To CarDekho WebApplication </h1>
   <h2>Please Login to Proceed Further</h2>
   <%
		if (msg != null) {
		%>
		<h4>
			<%=msg%>
		</h4>
		<%
		}
		%>
		<fieldset>
			
			<form action="./login" method="post">
				<table>
					<tr>
						<td>Username</td>
						<td><input type="text" name="username"  autofocus="autofocus" ></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><input type="password" name="password"></td>
					</tr>
				</table>
				<input id="addbtn" type="submit" value="LOGIN">
			</form>

		</fieldset>
		<a href="http://localhost:8080/carDekhoSpring/createAccount">click here/Create new Account</a>
	</div>

</body>
</html>