package astanait.com.Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import astanait.com.Classes.User;
import astanait.com.WithDB.IUserRepo;

@WebServlet("/RegistrServlet")
public class RegistrServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public RegistrServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		int i = 1;
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		User user = new User(i,fname,lname,username,password,email);
		IUserRepo user1 = new IUserRepo();
		user1.add(user);
		request.getRequestDispatcher("/SignIn.jsp").forward(request, response);

	}

}
