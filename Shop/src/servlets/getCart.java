package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import astanait.com.Cart;
import astanait.com.Product;

@WebServlet("/getCart")
public class getCart extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public getCart() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	HttpSession session= request.getSession();
	try {
	Cart carts = (Cart) request.getAttribute("carts");
	Product product = (Product) request.getAttribute("product");
	carts.add(product);
	session.setAttribute("carts", carts);
	System.out.println("Some text");
	getServletContext().getRequestDispatcher("CArts.jsp").forward(request, response); 		
	}catch(NullPointerException e) {
		System.out.println("null");
	}
	}



}
