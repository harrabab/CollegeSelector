
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Selected_course
 */
@WebServlet("/Selected_course")
public class Selected_course extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Selected_course() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String subject =  request.getParameter("subject");
		System.out.println(subject);
		HttpSession session =request.getSession();
		String email = (String) session.getAttribute("email");
		System.out.println(email);
		
		int subjectid = Integer.parseInt(subject);			
		System.out.println(subjectid);
		
		
		
	    Connection myconn = null;
	    PreparedStatement preparedStmt = null;
	    String url = "jdbc:mysql://localhost:3306/emp";
	    ResultSet resultSet=null;
	    PreparedStatement preparedStmt1=null;
	    
	    try {
	    	
	    	
	    	
	    	
	    Class.forName("com.mysql.jdbc.Driver"); 
        myconn = DriverManager.getConnection(url, "root", "Rabab1$s");
		System.out.print(myconn);
		
		
	
		
				   String query1 = "update user_member set courseid =? where email =?";
					
			        preparedStmt = myconn.prepareStatement(query1);
			        preparedStmt.setInt(1,subjectid);
			        preparedStmt.setString(2, email);
			       
			       
			        System.out.println("-----------Inserted data---------------------");
			     
			        preparedStmt.execute();
			        
			        System.out.println("query  Executed");
			        
			        myconn.close();
					
			        RequestDispatcher req = request.getRequestDispatcher("Selected_course_page.jsp");		
			        req.forward(request, response);
				 
				 
			     }

	catch(

	Exception exc)
	{
		exc.printStackTrace();
		RequestDispatcher req = request.getRequestDispatcher("Selected_course_page.jsp");
		req.forward(request, response);
	}

}

}
