<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
div{
   height:400px;
   width:500px;
   
   margin-left:200px;
  display:flex;
  align-items: center;
  justify-content: center;
  justify-content:space-between;
  position: absolute;
  
  
}
#div-box{
   margin-left: 750px;
}
li{
  list-style-type: none;
  
}
ul{
   height:350px;
   width:450px;
  display: flex;
  align-items:flex-end;
  justify-content: space-between;
  align-items: center;
}
li a{
  text-decoration:none;
  height: 30px;
  width: 150px;
  border: 1px solid;
  border-radius:30px;
  color:black;
  margin-top: 10px;
  text-align: center;
  padding: 10px;
  background-color: #bde0fe;
  box-shadow: rgba(0, 0, 0, 0.25) 0px 14px 28px, rgba(0, 0, 0, 0.22) 0px 10px 10px;
}
li:hover{
   
	cursor: pointer;
	height: 35px;
	width: 150px;
	color: #f77f00;
}

li a:hover {
	
	border-radius:20px;
	cursor: pointer;
	text-decoration:underline;
    color:#f77f00;
}
h2{
   font-family: monospace;
   font-weight: bold;
   color:black;
   
}
h1{
color: #f77f00;
}


</style>
</head>
<body>
  <h1>CAR DEKHO</h1>
  <h2 align="center">Welcome to Car Dekho Web-App</h2>
  <h2 align="center">Choose Any option you want to do</h2>
  <div align="center">
  <ul>
 
		<li><a  href="./add">ADD CAR</a></li>
		<li><a  href="./search">SEARCH CAR</a></li>
		
		</ul>
		</div>
		
   <div id="div-box">
        	<ul>	
		<li><a  href="./update">UPDATE CAR</a></li>
		<li><a  href="./remove">REMOVE CAR</a></li>
		
	
	</ul>
	</div>
  
</body>
</html>