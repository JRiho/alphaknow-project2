package login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("login.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getParameter("userId");
        String password = request.getParameter("password");

        try (Connection conn = Login.getConnection()) {
        	String sql = "SELECT USER_TYPE, USER_NAME FROM employee WHERE EMPLOYEE_ID=? AND EMPLOYEE_PW=?";
            try (PreparedStatement statement = conn.prepareStatement(sql)) {
                statement.setString(1, userId);
                statement.setString(2, password);
                try (ResultSet resultSet = statement.executeQuery()) {
                    if (resultSet.next()) {
                        // 로그인 성공: 세션에 사용자 유형 저장
                        HttpSession session = request.getSession();
                        session.setMaxInactiveInterval(30 * 60); // 세션 유지 시간 30분 설정

                        String userType = resultSet.getString("USER_TYPE"); // DB에서 사용자 유형 정보 가져오기
                        String userName = resultSet.getString("USER_NAME");
                        session.setAttribute("userType", userType);
                        session.setAttribute("userName", userName);
                        
                        if ("admin".equals(userType)) {
                            // 관리자 페이지로 리디렉션
                            response.sendRedirect("adminPage.jsp");
                        } else {
                            // 일반 사용자 홈페이지로 리디렉션
                            response.sendRedirect("mainPage.jsp");
                        }
                    } else {
                        // 로그인 실패: 로그인 페이지로 리디렉션
                        request.setAttribute("errorMessage", "아이디와 비밀번호가 일치하지 않습니다.");
                        request.getRequestDispatcher("login.jsp").forward(request, response);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp");
        }
    }

}
