package classDirectory.byeol.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import classDirectory.byeol.connection.JdbcConnectionUtil;
import classDirectory.byeol.dto.EmployeeDTO;

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
	
	
	// delete
	public void deleteEmployee(int employeeKey) throws Exception {
		try (
				PreparedStatement pstmt = conn.prepareStatement("DELETE FROM employee WHERE employee_key = ?")) {

			// 삭제할 장비의 equipment_code를 설정
			pstmt.setInt(1, employeeKey);

			// SQL 쿼리 실행
			int affectedRows = pstmt.executeUpdate();

			if (affectedRows == 0) {
				throw new SQLException("장비 삭제 실패: 해당 장비가 데이터베이스에 없습니다.");
			}
		}
	}
	// 중복조회
	public boolean checkEmployeeKey(int employeeKey) {
	    String sql = "SELECT * FROM employee WHERE employeeKey = ?";
	    try (
	        PreparedStatement pstmt = conn.prepareStatement(sql)) {
	        pstmt.setInt(1, employeeKey);
	        ResultSet rs = pstmt.executeQuery();
	        return rs.next();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return false;
	}
	
	// 업데이트
	public int updateEmployee(EmployeeDTO employee) {
	    String SQL = "UPDATE employee SET employeeName = ?, departmentCode = ?, employeePhone = ?, jobGrade = ?, managerPhone = ?, employeeDate = ?, employeeId = ?, employeePw = ?, employeementStatus = ? WHERE employeeKey = ?";
	    try (PreparedStatement pstmt = conn.prepareStatement(SQL)) {
	        pstmt.setString(1, employee.getEmployeeName());
	        pstmt.setInt(2, employee.getDepartmentCode());
	        pstmt.setString(3, employee.getEmployeePhone());
	        pstmt.setString(4, employee.getJobGrade());
	        pstmt.setString(5, employee.getManagerPhone());
	        pstmt.setDate(6, employee.getEmployeeDate());
	        pstmt.setString(7, employee.getEmployeeId());
	        pstmt.setString(8, employee.getEmployeePw());
	        pstmt.setString(9, employee.getEmployeementStatus());
	        pstmt.setInt(10, employee.getEmployeeKey());
	        return pstmt.executeUpdate();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return -1; // 데이터베이스 오류
	}

}