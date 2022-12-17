package java_select_statement_and_prestatement;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class MemberDAO {

	private static final String driver =
			"oracle.jdbc.driver.OracleDriver";
	private static final String url =
			"jdbc:oracle:thin:@tcp://localhost:1521/xe";
	private static final String user = "myuser";
	private static final String password = "oracle4U";
	
	private Connection conn;
	private Statement stmt;
	
	private void connDB() {
		try {
//			Class.forName(driver);
			
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
				
		} catch (Exception e) {
			e.toString();
		}
	}
	
	public List<MemberVO> listMembers() {
		List<MemberVO> memberList = new ArrayList<>();
		String query = "SELECT"
				+ " *"
				+ " FROM MYUSER.TBL_MEMBER"
				+ " WHERE MPASSWORD LIKE '11%'";
		
		connDB();
		
		try {
			ResultSet rs = stmt.executeQuery(query);
			
			int i = 1;
			while (rs.next()) {
				
				String mid = rs.getString("mid");
				String mpassword = rs.getString("mpassword");
				String mname = rs.getString("mname");
				String memail = rs.getString("memail");
				Date mjoindate = rs.getDate("mjoindate");
				
				System.out.println("[" + i + "]");
				System.out.println(mid);
				System.out.println(mpassword);
				System.out.println(mname);
				System.out.println(memail);
				System.out.println(mjoindate);
				System.out.println();
				
				memberList.add(new MemberVO(
						mid, mpassword, mname, memail, mjoindate));
				i++;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// It is possible to close a JDBC Connection automatically
		// via the Java Try-with-resources
		// construct that was added in Java 7
		// Once the execution exits the try block,
		// the JDBC Connection will get closed automatically for you
		return memberList;
	}
	
	public List<MemberVO> listMembers(String query) {
		List<MemberVO> memberList = new ArrayList<>();
		
		connDB();
		
		try {
			ResultSet rs = stmt.executeQuery(query);
			
			int i = 1;
			while (rs.next()) {
				
				String mid = rs.getString("mid");
				String mpassword = rs.getString("mpassword");
				String mname = rs.getString("mname");
				String memail = rs.getString("memail");
				Date mjoindate = rs.getDate("mjoindate");
				
				System.out.println("[" + i + "]");
				System.out.println(mid);
				System.out.println(mpassword);
				System.out.println(mname);
				System.out.println(memail);
				System.out.println(mjoindate);
				System.out.println();
				
				memberList.add(new MemberVO(
						mid, mpassword, mname, memail, mjoindate));
				i++;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return memberList;
	}
	
}
