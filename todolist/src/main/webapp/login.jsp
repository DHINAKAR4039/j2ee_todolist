<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<style>
body{
background-color:rgb(204,255,255);
display: flex;
height: 100vh;
width: 100%;
justify-content: center;
align-items: center;
}
table{ 
padding:30px;
line-height:50px;
background-color: rgba(224,224,224,0.6); 
text-align: center;
border-radius: 15px;
box-shadow: 15px 15px 30px rgb(0,102,102);
font-size: large;
}
input{
padding: 10px;
border-radius: 10px;
border:none;
}

</style>
<body>
<table>
<form action="login" method="post">


		<tr><td colspan="2"><h1>LOGIN</h1></td></tr>
 <tr>
	<td>EMAIL:</td>
	<td><input type="email" name="email" ></td>
 </tr>
 <tr>
	<td>PASSWORD:</td>
	<td><input type="password" name="password" ></td>
 </tr>
 <tr><td colspan="2"><input type="submit"></td></tr>


</form>
</table>
</body>
</html>