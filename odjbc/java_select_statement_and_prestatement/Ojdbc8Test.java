package java_select_statement_and_prestatement;

import java.sql.Connection;
import java.sql.SQLException;

import oracle.jdbc.pool.OracleDataSource;

public class Ojdbc8Test {

	public static void main(String[] args) throws SQLException {

		String url = "jdbc:oracle:thin:@tcp://localhost:1521/xe";
	    OracleDataSource ods = new OracleDataSource();
	    ods.setUser("myuser");
	    ods.setPassword("oracle4U");
	    ods.setURL(url);
	    Connection con = ods.getConnection();
	    
	    System.out.println("정상작동");
	}

}
