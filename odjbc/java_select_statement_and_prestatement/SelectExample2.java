package java_select_statement_and_prestatement;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SelectExample2 {

	public static void main(String[] args) throws ClassNotFoundException {

		String sql = 
				"SELECT"
				+ " *"
				+ " FROM MYUSER.TBL_MEMBER"
				+ " WHERE MPASSWORD LIKE ?";
		try {
		
			Connection conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@tcp://localhost:1521/xe",
					"myuser", "oracle4U");
			
			PreparedStatement preparedStatement = 
					conn.prepareStatement(sql);
			preparedStatement.setString(1, "11%");
			ResultSet rs = preparedStatement.executeQuery();
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
				i++;
			}
			
			
			preparedStatement.setString(1, "12%");
			ResultSet rs2 = preparedStatement.executeQuery();
			while (rs2.next()) {
				
				String mid = rs2.getString("mid");
				String mpassword = rs2.getString("mpassword");
				String mname = rs2.getString("mname");
				String memail = rs2.getString("memail");
				Date mjoindate = rs2.getDate("mjoindate");
				
				System.out.println("[" + i + "]");
				System.out.println(mid);
				System.out.println(mpassword);
				System.out.println(mname);
				System.out.println(memail);
				System.out.println(mjoindate);
				System.out.println();
				i++;
			}
		} catch (SQLException e) {
			e.toString();
		}
		// It is possible to close a JDBC Connection automatically
		// via the Java Try-with-resources
		// construct that was added in Java 7
		// Once the execution exits the try block,
		// the JDBC Connection will get closed automatically for you
		
	}

}
