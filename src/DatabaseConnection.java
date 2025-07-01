import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseConnection {

    public static Connection getConnection() {

        String url = "jdbc:sqlite:./PITCHAPPFY.db";
        Connection conn = null;

        try {
            conn = DriverManager.getConnection(url); // <- establish connection
            if (conn != null) {
                System.out.println("Connected to SQLite database.");
                
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } 
        
        return conn;
        }
    }







