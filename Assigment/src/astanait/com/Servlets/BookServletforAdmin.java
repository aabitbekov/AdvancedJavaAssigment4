package astanait.com.Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import astanait.com.Classes.Book;
import astanait.com.WithDB.DB;
import astanait.com.WithDB.IBookRepo;

@WebServlet("/BookServletforAdmin")
public class BookServletforAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DB db = new DB();
    public BookServletforAdmin() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String submit = request.getParameter("submit");
        switch (submit)
        {
            case "add":
            {
            	String ISBN = request.getParameter("ISBN");
                String bookName = request.getParameter("bookName");
                String bookAuthor = request.getParameter("bookAuthor");
                String image = request.getParameter("image");
                Book book = new Book(ISBN,bookName,bookAuthor,image);
                IBookRepo repo = new IBookRepo();
                repo.add(book);
            }
            

}   
        
        
        
}	
}