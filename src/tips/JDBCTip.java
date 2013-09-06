/*
 *做数据库连接的范例程序
 */
package tips;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBCTip {
	void tip(){
		String connectionUrl = "jdbc:sqlserver://192.168.0.254:1433;" +
				"databaseName=Northwind;;user=sa;password=abcd-1234";
		
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			//连接数据库
			con = DriverManager.getConnection(connectionUrl);
			String SQL = "SELECT";
			stmt = con.createStatement();
			//执行SQL
			rs = stmt.executeQuery(SQL);
			
			rs.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			if (rs != null) try { rs.close(); } catch (Exception e) {};
			if (stmt != null) try { stmt.close(); } catch (Exception e) {};
			if (con != null) try { con.close(); } catch (Exception e) {};
		}
	}

}
