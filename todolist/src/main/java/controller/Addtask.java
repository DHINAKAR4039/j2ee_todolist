package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import dto.Task;
import dto.user;
@WebServlet("/addtask")
public class Addtask extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	
	int taskid=Integer.parseInt(req.getParameter("taskid"));
	String tasktitle=req.getParameter("tasktitle");
	String taskdescription=req.getParameter("taskdescription");
	String taskpriority=req.getParameter("taskpriority");
	String taskduedate=req.getParameter("taskduedate");
	
	user u=(user)req.getSession().getAttribute("user");
	int userid=u.getUserid();
	
	Task task=new Task(taskid, tasktitle, taskdescription, taskpriority, taskduedate, "pending", userid);
	
	Dao dao=new Dao();
	try {
		int res=dao.createtask(task);
		
		if(res>0) {
			resp.getWriter().print("task has been created");
		}else {
			resp.getWriter().print("failed");
		}
		
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
}