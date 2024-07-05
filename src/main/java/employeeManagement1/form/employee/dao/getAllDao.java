package employeeManagement1.form.employee.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import employeeManagement1.form.employee.model.employee;

public class getAllDao {

	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/employee";
    private static final String JDBC_USERNAME = "root";
    private static final String JDBC_PASSWORD = "Santhosh@143";

    // Method to fetch user information
    public List<employee> getAllDao() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
       // String sql="select * from register";
        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD);
        		
                PreparedStatement stmt = conn.prepareStatement("select * from employeedetails")) {
            
             ResultSet res = stmt.executeQuery();
             List<employee> uf=new ArrayList<>();
             while (res.next()) 
              {
            	 employee dto=new employee();
            	 dto.setId(res.getInt(1));
            	 dto.setFname(res.getString(2));
            	 dto.setLname(res.getString(3));
           
            	 dto.setSalary(res.getString(4));
             	 dto.setAge(res.getInt(5));
            	 
            	 uf.add(dto);
            	 
              }
             return uf;
              
           } 
         catch (SQLException e) 
                 {
                     e.printStackTrace();
                  }
		return null;
        
             
    }
}
