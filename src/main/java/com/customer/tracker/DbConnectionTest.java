package com.customer.tracker;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
/**
 * Servlet implementation class DbConnectionTest
 */
@WebServlet("/DbConnectionTest")
public class DbConnectionTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
        String url = "jdbc:mysql://localhost:3306/web_customer_tracker";
        String username = "root";
        String password = "root";
        String driver = "com.mysql.jdbc.Driver";
        Connection con;
		try {
			Class.forName(driver);
			PrintWriter out = response.getWriter();
			con = DriverManager.getConnection(
			    url, username, password);
			out.println("Connection Done");
			con.close();
		} catch (Exception e) {
			
			e.printStackTrace();
		} 

		
    }



}
