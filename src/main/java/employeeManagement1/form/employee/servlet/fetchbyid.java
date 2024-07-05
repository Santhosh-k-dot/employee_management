package employeeManagement1.form.employee.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import employeeManagement1.form.employee.dao.fetchbyid_dao; // Import the DAO class
import employeeManagement1.form.employee.model.employee;

@WebServlet("/fetchbyid")
public class fetchbyid extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));

        // Create an instance of employee
//        employee e1 = new employee();
//        e1.setId(id);

        // Create an instance of fetchbyid_dao
        fetchbyid_dao dao = new fetchbyid_dao();

        // Call the fetchById method to fetch the employee data
        Object message = dao.fetchById(id);

        // Set response content type
        resp.setContentType("text/plain");

        // Write the message to the response
        PrintWriter out = resp.getWriter();
        out.println(message);
    }
}
