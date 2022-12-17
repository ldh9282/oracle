package dbUtil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DBUtil {

	/** connection pool */
	public static Connection getConnection(String name) {
		
		Connection conn = null;
		
		try {
			Context context;
			context = new InitialContext();
			Context envContext =
					(Context) context.lookup("java:/comp/env");
			DataSource dataSource = (DataSource) envContext.lookup(name);
			conn = dataSource.getConnection();
		} catch (NamingException | SQLException e) {
			e.printStackTrace();
		}
		
		
		return conn;
	}
	
	public static Connection getConnection() {
		Connection conn = null;
		String url = "jdbc:oracle:thin:@tcp://localhost:1521/xe";
		String schema = "myuser";
		String password = "oracle4U";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try {
			conn = DriverManager.getConnection(
					url,
					schema, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	
	public static void close(ResultSet rs, PreparedStatement pstmt, Connection conn) {
		
	
		try {
			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
			if (conn != null) {
				conn.close();
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
