package classdirectory.byeol.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import classdirectory.byeol.connection.JdbcConnectionUtil;
import classdirectory.byeol.dto.EmployeeDTO;

public class EmployeeDAO {

	// 생성자에서 데이터베이스 연결을 수행합니다.
	Connection conn = null;
    PreparedStatement pstmt = null;


	public EmployeeDAO() {
		try {
			conn = JdbcConnectionUtil.getInstance().getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// insert
	public int insertEmployee(EmployeeDTO employee) {
		try {
			// 실행할 SQL 쿼리를 문자열로 정의합니다.
			String sql = "INSERT INTO Employee \r\n"
					+ "(employee_key, employee_name, employee_phone, employee_date, department_code, job_grade, \r\n"
					+ "employee_id, employee_pw, manager_phone, employeement_status)\r\n"
					+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, employee.getEmployeeKey());
			pstmt.setString(2, employee.getEmployeeName());
			pstmt.setString(3, employee.getEmployeePhone());
			pstmt.setDate(4, employee.getEmployeeDate());
			pstmt.setInt(5, employee.getDepartmentCode());
			pstmt.setString(6, employee.getJobGrade());
			pstmt.setString(7, employee.getEmployeeId());
			pstmt.setString(8, employee.getEmployeePw());
			pstmt.setString(9, employee.getManagerPhone());
			pstmt.setString(10, employee.getEmployeementStatus());
//            pstmt.executeUpdate();

			// SQL 쿼리를 실행하고, 그 결과를 반환
			// executeUpdate 메서드는 실행된 SQL 쿼리에 의해 영향을 받은 레코드 수를 반환합니다.
			return pstmt.executeUpdate();
		} catch (Exception e) {
			// SQL 쿼리 실행 도중 에러가 발생하면 에러 메시지를 출력합니다.
			e.printStackTrace();
		
        }
		// 데이터베이스 오류가 발생한 경우 -1을 반환합니다.
		return -1;
	}

	// 조회하기 - select all
	public List<EmployeeDTO> selectAllEmployees() {
		List<EmployeeDTO> employees = new ArrayList<>();
		String sql = "SELECT * FROM Employee";

		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				EmployeeDTO employee = new EmployeeDTO();
				employee.setEmployeeKey(rs.getInt("employee_key"));
				employee.setEmployeeName(rs.getString("employee_name"));
				employee.setEmployeePhone(rs.getString("employee_phone"));
				employee.setEmployeeDate(rs.getDate("employee_date"));
				employee.setDepartmentCode(rs.getInt("department_code"));
				employee.setJobGrade(rs.getString("job_grade"));
				employee.setEmployeeId(rs.getString("employee_id"));
				employee.setEmployeePw(rs.getString("employee_pw"));
				employee.setManagerPhone(rs.getString("manager_phone"));
				employee.setEmployeementStatus(rs.getString("employeement_status"));
				employees.add(employee);
			}

			rs.close();
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return employees;
	}

	// update
	public int updateEmployee(EmployeeDTO employee) {
        try  {
            String sql = "UPDATE employee SET employeeName = ?, employeePhone = ?, employeeDate = ?, departmentCode = ?, jobGrade = ?, employeeId = ?, employeePw = ?, managerPhone = ?, employeementStatus = ? WHERE employeeKey = ?";

            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, employee.getEmployeeName());
            pstmt.setString(2, employee.getEmployeePhone());
            pstmt.setDate(3, employee.getEmployeeDate());
            pstmt.setInt(4, employee.getDepartmentCode());
            pstmt.setString(5, employee.getJobGrade());
            pstmt.setString(6, employee.getEmployeeId());
            pstmt.setString(7, employee.getEmployeePw());
            pstmt.setString(8, employee.getManagerPhone());
            pstmt.setString(9, employee.getEmployeementStatus());
            pstmt.setInt(10, employee.getEmployeeKey());

            return pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // 데이터베이스 연결 종료
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return -1;
}
	
	// 삭제하기

	public void updateEmployee(int employeeKey, String employeeName, int departmentCode, String employeePhone,
			String jobGrade, String managerPhone, Date employeeDate, String employeeId, String employeePw,
			String employeementStatus) throws SQLException {
		// TODO Auto-generated method stub
		 String sql = "DELETE FROM employees WHERE employeeKey = ?";
	        PreparedStatement pstmt = conn.prepareStatement(sql);
	        pstmt.setInt(1, employeeKey);
	        pstmt.executeUpdate();
		
	}
}