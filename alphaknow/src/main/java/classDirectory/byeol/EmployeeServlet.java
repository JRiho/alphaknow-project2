package classdirectory.byeol;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import classdirectory.byeol.connection.JdbcConnectionUtil;
import classdirectory.byeol.dao.EmployeeDAO;
import classdirectory.byeol.dto.EmployeeDTO;

@WebServlet("/employee")
public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// EmployeeDAO 객체를 생성합니다.
		try (Connection conn = JdbcConnectionUtil.getInstance().getConnection()) {
			EmployeeDAO dao = new EmployeeDAO();

			// 모든 직원 정보를 조회합니다.
			List<EmployeeDTO> employees = dao.selectAllEmployees();

			// 조회된 직원 정보를 request의 attribute로 설정합니다.
			req.setAttribute("employees", employees);

			// JSP 페이지로 forwarding 합니다.
			RequestDispatcher dispatcher = req.getRequestDispatcher("/ibgogwanli/employee.jsp");
			dispatcher.forward(req, resp);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new ServletException("Database connection error", e);
		}
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=UTF-8");

		try (Connection conn = JdbcConnectionUtil.getInstance().getConnection()) {
			EmployeeDAO dao = new EmployeeDAO();

			String action = req.getParameter("action");
			if ("delete".equals(action)) {
				performDeleteAction(req, resp, dao);
			} else if ("check".equals(action)) {
				performCheckAction(req, resp, dao);
			} else if ("update".equals(action)) {
				performUpdateAction(req, resp, dao);
			} else {
				performInsertAction(req, resp, dao);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new ServletException("Database connection or operation error", e);
		}
	}

	// 삭제하기 delete
	private void performDeleteAction(HttpServletRequest req, HttpServletResponse resp, EmployeeDAO dao)
			throws IOException {
		String[] employeeKeys = req.getParameterValues("employeeKey");

		for (String employeeKeyStr : employeeKeys) {
			int employeeKey = Integer.parseInt(employeeKeyStr);
			try {
				dao.deleteEmployee(employeeKey);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		resp.sendRedirect("employee"); // 삭제 후 employeeList 페이지로 리다이렉트
	}

	// insert 인서트
	private void performInsertAction(HttpServletRequest req, HttpServletResponse resp, EmployeeDAO dao)
			throws ServletException, IOException {
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

		int result = dao.insertEmployee(employee);

		doGet(req, resp);
	}

	// 중복체크 - 구현중임
	private void performCheckAction(HttpServletRequest req, HttpServletResponse resp, EmployeeDAO dao)
			throws IOException {
		int employeeKey = Integer.parseInt(req.getParameter("employeeKey"));
		boolean isDuplicate = dao.checkEmployeeKey(employeeKey);
		resp.getWriter().write("{\"isDuplicate\": " + isDuplicate + "}");
	}

	// 업데이트
	private void performUpdateAction(HttpServletRequest req, HttpServletResponse resp, EmployeeDAO dao)
			throws ServletException, IOException {
		int employeeKey = Integer.parseInt(req.getParameter("employeeKey"));
		String employeeName = req.getParameter("employeeName");
		int departmentCode = Integer.parseInt(req.getParameter("departmentCode"));
		String employeePhone = req.getParameter("employeePhone");
		String jobGrade = req.getParameter("jobGrade");
		String managerPhone = req.getParameter("managerPhone");
		String strEmployeeDate = req.getParameter("employeeDate");
		Date employeeDate = Date.valueOf(strEmployeeDate);
		String employeeId = req.getParameter("employeeId");
		String employeePw = req.getParameter("employeePw");
		String employeementStatus = req.getParameter("employeementStatus");

		EmployeeDTO employee = new EmployeeDTO();
		employee.setEmployeeKey(employeeKey);
		employee.setEmployeeName(employeeName);
		employee.setDepartmentCode(departmentCode);
		employee.setEmployeePhone(employeePhone);
		employee.setJobGrade(jobGrade);
		employee.setManagerPhone(managerPhone);
		employee.setEmployeeDate(employeeDate);
		employee.setEmployeeId(employeeId);
		employee.setEmployeePw(employeePw);
		employee.setEmployeementStatus(employeementStatus);

		int result = dao.updateEmployee(employee);

		doGet(req, resp);
	}
}
