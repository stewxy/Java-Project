package packages;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbManager {
	public Connection getConnection(){
		try {
			Class.forName("com.mysql.jbdc.Driver");
			Connection conn = DriverManager.getConnection("jbdc:mysql://localhost:3306/location", "root", "admin");
			return conn;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}

}
