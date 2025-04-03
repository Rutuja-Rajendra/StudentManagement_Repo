package com.stm.helper;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {

	private static Connection con;
	
	public static Connection getConnection()
	{
		try
		{
			if(con==null)
			{
				System.out.println("Establishing the connection with db");
				Class.forName("com.mysql.cj.jdbc.Driver");
				
				System.out.println("Driver loaded");
				
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb", "root", "ruta");
				System.out.println("connection established");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return con;
	}
}
