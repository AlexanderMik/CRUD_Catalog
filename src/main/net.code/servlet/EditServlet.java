package servlet;

import dao.Manager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class EditServlet extends HttpServlet {
    private Manager manager = new Manager();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.valueOf(req.getParameter("id"));
        int price = Integer.valueOf(req.getParameter("price"));

        manager.updateSmartphone(id, price);

        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
}
