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

@WebServlet("/delete")
public class Delete extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int taskid=Integer.parseInt(req.getParameter("taskid"));
		Dao dao = new Dao();
		
		try {
			dao.deleteTaskById(taskid);
			
			HttpSession session=req.getSession();
			user User=(user)session.getAttribute("user");
			
			req.setAttribute("tasks", dao.getalltasksByUserId(User.getUserid()));
			
			RequestDispatcher dispatcher=req.getRequestDispatcher("home.jsp");
			dispatcher.include(req, resp);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
