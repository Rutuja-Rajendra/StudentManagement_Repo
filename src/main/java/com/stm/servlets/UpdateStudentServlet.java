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

@WebServlet("/updatestudentServlet")
public class UpdateStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UpdateStudentServlet() {
        super();
    
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id =Integer.parseInt( request.getParameter("id"));
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String contact = request.getParameter("contact");
		
		boolean result = false;
		
		StudentDao studentDao = new StudentDao(ConnectionProvider.getConnection());
		
		if(email != null && !email.isEmpty())
		{
			result = studentDao.updateStudent(id, "email", email);
		}
		if(name != null && !name.isEmpty())
		{
			result = studentDao.updateStudent(id, "name", name);
		}
		if(contact != null && !contact.isEmpty())
		{
			result = studentDao.updateStudent(id, "contact", contact);
		}
		
		
		if(result)
		{
			System.out.println("Student data updated successfully!");
		}
		else
		{
			System.out.println("Student data not updated...");
		}
		
		response.sendRedirect("upstd.jsp");
	}

}
