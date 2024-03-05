package classDirectory.byeol;


import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import classDirectory.byeol.dao.EmployeeDAO;
import classDirectory.byeol.dto.EmployeeDTO;

@WebServlet("/employee")
public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// 조회
		// EmployeeDAO 객체를 생성합니다.
	    EmployeeDAO dao = new EmployeeDAO();
	    
	    // 모든 직원 정보를 조회합니다.
	    List<EmployeeDTO> employees = dao.selectAllEmployees();
	    
	    // 조회된 직원 정보를 request의 attribute로 설정합니다.
	    req.setAttribute("employees", employees);
	    
	    
	    // JSP 페이지로 forwarding 합니다.
	    RequestDispatcher dispatcher = req.getRequestDispatcher("/ibgogwanli/employee.jsp");
	    dispatcher.forward(req, resp);
	    
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
	        throws ServletException, IOException {
	    try {
	        // 한글 깨짐 방지
	        req.setCharacterEncoding("utf-8");
	        // 내보낼 때 한글 깨짐 방지
	        resp.setContentType("text/html; charset=UTF-8");
	   
	        String action = req.getParameter("action");
	        int employeeKey = Integer.parseInt(req.getParameter("employeeKey"));
	        String employeeName = req.getParameter("employeeName");
	        String employeePhone = req.getParameter("employeePhone");
	        Date employeeDate = Date.valueOf(req.getParameter("employeeDate")); // yyyy-mm-dd 형식의 문자열
	        int departmentCode = Integer.parseInt(req.getParameter("departmentCode"));
	        String jobGrade = req.getParameter("jobGrade");
	        String employeeId = req.getParameter("employeeId");
	        String employeePw = req.getParameter("employeePw");
	        String managerPhone = req.getParameter("managerPhone");
	        String employeementStatus = req.getParameter("employeementStatus");

	        EmployeeDTO employee = new EmployeeDTO();
	        employee.setEmployeeKey(employeeKey);
	        employee.setEmployeeName(employeeName);
	        employee.setEmployeePhone(employeePhone);
	        employee.setEmployeeDate(employeeDate);
	        employee.setDepartmentCode(departmentCode);
	        employee.setJobGrade(jobGrade);
	        employee.setEmployeeId(employeeId);
	        employee.setEmployeePw(employeePw);
	        employee.setManagerPhone(managerPhone);
	        employee.setEmployeementStatus(employeementStatus);

	        EmployeeDAO dao = new EmployeeDAO();

	        if ("update".equals(action)) {
	            dao.updateEmployee(employee); // UPDATE 메서드 호출
	        } else if ("insert".equals(action)) {
	            dao.insertEmployee(employee); // INSERT 메서드 호출
	        }
	    } catch (UnsupportedEncodingException e) {
	        e.printStackTrace();
	    }
	    // employee로 돌아감
	    doGet(req, resp);
	}

}

