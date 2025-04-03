package com.stm.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import org.apache.catalina.User;

import com.stm.dao.StudentDao;
import com.stm.entities.Student;
import com.stm.helper.ConnectionProvider;

@WebServlet("/addStudentServlet")
public class AddStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AddStudentServlet() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String contact = request.getParameter("contact");
		String classname = request.getParameter("classname");
		
		System.out.println("Data fetched from web");
		
		Student student = new Student(name, email, contact, classname);
		System.out.println("data saved in student entity");
		
		StudentDao studentDao = new StudentDao(ConnectionProvider.getConnection());
		boolean result = studentDao.addStudent(student);
		if(result)
		{
			System.out.println("Student added successfully!");
		}
		else
		{
			System.out.println("Failed to add student..");
		}
		
		System.out.println("Data passed through dao layer to db");
		
		response.sendRedirect("addstd.jsp");
	}

}
