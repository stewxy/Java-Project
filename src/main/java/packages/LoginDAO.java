package packages;
import java.sql.*;

public class LoginDAO {
	public static boolean validate(User user){
		boolean status=false;
		try{
			
			Connection con = DbManager.getConnection();
			
			PreparedStatement ps=con.prepareStatement("select * from users where username=? and password=?");
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			
			ResultSet rs=ps.executeQuery();
			status=rs.next();
			
		}catch(Exception e){}
		return status;
	}
}

