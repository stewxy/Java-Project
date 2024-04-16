package packages;
import java.sql.*;

public class LoginDAO {
	public static boolean validate(Login login){
		boolean status=false;
		try{
			
			Connection con = DbManager.getConnection();
			
			PreparedStatement ps=con.prepareStatement("select * from users where username=? and password=?");
			ps.setString(1, login.getUsername());
			ps.setString(2, login.getPassword());
			
			ResultSet rs=ps.executeQuery();
			status=rs.next();
			
		}catch(Exception e){}
		return status;
	}
//	public static void create(String user, String pass) {
//		Login register = new Login();
//		
//		Connection con = DbManager.getConnection();	
//		PreparedStatement ps=con.prepareStatement("insert into users(username, password) values (user, pass)");
//		ps.setString(1, register.setUsername(user));
//		ps.setString(2, register.setPassword(pass));
//	}
	
}

