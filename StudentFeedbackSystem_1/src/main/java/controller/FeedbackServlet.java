package controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import model.*;

public class FeedbackServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String name = req.getParameter("name");
        String subject = req.getParameter("subject");
        int rating = Integer.parseInt(req.getParameter("rating"));
        String comments = req.getParameter("comments");

        Feedback f = new Feedback();
        f.setName(name);
        f.setSubject(subject);
        f.setRating(rating);
        f.setComments(comments);

        FeedbackDAO.insertFeedback(f);

        res.sendRedirect("success.jsp");
    }
}