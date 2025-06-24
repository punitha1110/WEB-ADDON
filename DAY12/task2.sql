INSERT student into JDBC : 

import java.sql.Connection;
import java.sql.DriverManager;

public class InsertStudent {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/your_database";
        String user = "your_username";
        String password = "your_password";

        // Sample student data
        int id = 1;
        String name = "punitha";
        int age = 20;

        String sql = "INSERT INTO students (id, name, age) VALUES (?, ?, ?)";

        try {
            // Load JDBC driver (optional for newer JDBC versions)
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection
            Connection conn = DriverManager.getConnection(url, user, password);

            // Execute insert
            int rowsInserted = conn.executeUpdate();
            if (rowsInserted > 0) {
                System.out.println("Student inserted successfully!");
            }

            // Close connection
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
