package employeeManagement1.form.employee.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SignInDao {
    private String jdbcURL = "jdbc:mysql://localhost:3306/employee";
    private String jdbcUsername = "root";
    private String jdbcPassword = "Santhosh@143";

    private static final String SELECT_QUERY = "SELECT * FROM users WHERE firstName = ? AND password = ?";

    public boolean validate(String firstName, String password) {
        try (Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_QUERY)) {

            preparedStatement.setString(1, firstName);
            preparedStatement.setString(2, password);

            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                // User exists in database
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
