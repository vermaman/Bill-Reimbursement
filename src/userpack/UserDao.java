package userpack;

import java.sql.*;

import userpack.User;

public class UserDao {

	public static Connection getConnection()
	{
		Connection con=null;
		try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/appdb","root","1234");
		
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		return con;
	}
	
	public static int save(User u)
	{
		int status=0;
		try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("insert into emp(id, email, password, name) values(?,?,?,?) ");
			ps.setInt(1, u.getId());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
			ps.setString(4, u.getName());
			status=ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		
		return status;
	}
	
}
