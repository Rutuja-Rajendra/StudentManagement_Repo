package com.stm.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.stm.dao.StudentDao;
import com.stm.entities.Student;
import com.stm.helper.ConnectionProvider;


public class DeleteStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DeleteStudentServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		boolean result = false;
		int id = Integer.parseInt(request.getParameter("id"));
		
		StudentDao studentDao = new StudentDao(ConnectionProvider.getConnection());
		result = studentDao.deleteStudent(id);
		
		if(result)
		{
			System.out.println("Student deleted!");
		}
		else
		{
			System.out.println("Unable to delete student!");
		}
	}
		

}
