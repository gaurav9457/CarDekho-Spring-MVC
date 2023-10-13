<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./C:\Users\gaura\Desktop\WEB TECH WEWE3\CSS\font-awesome-4.7.0">
<style type="text/css">

body {
	
	
	background-position: center;
	background-size: cover;
    background-position: ;
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



ul {
	list-style-type: none;
	background-color: black;
	overflow: hidden;
	background-color: #bde0fe;
}

li {
	float: right;
}

li a {
	display: block;
	margin: 0px;
	padding: 15px;
	text-decoration:none;
	color: black;
	font-family: monospace;
	font-size: large;
	
}

li a:hover {
	
	border-radius:20px;
	cursor: pointer;
	text-decoration:underline;
	color: #f77f00;
}
li div {
  margin-right: 680px;
  font-size: 30px;
  margin-top: 2px;
  font-weight: bold;
  color: #f77f00;
  
}

li a:active{
   color:green !important;
}


</style>
</head>
<body>
 <ul>
 
		<li><a  href="./logout">SIGNOUT</a></li>
		<li><a  href="./search">SEARCH CAR</a></li>
		<li><a  href="./remove">REMOVE CAR</a></li>
		<li><a  href="./update">UPDATE CAR</a></li>
		<li><a  href="./add">ADD CAR</a></li>
		<li><a  href="./home">HOME</a></li>
		<li><div><i class="fa fa-car" aria-hidden="true"></i>CAR DEKHO</div></li>
	</ul>

</body>
</html>