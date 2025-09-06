package com.example.lab03.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    // Thông tin kết nối MariaDB
    private static final String URL = "jdbc:mariadb://localhost:3306/jsp_user";
    private static final String USER = "root";
    private static final String PASSWORD = "29092004";
    private static Connection connection = null;

    public static Connection getConnection() {
        if (connection == null) {
            try {
                // Nạp driver của MariaDB
                Class.forName("org.mariadb.jdbc.Driver");
                // Thiết lập kết nối
                connection = DriverManager.getConnection(URL, USER, PASSWORD);
            } catch (ClassNotFoundException e) {
                System.err.println("Không tìm thấy MariaDB JDBC Driver.");
                e.printStackTrace();
            } catch (SQLException e) {
                System.err.println("Lỗi kết nối đến cơ sở dữ liệu.");
                e.printStackTrace();
            }
        }
        return connection;
    }

    public static void closeConnection(Connection con) {
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
