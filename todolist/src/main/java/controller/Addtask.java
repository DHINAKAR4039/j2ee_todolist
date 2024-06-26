package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import dto.Task;
import dto.user;
@WebServlet("/addtask")
public class Addtask extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	String tasktitle=req.getParameter("tasktitle");
	String taskdescription=req.getParameter("taskdescription");
	String taskpriority=req.getParameter("taskpriority");
	String taskduedate=req.getParameter("taskduedate");
	
	user u=(user)req.getSession().getAttribute("user");
	int userid=u.getUserid();
	
	
	
	Dao dao=new Dao();
	try {
		Task task=new Task(dao.getTaskId(), tasktitle, taskdescription, taskpriority, taskduedate, "pending", userid);
		int res=dao.createtask(task);
		
		if(res>0) {
			HttpSession session=req.getSession();
			user User=(user)session.getAttribute("user");
			
			req.setAttribute("tasks", dao.getalltasksByUserId(User.getUserid()));
			
			RequestDispatcher dispatcher=req.getRequestDispatcher("home.jsp");
			dispatcher.include(req, resp);
			
		}else {
			resp.getWriter().print("failed");
		}
		
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
}
