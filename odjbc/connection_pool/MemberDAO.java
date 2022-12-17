package connection_pool;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class MemberDAO {

	
	
	private DataSource dataSource;
	private Connection conn;
	private PreparedStatement preparedStatement;

	public MemberDAO()  {
		try {
			// connection pool
			// https://iinomad.com/201
			Context context = new InitialContext();
			Context envContext =
					(Context) context.lookup("java:/comp/env");
			dataSource = (DataSource) envContext.lookup("jdbc/myuser");
		} catch (NamingException e) {
			e.printStackTrace();
		}
		
		
	}
	
	public List<MemberVO> listMembers() {
		List<MemberVO> memberList = new ArrayList<>();
		String query = "SELECT"
				+ " *"
				+ " FROM MYUSER.TBL_MEMBER"
				+ " WHERE MPASSWORD LIKE '11%'";
		
		
		
		try {
			conn = dataSource.getConnection();
			preparedStatement =
					conn.prepareStatement(query);
			
			
			ResultSet rs = preparedStatement.executeQuery(query);
			
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
			
			rs.close();
			preparedStatement.close();
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return memberList;
	}
	
	
}
