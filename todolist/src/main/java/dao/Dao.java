package dao;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.rowset.serial.SerialBlob;

import dto.Task;
import dto.user;

public class Dao {
public static Connection getConnection() throws ClassNotFoundException, SQLException
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/todolist","root","root");
			return con;
		}
public static int Saveuser(user u) throws ClassNotFoundException, SQLException 
		{
			Connection con=getConnection();
			PreparedStatement pst=con.prepareStatement("insert into user values(?,?,?,?,?,?)");
			pst.setInt(1, u.getUserid());
			pst.setString(2,u.getUsername());
			pst.setString(3, u.getUseremail());
			pst.setLong(4, u.getUsercontact());
			pst.setString(6,u.getUserpassword());
			
			Blob imageblob= new SerialBlob(u.getUserimage());
			pst.setBlob(5, imageblob);
			
			int res=pst.executeUpdate();
			return res;
		}
		
public user findByEmail(String email) throws ClassNotFoundException, SQLException 
		{
			Connection con=getConnection();
			
			PreparedStatement pst=con.prepareStatement("select * from user where useremail=?");
			pst.setString(1, email);
			
			ResultSet rs=pst.executeQuery();
			
			if(rs.next()) {
				user u=new user();
				u.setUserid(rs.getInt(1));
				u.setUsername(rs.getString(2));
				u.setUseremail(rs.getString(3));
				u.setUsercontact(rs.getLong(4));
				
				//convert blob image to byte[]
				Blob blobimage=rs.getBlob(5);
				byte[]image=blobimage.getBytes(1,(int)blobimage.length());
				u.setUserimage(image);
				
				u.setUserpassword(rs.getString(6));
				return u;
			}
			else {
				return null;
			}
		
		}
		
public int createtask(Task task) throws ClassNotFoundException, SQLException 
		{
			Connection con=getConnection();
			PreparedStatement pst=con.prepareStatement("insert into task values(?,?,?,?,?,?,?)");
			pst.setInt(1, task.getTaskid());
			pst.setString(2,task.getTasktitle());
			pst.setString(3,task.getTaskdescription());
			pst.setString(4, task.getTaskpriority());
			pst.setString(5, task.getTaskduedate());
			pst.setString(6,task.getTaskstatus());
			pst.setInt(7, task.getUserid());
			
			int res=pst.executeUpdate();
			return res;
		}

public List<Task> getalltasksByUserId(int userid) throws ClassNotFoundException, SQLException
		{
			Connection con=getConnection();
			PreparedStatement pst=con.prepareStatement("select * from task where userid=?");
			pst.setInt(1, userid);
			ResultSet rs= pst.executeQuery();
			List<Task> tasks=new ArrayList<Task>();
			while(rs.next()) {
				Task task=new Task(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6), userid);
				tasks.add(task);
			}
	
			return tasks;
		}
		
		
}
