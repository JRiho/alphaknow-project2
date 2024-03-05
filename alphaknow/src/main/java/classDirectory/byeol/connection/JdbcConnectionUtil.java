// 싱글톤 적용
package classDirectory.byeol.connection;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JdbcConnectionUtil {
	
	Connection con = null;
    

	private static JdbcConnectionUtil instance;

	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@112.148.46.134:51521:xe";
	private String user = "alphaknow";
	private String password = "qwer1234";

	private JdbcConnectionUtil() {

		try {
			Class.forName(driver);
			System.out.println("orcle 드라이버 로딩 성공");
			
			// 데이터베이스 연결
			con = DriverManager.getConnection(url, user, password);
			System.out.println("connection 생성 성공");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	


	public static JdbcConnectionUtil getInstance() {
		// 동기화 블록 : 스레드가 해당 일을 처리 중이라면 일을 처리하러 들어온 스레드는 잠시 대기함
		// 한번만 생성되는 것을 보장함
		synchronized (JdbcConnectionUtil.class) {

			if (instance == null) {
				instance = new JdbcConnectionUtil();
			}
		}
		return instance;
	}
	
	public Connection getConnection() throws SQLException{
		
		return con;
	}
}
