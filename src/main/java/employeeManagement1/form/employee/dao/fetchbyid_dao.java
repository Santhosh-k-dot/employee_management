package employeeManagement1.form.employee.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;

import employeeManagement1.form.employee.model.employee;

public class fetchbyid_dao {
	
	 private static final String JDBC_URL = "jdbc:mysql://localhost:3306/employee";
	    private static final String JDBC_USERNAME = "root";
	    private static final String JDBC_PASSWORD = "Santhosh@143";
	    
		public Object fetchById(int id) {
			// TODO Auto-generated method stub
	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	        } catch (ClassNotFoundException e) {
	            e.printStackTrace();
	        }
	        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD);
	                PreparedStatement stmt = conn.prepareStatement("SELECT * FROM employeedetails WHERE EmpID=?")) {
	            
	            stmt.setInt(1,id);
	            
	            ResultSet res=stmt.executeQuery();
	            employee e1=new employee();
	            
	            if (res.next()) {
	               e1.setId(res.getInt(1));
	               e1.setFname(res.getString(2));
	               e1.setLname(res.getString(3));
	               e1.setSalary(res.getString(4));
	               e1.setAge(res.getInt(5));
	               
	               
	            }
	            return e1;
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        
	        return "Something went wrong";
	    }
			
		}



