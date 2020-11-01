package astanait.com.Servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import astanait.com.Classes.Book;
import astanait.com.WithDB.DB;

@WebServlet("/BookServlet")
public class BookServlet extends HttpServlet {
	DB db = new DB();
	private static final long serialVersionUID = 1L;
    public BookServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Book> books = new ArrayList<Book>();
		Connection connection = db.getConnection();
		books = db.readBook(connection);
		request.setAttribute("bookList", books);
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("/books.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
