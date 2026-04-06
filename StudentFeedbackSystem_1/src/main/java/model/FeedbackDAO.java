package model;

import java.sql.*;
import util.DBConnection;

public class FeedbackDAO {

    public static int insertFeedback(Feedback f) {
        int status = 0;

        try {
            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO feedback(student_name, subject, rating, comments) VALUES(?,?,?,?)"
            );

            ps.setString(1, f.getName());
            ps.setString(2, f.getSubject());
            ps.setInt(3, f.getRating());
            ps.setString(4, f.getComments());

            status = ps.executeUpdate();

        } catch(Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    public static ResultSet getAllFeedback() {
        try {
            Connection con = DBConnection.getConnection();
            Statement st = con.createStatement();
            return st.executeQuery("SELECT * FROM feedback");
        } catch(Exception e) {
            return null;
        }
    }
}