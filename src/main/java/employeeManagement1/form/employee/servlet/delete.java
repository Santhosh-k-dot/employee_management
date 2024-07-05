package employeeManagement1.form.employee.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import employeeManagement1.form.employee.dao.delete_employee_dao;
import employeeManagement1.form.employee.model.employee;

public class delete extends HttpServlet {
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
 int id=Integer.parseInt(req.getParameter("id"));
 
 employee e1=new employee();
 e1.setId(id);
 
 delete_employee_dao d1= new  delete_employee_dao();
String msg= d1.deleteById(e1);
 resp.getWriter().println(msg);
 
}
}
