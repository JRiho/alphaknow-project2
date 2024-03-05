package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter("/*")
public class alphafilter extends HttpFilter implements Filter {
       
    public alphafilter() {
        super();
    }

    public void destroy() {
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        HttpSession session = req.getSession(false); // 세션 가져오기 (없으면 null 반환)
        String uri = req.getRequestURI();

        System.out.println("필터 적용 확인: " + uri); // 처리 중인 URI 로깅

        // CSS와 JS 파일에 대한 처리
        if (uri.endsWith(".css")) {
            res.setContentType("text/css; charset=UTF-8");
        } else if (uri.endsWith(".js")) {
            res.setContentType("application/javascript; charset=UTF-8");
        }
        request.setCharacterEncoding("UTF-8"); // 모든 요청에 대해 UTF-8 인코딩 적용

        // 로그인 및 권한 검사
        if (uri.startsWith("/protected/") || uri.startsWith("/admin/")) {
            if (session == null || session.getAttribute("userType") == null) {
                // 로그인하지 않은 경우 로그인 페이지로 리디렉션
                res.sendRedirect(req.getContextPath() + "/project_login.jsp");
                return; // 필터 체인의 나머지 부분 및 대상 리소스 실행 중지
            } else if (uri.startsWith("/admin/") && !"admin".equals(session.getAttribute("userType"))) {
                // 관리자 페이지에 접근하려는데 사용자가 관리자가 아닌 경우
                res.sendRedirect(req.getContextPath() + "/accessDenied.jsp");
                return; // 필터 체인의 나머지 부분 및 대상 리소스 실행 중지
            }
        }
        if(uri.indexOf("project_login.jsp")!=-1) {
        	chain.doFilter(req, res); // 요청 및 응답을 다음 필터나 대상 리소스로 전달
        } else {
        	
        }

    }

    public void init(FilterConfig fConfig) throws ServletException {
        // 필터 초기화 로직 (필요한 경우)
    }
}
