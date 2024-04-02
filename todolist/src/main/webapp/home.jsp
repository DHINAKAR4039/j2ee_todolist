<%@page import="java.util.Base64"%>
<%@page import="dto.user"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
user u=(user)request.getSession().getAttribute("user");
%>

<h2>Welcome <%= u.getUsername() %></h2>
<h4>Email:<%= u.getUseremail() %></h4>
<!-- we need to convert a byte[] to string image
we need to inform that this image file is encoded to jpeg by base64 -->
<% String image=new String(Base64.getEncoder().encode(u.getUserimage())); %>
<img alt="loading" src="data:image/jpeg;base64,<%=image%>",width="200px" height="200px">
</body>
</html>