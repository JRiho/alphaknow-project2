package pppController;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ConnectionDBCP {
	
	private Connection conn;

	public Connection connDB(){
		try {
			Context ctx = new InitialContext();
			DataSource dataFactory = (DataSource) ctx.lookup("java:/comp/env/jdbc/oracleDB");
			this.conn = dataFactory.getConnection();
			System.out.println("");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public void closeDB() {
        try {
            if (conn != null && !conn.isClosed()) {
                conn.close();
                System.out.println("closeDB 실행");
            }
        } catch (Exception e) {
        	e.printStackTrace();
        }
    }
}
