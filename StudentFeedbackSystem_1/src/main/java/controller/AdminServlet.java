package controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;

public class AdminServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String user = req.getParameter("user");
        String pass = req.getParameter("pass");

        if(user.equals("admin") && pass.equals("1234")) {
            res.sendRedirect("dashboard.jsp");
        } else {
            res.sendRedirect("adminLogin.jsp");
        }
    }
}