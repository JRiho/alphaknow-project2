package process;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import classdirectory.Equipment;

@WebServlet("/equipment")
public class EquipmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final String driver="oracle.jdbc.driver.OracleDriver";
	private static final String url="jdbc:oracle:thin:@112.148.46.134:51521:xe";
	private static final String user= "alphaknow";
	private static final String password="qwer1234";
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Equipment> equipmentList = new ArrayList<>();
		try {
			Class.forName(driver);
			try (Connection conn = DriverManager.getConnection(url, user, password);
					Statement stmt = conn.createStatement();
					ResultSet rs = stmt.executeQuery("SELECT * FROM Equipment")) {

				while (rs.next()) {
					Equipment equipment = new Equipment(rs.getInt("equipment_code"), rs.getString("equipment_name"),
							rs.getString("management_number"), rs.getString("manufacturer"),
							rs.getString("purchasing_company_name"), rs.getString("repair_company_name"),
							rs.getString("manager"), rs.getString("location"), rs.getString("usage"),
							rs.getString("usage_status"), rs.getString("purchase_date"),
							rs.getString("history_registration_date"));
					equipmentList.add(equipment);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("equipmentList", equipmentList);
		// response.sendRedirect("process/process_equipment.jsp"); // 이전 코드 주석 처리
		request.getRequestDispatcher("process/process_equipment.jsp").forward(request, response); // 수정된 코드
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String equipmentName = req.getParameter("equipment_name");
		String managementNumber = req.getParameter("management_number");
		String manufacturer = req.getParameter("manufacturer");
		String purchasingCompanyName = req.getParameter("purchasing_company_name");
		String repairCompanyName = req.getParameter("repair_company_name");
		String manager = req.getParameter("manager");
		String location = req.getParameter("location");
		String usage = req.getParameter("usage");
		String usageStatus = req.getParameter("usage_status");
		String purchaseDate = req.getParameter("purchase_date"); // 'YYYY-MM-DD' 형식이라고 가정
		String historyRegistrationDate = req.getParameter("history_registration_date"); // 'YYYY-MM-DD' 형식이라고 가정

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url, user, password);

			String seqSql = "SELECT equipment_seq.NEXTVAL FROM DUAL";
			pstmt = con.prepareStatement(seqSql);
			rs = pstmt.executeQuery();
			int equipmentCode = 0;
			if (rs.next()) {
				equipmentCode = rs.getInt(1); // SEQUENCE로부터 생성된 고유번호
			}
			rs.close();
			pstmt.close();

			String insertSql = "INSERT INTO Equipment (equipment_code, equipment_name, management_number, manufacturer, "
					+ "purchasing_company_name, repair_company_name, manager, location, usage, usage_status, "
					+ "purchase_date, history_registration_date) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, TO_DATE(?, 'YYYY-MM-DD'), TO_DATE(?, 'YYYY-MM-DD'))";
			pstmt = con.prepareStatement(insertSql);

			pstmt.setInt(1, equipmentCode);
			pstmt.setString(2, equipmentName);
			pstmt.setString(3, managementNumber);
			pstmt.setString(4, manufacturer);
			pstmt.setString(5, purchasingCompanyName);
			pstmt.setString(6, repairCompanyName);
			pstmt.setString(7, manager);
			pstmt.setString(8, location);
			pstmt.setString(9, usage);
			pstmt.setString(10, usageStatus);
			pstmt.setString(11, purchaseDate);
			pstmt.setString(12, historyRegistrationDate);

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		resp.sendRedirect("equipment");

	}
}