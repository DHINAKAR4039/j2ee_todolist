<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addtask</title>
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
line-height:50px;
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
<form action="addtask" method="post">
<table >
		<tr><td colspan="2"><h1>ADD TASK</h1></td></tr>
		<tr>
			<td>TASK TITLE:</td>
			<td><input type="text" name="tasktitle" required="required" placeholder="Task title" ></td>
		</tr>
		<tr>
			<td>TASK DESCRIPTION:</td>
			<td><input type="text" name="taskdescription" required="required"  placeholder="Task description"></td>
		</tr>
		<tr>
			<td>TASK PRIORITY:</td>
			<td><input type="radio" id="option1" name="taskpriority" value="low" >LOW
			<input type="radio" id="option2" name="taskpriority" value="medium" >MEDIUM
			<input type="radio" id="option3" name="taskpriority" value="high" >HIGH</td>
		</tr>
		<tr>
			<td>TASK DUE DATE:</td>
			<td><input type="date" name="taskduedate" ></td>
		</tr>
		<tr><td colspan="2"><input id="submit" type="submit"></td></tr>
		
	</table>
</form>
</body>
</html>