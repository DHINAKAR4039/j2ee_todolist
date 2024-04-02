<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body{
font-family:cursive;
background-image: url("https://t3.ftcdn.net/jpg/03/02/04/06/360_F_302040655_IEH9RyDlu7LL8YCLjgL1IskhrpOlmlSv.jpg");
display: flex;
height: 100vh;
width: 100%;
justify-content: center;
align-items: center;
}
table{ 
padding:30px;
line-height:50px;
background-color:rgba(255,255,255,0.5); 
text-align: center;
border-radius: 15px;
box-shadow: 15px 15px 30px white;
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