<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>todolist</title>
<style >
body{
*{
padding: 10px;
font-family: sans-serif;
}
display: flex;
height: 100vh;
width: 100%;
align-items: center;
justify-content: center;
/* background-color:rgb(204,255,255); */
background-image: url("https://cdn.pixabay.com/photo/2016/06/25/12/52/laptop-1478822_1280.jpg");
background-size:cover;
background-position:center;
background-repeat: no-repeat;
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
background-color: rgba(224,224,224,0.6); 

box-shadow: 15px 15px 30px rgb(0,102,102);
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