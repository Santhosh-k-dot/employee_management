package employeeManagement1.form.employee.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import employeeManagement1.form.employee.dao.userEmployeeDao;
import employeeManagement1.form.employee.model.employee;

public class EmployeeServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fName = req.getParameter("Fname");
        String lName = req.getParameter("Lname");
        String salary = req.getParameter("salary");
        int age = Integer.parseInt(req.getParameter("age"));
        
        
         employee dto=new employee();
         dto.setFname(fName);
         dto.setLname(lName);
         dto.setSalary(salary);
         dto.setAge(age);
         
         userEmployeeDao dao=new userEmployeeDao();
        String msg= dao.InsertTemplates(dto);
        
        resp.getWriter().println(msg);
        // Here you can perform operations with the received data
        // For example, save it to a database, process it, etc.
    }
}
