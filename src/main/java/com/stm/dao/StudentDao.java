package com.stm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.stm.entities.Student;

public class StudentDao {
	
	private Connection con;

	public StudentDao(Connection con) {
		super();
		this.con = con;
	}


	public boolean addStudent(Student student)
	{
		boolean flag = false;
		
		String query = "insert into student(name, email,contact, classname) values(?,?,?,?)";
		try {
			PreparedStatement pst = this.con.prepareStatement(query);
			pst.setString(1, student.getName());
			pst.setString(2, student.getEmail());
			pst.setString(3, student.getContact());
			pst.setString(4, student.getClassname());
			
			pst.executeUpdate();
			flag = true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return flag;
	}
	
	

	public boolean updateStudent(int id, String fieldName, String fieldValue)
	{
		//String query = "UPDATE student SET " + fieldName + " = ? WHERE " + id + " = ?";
		 String query = "UPDATE student SET " + fieldName + " = ? WHERE id = ?";

		boolean flag = false;
		PreparedStatement pst;
		try {
			pst = this.con.prepareStatement(query);
			pst.setString(1, fieldValue);
			pst.setInt(2, id);
			
			int rowsAffected = pst.executeUpdate();
			
			if(rowsAffected > 0)
			{
				flag = true;
			}
		
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return flag;
	}
	
	public boolean deleteStudent(int id)
	{
		String query = "DELETE FROM student where id = ?";
		boolean flag = false;
		try {
			PreparedStatement pst = con.prepareStatement(query);
			pst.setInt(1, id);
			int result = pst.executeUpdate();
			
			if(result > 0)
			{
				flag = true;
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return flag;
	}

	public Student viewStudentById(int id)
	{
		Student student = null;
		
		String query = "SELECT * FROM student WHERE id = ?";
		
		try {
			PreparedStatement pst = con.prepareStatement(query);
			
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			
			while(rs.next())
			{
				student = new Student();
				
				student.setId(rs.getInt("id"));
				student.setName(rs.getString("name"));
				student.setEmail(rs.getString("email"));
				student.setContact(rs.getString("contact"));
				student.setClassname(rs.getString("classname"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return student;
	}

	
	
}
