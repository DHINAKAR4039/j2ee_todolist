<%@page import="java.util.List"%>
<%@page import="java.util.Base64"%>
<%@page import="dto.user"%>
<%@page import="dto.Task"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home</title>
<style>
*{
padding: 10px;
font-family: sans-serif;
}

body{
/* background-color:rgb(204,255,255); */
background-image: url("https://cdn.pixabay.com/photo/2016/06/25/12/52/laptop-1478822_1280.jpg");
background-size:cover;
background-attachment:fixed;
background-position:center;
background-repeat: no-repeat;
height: 100vh;
width: 100%;
display: flex;
justify-content: center;
align-items: center;
}
#maindiv{
padding:20px;
display: flex;
height: 100%;
width: 90%; 
border-radius:25px;
 justify-content: flex-start;
gap:50px;
flex-direction: column; 
}
#leftdiv {
background-color:rgba(235, 245, 251,0.9);
padding:20px;
border-radius:25px;
display: flex;
width:500px;
justify-content: space-between;
}

a{
border: none;
padding: 15px;
text-decoration: none;
background-color:rgb(255,255,255);
border-radius: 25px; 
}
a:hover{
background-color: aqua;
box-shadow: 15px 15px 30px rgb(0,102,102);
}
img{
border-radius: 25px;
}

#tasktable{
justify-content:center;
align-items:center;
display:flex;
flex-direction:column;
width:90%;
text-align: center;

}
table,tr,td,th{
border-collapse: collapse;
padding: 20px;
}
table{
background-color:rgba(255,255,255,0.9);
border-radius: 25px;

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

<% List<Task> tasks =(List)request.getAttribute("tasks");%>
<div id="tasktable">

<table>
<h1>TASKS</h1>
<tr>
<th>ID</th>
<th>TITLE</th>
<th>DESCRIPTION</th>
<th>PRIORITY</th>
<th>DUE DATE</th>
<th>STATUS</th>
</tr>
<%for(Task task:tasks){ %>
<tr>
<td><%=task.getTaskid()%></td>
<td><%=task.getTasktitle() %></td>
<td><%=task.getTaskdescription() %></td>
<td><%=task.getTaskpriority() %></td>
<td><%=task.getTaskduedate() %></td>
<td><%=task.getTaskstatus() %></td>
</tr>
<%} %>
</table>

</div>
</div>

</body>
</html>