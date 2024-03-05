package board;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/delete")
public class DeleteBoardServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 게시글 삭제를 위한 게시글 ID 파라미터를 받습니다.
        String boardId = request.getParameter("boardId");

        // 데이터베이스 연결 정보 설정
        String driver = "oracle.jdbc.driver.OracleDriver";
        String url = "jdbc:oracle:thin:@112.148.46.134:51521:xe";
        String id = "alphaknow";
        String pw = "qwer1234";
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // 데이터베이스 연결
        	Class.forName(driver);
            conn = DriverManager.getConnection(url, id, pw);

            // 게시글 삭제 쿼리 작성
            String sql = "DELETE FROM board_post WHERE boardNum = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, boardId);
            
            // 쿼리 실행
            int rowCount = pstmt.executeUpdate();
            
            // 삭제가 성공적으로 이루어졌는지 확인
            if (rowCount > 0) {
                // 삭제 성공
                response.sendRedirect("board"); // 게시판 목록 페이지로 리다이렉트
            } else {
                // 삭제 실패
                // 에러 처리 또는 사용자에게 알림을 보여줄 수 있습니다.
            }

        } catch (SQLException e) {
            e.printStackTrace();
            // 예외 처리
        } catch (ClassNotFoundException e) {
			e.printStackTrace();
		} finally {
            // 연결 및 자원 해제
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
