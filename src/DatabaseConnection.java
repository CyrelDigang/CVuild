import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static final String DB_URL = "jdbc:mariadb://localhost:3306/resumebuilder";
    private static final String DB_USERNAME = "root";
    private static final String DB_PASSWORD = "cyrel";

     public static Connection getConnection() throws SQLException {
        try {
            return DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
        } catch (SQLException ex) {
            System.err.println("Error connecting to the database. Check your database connection settings.");
            throw ex;
        }
    }
}

