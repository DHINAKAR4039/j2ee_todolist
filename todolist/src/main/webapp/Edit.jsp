<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="dto.Task"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit</title>
<style >
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
display: flex;
height: 100vh;
width: 100%;
justify-content: center;
align-items: center;
}
table{ 
padding:30px;
line-height:30px;
background-color: rgba(224,224,224,0.6); 
text-align: center;
border-radius: 15px;
box-shadow: 15px 15px 30px rgb(0,102,102);
}
input{
padding: 10px;
border-radius: 10px;
border: none;
}
input:hover {
	background-color: rgb(204,229,255);
}


#submit:hover {
	background-color: blue;
	color: white;
	box-shadow: 3px 3px 3px grey;
}
#submit{
background-color: black;
color: white;
} 



</style>

</head>

<body>
<form action="updatetask" method="post">
<% Task task=(Task)request.getAttribute("task"); %>
<table >
		<tr><td colspan="2"><h1>EDIT TASK</h1></td></tr>
		<tr>
			<td>TASK ID:</td>
			<td><input type="text" name="taskid" readonly="readonly" value="<%=task.getTaskid()%>"> </td>
		</tr>
		<tr>
			<td>TASK TITLE:</td>
			<td><input type="text" name="tasktitle" required="required" value="<%=task.getTasktitle() %>" ></td>
		</tr>
		<tr>
			<td>TASK DESCRIPTION:</td>
			<td><input type="text" name="taskdescription" required="required" value="<%=task.getTaskdescription() %>"></td>
		</tr>
		<tr>
		<td>Current Task Priority:</td>
		<td><%=task.getTaskpriority() %></td>
		</tr>
		<tr>
			<td>TASK PRIORITY:</td>
			<td><input type="radio" id="option1" name="taskpriority" value="low" >LOW
			<input type="radio" id="option2" name="taskpriority" value="medium" >MEDIUM
			<input type="radio" id="option3" name="taskpriority" value="high" >HIGH</td>
		</tr>
		<tr>
			<td>TASK DUE DATE:</td>
			<td><input type="date" name="taskduedate" value="<%=task.getTaskduedate() %>"></td>
		</tr>
		<tr>
			<td>TASK STATUS:</td>
			<td><input type="text" name="taskstatus" value="<%=task.getTaskstatus() %>"></td>
		</tr>
		<tr>
			<td>USER ID:</td>
			<td><input type="text" name="userid" readonly="readonly" value="<%=task.getUserid()%>"></td>
		</tr>
		<tr><td colspan="2"><input id="submit" type="submit"></td></tr>
		
	</table>
</form>
</body>
</html>