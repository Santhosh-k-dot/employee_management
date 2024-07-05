package employeeManagement1.form.employee.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import employeeManagement1.form.employee.dao.SignInDao;

@WebServlet("/signin")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private SignInDao signInDao;

    public void init() {
        signInDao = new SignInDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("firstName");
        String password = request.getParameter("password");

        // You might want to perform some basic input validation here

        if (signInDao.validate(username, password)) {
            // Login successful
            request.getSession().setAttribute("firstName", username); // Storing username in session
            response.sendRedirect("employeeList.jsp");
        } else {
            // Login failed
            request.setAttribute("error", "Invalid username or password"); // Provide error message
            request.getRequestDispatcher("login.jsp").forward(request, response); // Forward to login page with error
        }
    }
}
