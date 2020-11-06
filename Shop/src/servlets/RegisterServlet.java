package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.LinkedList;
import  astanait.com.DB;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import astanait.com.DB;
import astanait.com.User;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DB db = new DB();
		Connection connection = null;
		connection = getConnection();
		
		LinkedList<User> users =new LinkedList<User>();
		response.setContentType("text/html");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		request.getSession().setAttribute("username", username);
		request.getSession().setAttribute("password", password);
		users.add(new User(username,password,email));
		request.getRequestDispatcher("SignIn.jsp").forward(request, response);
		
	}
	Connection getConnection()
    {
    	
        Context initialContext = null;
        Connection connection = null;
        try
        {
            initialContext = new InitialContext();
            Context envCtx = (Context)initialContext.lookup("java:comp/env");
            DataSource ds = (DataSource)envCtx.lookup("jdbc/connection");
            connection = ds.getConnection();
        }
        catch (NamingException | SQLException e)
        {
            e.printStackTrace();
        }
        return connection;
    }

}
