<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style >
body{
display: flex;
height: 100vh;
width: 100%;
align-items: center;
justify-content: center;
background-color: silver;
}
div{
/* border: 1px solid black; */
border-radius:15px;
height: 170px;
width: 150px;
padding: 40px;
display: flex;

gap:20px;
flex-direction: column;
background-color: rgba(255,255,255,0.5); 
text-align: center;
}
a{
color:white;
text-decoration:none;
padding: 10px;
border-radius:15px;
background-color: black;
}

</style>

</head>
<body>
<div>
<h1>todo list</h1>
<a href="login.jsp">LOGIN</a>
<a href="signup.jsp">SIGNUP</a>
</div>

</body>
</html>