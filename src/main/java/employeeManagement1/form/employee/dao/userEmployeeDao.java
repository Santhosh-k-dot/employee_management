package employeeManagement1.form.employee.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import employeeManagement1.form.employee.model.employee;

public class userEmployeeDao {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/employee";
    private static final String JDBC_USERNAME = "root";
    private static final String JDBC_PASSWORD = "Santhosh@143";

    public String InsertTemplates(employee e1) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD);
             PreparedStatement stmt = conn.prepareStatement("INSERT INTO employeedetails (first_name, last_name,salary, age) VALUES (?,?, ?, ?)")) {
           
            stmt.setString(1, e1.getFname());
            stmt.setString(2, e1.getLname());
            
            stmt.setString(3,e1.getSalary());
            stmt.setInt(4, e1.getAge());

            int res = stmt.executeUpdate();

            if (res > 0) {
                return "User Successfully Created";
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return "Something went wrong";
    }
}
