package configuration;

import java.sql.*;

public class DatabaseConfiguration {
    public static Connection connection = null;
    private final static String URL = "jdbc:mysql://localhost:3306/bedrijf";
    private final static String USER = "root";
    private final static String PASS = "Asrock12345";


    private static Connection getConnection(String url, String user, String pass) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return connection;
    }

    public static Connection getConnection() {
        if (connection != null) {
            return connection;
        }

        return getConnection(URL, USER, PASS);
    }
}
