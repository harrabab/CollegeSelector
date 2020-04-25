

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class viewlist
 */
@WebServlet("/viewlist")
public class viewlist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public viewlist() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		HttpSession session =request.getSession();
		String email = (String) session.getAttribute("email");
		System.out.println(email);
		
		     Connection myconn = null;
		    String url = "jdbc:mysql://localhost:3306/emp";
		    PreparedStatement preparedStmt = null;
		    ResultSet resultSet=null;
		   
		
		    try {
		    	Class.forName("com.mysql.jdbc.Driver"); 
		    	 myconn = DriverManager.getConnection(url, "root", "Rabab1$s");

				String query = "Select u.name, c.cityname, co.coursename, cl.collegename FROM user_member u, city c, course co, college cl WHERE co.courseid = u.courseid AND co.collegeid = cl.collegeid AND cl.cityid = c.cityid AND u.email = ?";
				preparedStmt = myconn.prepareStatement(query);
				preparedStmt.setString(1, email);
				resultSet = preparedStmt.executeQuery();
                String na = null;
                String na1 =null;
                String na2 =null;
                String na3 = null;

				
				while(resultSet.next())
				{
					
					     request.setAttribute("propertyList1", resultSet.getString(1));
		                 request.setAttribute("propertyList2", resultSet.getString(2));
		                 request.setAttribute("propertyList3", resultSet.getString(3));
		                 request.setAttribute("propertyList4", resultSet.getString(4));
		                 session.setAttribute("na",  resultSet.getString(1));
		                 session.setAttribute("na1",  resultSet.getString(2));
		                 session.setAttribute("na2", resultSet.getString(3));
		                 session.setAttribute("na3", resultSet.getString(4));
		
					
					 
					
					}

 
              
				
      
                 
                 
                 
				 RequestDispatcher req = request.getRequestDispatcher("Selected_course_page.jsp");
		    	  req.forward(request, response);
						
			
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
