<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signup</title>
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
</head>
<body>
<form action="saveuser" method="post" enctype="multipart/form-data">
<table >
		<tr><td colspan="2"><h1>SIGNUP</h1></td></tr>
		<tr >
			<td>ID:</td>
			<td><input type="text" name="id" ></td>
		</tr>
		<tr>
			<td>NAME:</td>
			<td><input type="text" name="name" ></td>
		</tr>
		<tr>
			<td>EMAIL:</td>
			<td><input type="email" name="email" ></td>
		</tr>
		<tr>
			<td>CONTACT:</td>
			<td><input type="tel" name="contact" ></td>
		</tr>
		<tr>
			<td>PASSWORD:</td>
			<td><input type="password" name="password" ></td>
		</tr>
		<tr>
			<td>IMAGE:</td>
			<td><input type="file" name="image" ></td>
		</tr>
		<tr><td colspan="2"><input type="submit"></td></tr>
		
	</table>
</form>
</body>
</html>