package employeeManagement1.form.employee.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import employeeManagement1.form.employee.dao.getAllDao;
import employeeManagement1.form.employee.model.employee;
@WebServlet("/fetchAll")
public class getAll  extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		getAllDao a1=new getAllDao();
		
     List<employee>	emp=a1.getAllDao();
     
     req.setAttribute("objects", emp);
     RequestDispatcher rd=req.getRequestDispatcher("download.jsp");
     rd.forward(req, resp);
     
     

	}

}
