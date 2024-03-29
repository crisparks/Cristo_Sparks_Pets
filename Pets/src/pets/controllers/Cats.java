package pets.controllers;


import java.io.IOException;
import pets.models.Cat;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Cats")

public class Cats extends HttpServlet {

	private static final long serialVersionUID = 1L;

    public Cats() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cat cat = new Cat(request.getParameter("name"), request.getParameter("breed"), Integer.parseInt(request.getParameter("weight")));
		request.setAttribute("cat", cat);
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/cat.jsp");
		view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/cat.jsp");
		view.forward(request, response);
	}

}