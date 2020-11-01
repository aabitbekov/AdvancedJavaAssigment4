package astanait.com.Servlets;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import astanait.com.Classes.User;
import astanait.com.WithDB.DB;

@WebServlet("/InServlet")
public class InServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  DB db = new DB();
	  Connection connection = db.getConnection();
    public InServlet() {
        super();    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if(username == "admin" & password=="admin") {
			request.getRequestDispatcher("/adminpage.jsp").forward(request, response);
		}
			List<User> users = new ArrayList<User>();
			users = db.read(connection);
			for(User user : users) {
			if(username == user.getUsername() & password == user.getPassword()) {
					try {
					Cookie cookie = new Cookie("username", username);
			        cookie.setMaxAge(60*60*2);	
			        response.addCookie(cookie);
			    
			        HttpSession session = request.getSession();
			        Date now = new Date();
			        session.setAttribute("date", now);
			        Integer count= (Integer)session.getAttribute("count");
			        request.setAttribute("id", user.getId());
					request.setAttribute("firstname", user.getFname());
					request.setAttribute("lastname", user.getLname());
			        if(count == null) {
			        session.setAttribute("count",1);
			        count = 1;
			        }
			        else {
			        session.setAttribute("count", count+1);
			        }	
					connection.close();
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}
				else {
					 PrintWriter printWriter = response.getWriter();
					 printWriter.println("sorry invalid login or password");
					 request.getRequestDispatcher("Registr.jsp").forward(request, response);
				
				}
			}
			request.getRequestDispatcher("/home.jsp").forward(request, response);

		}
	
	}


