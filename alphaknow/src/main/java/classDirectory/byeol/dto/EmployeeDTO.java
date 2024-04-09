package classDirectory.byeol.dto;

import java.sql.Date;

public class EmployeeDTO {
	
	private int employeeKey;  		//사원코드
	private String employeeName;  	// 사원이름
	private String employeePhone;	// 사원 전화번호
	private Date employeeDate;		// 입사일
	private int departmentCode;		// 부서 코드
	private String jobGrade;		// 직급
	private String employeeId;		// 사원아이디
	private String employeePw;		// 비밀번호
	private String managerPhone;	// 관리자 전화번호
	private String employeementStatus;	// 재직여부
	
	
	// 기본 생성자
	public EmployeeDTO() {
		
	}
	
	// 매개변수를 받는 생성자
	public EmployeeDTO(int employeeKey, String employeeName, String employeePhone, Date employeeDate,
			int departmentCode, String jobGrade, String employeeId, String employeePw, String managerPhone,
			String employeementStatus) {
		super();
		this.employeeKey = employeeKey;
		this.employeeName = employeeName;
		this.employeePhone = employeePhone;
		this.employeeDate = employeeDate;
		this.departmentCode = departmentCode;
		this.jobGrade = jobGrade;
		this.employeeId = employeeId;
		this.employeePw = employeePw;
		this.managerPhone = managerPhone;
		this.employeementStatus = employeementStatus;
	}
	public int getEmployeeKey() {
		return employeeKey;
	}
	public void setEmployeeKey(int employeeKey) {
		this.employeeKey = employeeKey;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getEmployeePhone() {
		return employeePhone;
	}
	public void setEmployeePhone(String employeePhone) {
		this.employeePhone = employeePhone;
	}
	public Date getEmployeeDate() {
		return employeeDate;
	}
	public void setEmployeeDate(Date employeeDate) {
		this.employeeDate = employeeDate;
	}
	public int getDepartmentCode() {
		return departmentCode;
	}
	public void setDepartmentCode(int departmentCode) {
		this.departmentCode = departmentCode;
	}
	public String getJobGrade() {
		return jobGrade;
	}
	public void setJobGrade(String jobGrade) {
		this.jobGrade = jobGrade;
	}
	public String getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}
	public String getEmployeePw() {
		return employeePw;
	}
	public void setEmployeePw(String employeePw) {
		this.employeePw = employeePw;
	}
	public String getManagerPhone() {
		return managerPhone;
	}
	public void setManagerPhone(String managerPhone) {
		this.managerPhone = managerPhone;
	}
	public String getEmployeementStatus() {
		return employeementStatus;
	}
	public void setEmployeementStatus(String employeementStatus) {
		this.employeementStatus = employeementStatus;
	}
	
	
	@Override
	public String toString() {
		return "EmployeeDTO [employeeKey=" + employeeKey + ", employeeName=" + employeeName + ", employeePhone="
				+ employeePhone + ", employeeDate=" + employeeDate + ", departmentCode=" + departmentCode
				+ ", jobGrade=" + jobGrade + ", employeeId=" + employeeId + ", employeePw=" + employeePw
				+ ", managerPhone=" + managerPhone + ", employeementStatus=" + employeementStatus + "]";
	}
	
	
	
	
}
