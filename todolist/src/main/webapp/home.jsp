<%@page import="java.util.Base64"%>
<%@page import="dto.user"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home</title>
<style>
body{

background-color:rgb(204,255,255);
height: 100vh;
width: 100%;
display: flex;
justify-content: center;
align-items: center;
}
#maindiv{
padding:20px;
background-color:white;
display: flex;
height: 90vh;
width: 90%;
border-radius:25px;
justify-content: flex-start;
gap:50px;
flex-direction: column;

}
#leftdiv {
background-color:rgb(235, 245, 251);
padding:20px;
border-radius:25px;
display: flex;
width:500px;
justify-content: space-between;
}

a{
border: none;
padding: 10px;
text-decoration: none;
background-color:rgb(0,51,51);
color: white;
border-radius: 25px; 

}

img{
border-radius: 100%;
}

</style>

</head>
<body>

<%
user u=(user)request.getSession().getAttribute("user");
%>
<div id="maindiv">
<div id="leftdiv">
	<!-- we need to convert a byte[] to string image
	we need to inform that this image file is encoded to jpeg by base64 -->
	<div>
	<% String image=new String(Base64.getEncoder().encode(u.getUserimage())); %>
	<img alt="loading" src="data:image/jpeg;base64,<%=image%>",width="150px" height="150px">
	</div>

	<div>
	<h2>Welcome <%= u.getUsername() %></h2>
	<h4>Email:<%= u.getUseremail() %></h4>
	</div>
</div>

<div><a href="Addtask.jsp">addtask</a></div>
</div>
</body>
</html>