package employeeManagement1.form.employee.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import employeeManagement1.form.employee.model.employee;

public class delete_employee_dao {
	
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/employee";
    private static final String JDBC_USERNAME = "root";
    private static final String JDBC_PASSWORD = "Santhosh@143";


	public String deleteById(employee e1) {
		// TODO Auto-generated method stub
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD);
                PreparedStatement stmt = conn.prepareStatement("delete from employeedetails WHERE EmpId=?")) {
            
            stmt.setInt(1,e1.getId());
            
            int res = stmt.executeUpdate();
            
            if (res > 0) {
                return "User Successfully deleted";
            }
        } catch (SQLException e) {
            e.printStackTrace(); 	
        }
        
        return "Something went wrong";
    }
		
	}


