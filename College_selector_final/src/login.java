

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		//college
		String email =  request.getParameter("ename");
	    String password =  request.getParameter("psw");
	    Connection myconn = null;
	    String url = "jdbc:mysql://localhost:3306/emp";
	
	    try {
	    	Class.forName("com.mysql.jdbc.Driver"); 
	        myconn = DriverManager.getConnection(url, "root", "Rabab1$s");
			System.out.print(myconn);
			
			Statement mystmt = myconn.createStatement();
			String query = "select * from user_member ";
			ResultSet myrs =mystmt.executeQuery(query);
			
			while(myrs.next())
			{
				/*
				 * System.out.print(myrs); //or rs.getString("column name");*/
				System.out.print(myrs.getString(1)); 
				System.out.print(myrs.getString(2));				 
				System.out.print(myrs.getString(3));
				 System.out.print(myrs.getString(4));
				 
				
				 
				 
				if(myrs.getString(4).equalsIgnoreCase(email) && myrs.getString(3).equalsIgnoreCase(password)) {
				
					
					HttpSession session =request.getSession();
					session.setAttribute("email", email);
					response.sendRedirect("firstpage.jsp");
					
					
					RequestDispatcher req = request.getRequestDispatcher("firstpage.jsp");
					req.forward(request, response);
					
				}
					
		
				
			}
			
			
			
				
				 System.out.println("Invalid Credential");
				 response.sendRedirect("login_page.jsp");
				
			
			
			
				
			
			
	    	
	    }
	    catch(Exception exc) {
	    	exc.printStackTrace();
	    	
	    }
	    
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
