package classdirectory.byeol;


import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import classdirectory.byeol.dao.EmployeeDAO;
import classdirectory.byeol.dto.EmployeeDTO;

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
      // 한글 깨짐 방지
      try {
         req.setCharacterEncoding("utf-8");
         // 내보낼 때 한글 깨짐 방지
         resp.setContentType("text/html; charset=UTF-8");
      } catch (UnsupportedEncodingException e) {
         e.printStackTrace();
      }
      // insert
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

        // EmployeeDTO 객체를 생성하고, 요청으로부터 받은 정보를 설정합니다.
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

        // EmployeeDAO 객체를 생성하고, EmployeeDTO 객체를 데이터베이스에 삽입합니다.
        EmployeeDAO dao = new EmployeeDAO();
        int result = dao.insertEmployee(employee);
        
        // 삭제

        // employee 로 돌아감
        doGet(req, resp);
   }      
}