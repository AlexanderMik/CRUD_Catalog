package servlet;

import dao.Manager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteServlet extends HttpServlet {
    private Manager manager = new Manager();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        manager.removeSmartphone(Integer.valueOf(req.getParameter("id")));

        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
}
