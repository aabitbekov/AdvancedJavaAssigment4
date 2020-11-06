package servlets;

import java.io.IOException;
import astanait.com.User;
import java.io.PrintWriter;
import java.util.Date;
import java.util.LinkedList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/InServlet")
public class InServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public InServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LinkedList<User> users =new LinkedList<User>();
		if((String)request.getSession().getAttribute("username") !=null & (String)request.getSession().getAttribute("password") != null) {
			users.add(new User((String)request.getSession().getAttribute("username"),(String)request.getSession().getAttribute("password")));
		}
		
		response.setContentType("text/html");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		for(User user : users) {
			if(username.equals(user.getUsername()) & password.equals(user.getPassword())) {
				Cookie cookie = new Cookie("username", username);
		        cookie.setMaxAge(60);	
		        response.addCookie(cookie);
		        
		        HttpSession session = request.getSession();
		        Date now = new Date();
		        session.setAttribute("date", now);
		        Integer count= (Integer)session.getAttribute("count");
		 
		        if(count == null) {
		        session.setAttribute("count",1);
		        count = 1;
		        }
		        else {
		        session.setAttribute("count", count+1);
		        }
		        
				request.getRequestDispatcher("/ShowCart.jsp").forward(request, response);

				/*
				 * String path = "/ProductServlet"; ServletContext servletContext =
				 * getServletContext(); RequestDispatcher requestDispatcher =
				 * servletContext.getRequestDispatcher(path); requestDispatcher.forward(request,
				 * response);
				 */
			} else {
				 PrintWriter printWriter = response.getWriter();
				 printWriter.println("sorry invalid login or password");
				 request.getRequestDispatcher("Registr.jsp").forward(request, response);
			
			}
		}
		
			
	
		
		
	}

}