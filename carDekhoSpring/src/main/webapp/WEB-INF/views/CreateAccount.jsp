<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Dekho WebApp</title>
<style type="text/css">
form {
	margin-top: 10px;
}

form table {
	margin: auto;
	width: 100%;
	border: 1px solid balck;
}

tr {
	text-align: center;
}

fieldset table {
	margin: auto;
	text-align: left;
}

fieldset {
	margin: 15px 520px;
	text-align: center;
	border: none;
}
#addbtn{
  background-color: #f75d34;
  width:150px;
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



</style>
</head>
<body>
<div align="center">
  <h1>Enter Details To Create Account</h1>
		<fieldset>
			
			<form action="./createAccount" method="post">
				<table>
					<tr>
						<td>Username</td>
						<td><input type="text" name="username" autofocus="autofocus" ></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><input type="text" name="password"></td>
					</tr>
				</table>
				<input id="addbtn" type="submit" value="CREATE ACCOUNT">
			</form>
		</fieldset>
	</div>
</body>
</html>