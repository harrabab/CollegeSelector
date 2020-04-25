

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String email =  request.getParameter("ename");
	    String password =  request.getParameter("psw");
	    String name =  request.getParameter("name");
	   
	    Connection myconn = null;
	    PreparedStatement preparedStmt = null;
	    String url = "jdbc:mysql://localhost:3306/emp";
	    
	    try {
	    	
	    	
	    	
	    	
	    Class.forName("com.mysql.jdbc.Driver"); 
        myconn = DriverManager.getConnection(url, "root", "Rabab1$s");
		System.out.print(myconn);
		
			/*
			 * Statement mystmt = myconn.createStatement(); String query =
			 * "select * from user_member "; ResultSet myrs =mystmt.executeQuery(query);
			 */
		
		String query = " insert into user_member (name, password, email)"
		          + " values (?, ?, ?)";
		 // create the mysql insert preparedstatement
        preparedStmt = myconn.prepareStatement(query);
      
        preparedStmt.setString (1, name);
        preparedStmt.setString (2, password);
        preparedStmt.setString (3, email);
       
        System.out.println("-----------Inserted data");
        // execute the preparedstatement
        preparedStmt.execute();
        
        System.out.println("query  Executed");
        
        myconn.close();
		
        RequestDispatcher req = request.getRequestDispatcher("login_page.jsp");		
        req.forward(request, response);
		}
	    
	    catch(Exception exc) {
	    	exc.printStackTrace();
	    	  RequestDispatcher req = request.getRequestDispatcher("register_page.jsp");
	    	  req.forward(request, response);
	    }
	
	    
	   
		
		
		
		
		
		
		
		
	}

}
