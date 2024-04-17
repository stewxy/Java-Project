package packages;

import java.sql.*;

public class RegisterDAO {
	public static int register(User user){
		int status=0;
		try{
			Connection con = DbManager.getConnection();
            PreparedStatement ps=con.prepareStatement("insert into users values(?,?)");
			ps.setString(1,user.getUsername());
			ps.setString(2,user.getPassword());
			
			status=ps.executeUpdate();
		}catch(Exception e){}
		
		return status;
	}
}