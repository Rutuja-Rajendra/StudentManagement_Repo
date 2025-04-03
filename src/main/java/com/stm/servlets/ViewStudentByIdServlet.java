package com.stm.servlets;

import java.io.IOException;

import com.stm.dao.StudentDao;
import com.stm.entities.Student;
import com.stm.helper.ConnectionProvider;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class ViewStudentByIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ViewStudentByIdServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
		String idstr = request.getParameter("id");
		
		if(idstr != null && !idstr.trim().isEmpty())
		{
			int id = Integer.parseInt(idstr);
			StudentDao studentDao = new StudentDao(ConnectionProvider.getConnection());
			
			Student student = studentDao.viewStudentById(id);
			
			request.setAttribute("student", student);
			RequestDispatcher rd = request.getRequestDispatcher("viwstd.jsp");
			rd.forward(request, response);
		}
		else
		{
			request.setAttribute("error", "Id field cannot be empty.");
		}
	}

}
