package com.project.validate;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SaveUser {
public String fname,lname,dept,desg,uname,pass,que,ans;
Connection con=null;

public String getFname() {
	return fname;
}

public void setFname(String fname) {
	this.fname = fname;
}

public String getLname() {
	return lname;
}

public void setLname(String lname) {
	this.lname = lname;
}

public String getDept() {
	return dept;
}

public void setDept(String dept) {
	this.dept = dept;
}

public String getDesg() {
	return desg;
}

public void setDesg(String desg) {
	this.desg = desg;
}

public String getUname() {
	return uname;
}

public void setUname(String user) {
	this.uname = user;
}

public String getPass() {
	return pass;
}

public void setPass(String pass) {
	this.pass = pass;
}

public String getQue() {
	return que;
}

public void setQue(String que) {
	this.que = que;
}

public String getAns() {
	return ans;
}

public void setAns(String ans) {
	this.ans = ans;
}

public boolean connect()
{
	
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("Driver Loaded now");
		con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/XE","SYSTEM","nikhil");
		System.out.println("Connection Established!!!");
		return true;
	} catch (ClassNotFoundException e) {
		System.out.println("Driver Not found!!!!!");
		e.printStackTrace();
	} catch (SQLException e) {
		System.out.println("Connection failed!!!!");
		e.printStackTrace();
	}
	return false;
}

public void  store() {
	if(connect())
	{
		
		if(true)
		{
		try {
			
			
			String url="insert into userinfo values(?,?,?,?,?,?,?,?)";
			java.sql.PreparedStatement pst= con.prepareStatement(url);
			
			 pst.setString(1, fname);
			 pst.setString(2,lname);
			 pst.setString(3, dept);
			 
			 pst.setString(4,desg);
			 pst.setString(5,uname);
			 
			 pst.setString(6,pass);
			 pst.setString(7,que);
				  
			 pst.setString(8,ans);
			 		 int i = pst.executeUpdate();
			 System.out.println(i);
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		else 
			System.out.println("Submit Filed!!!!!");		
	}
	else {
	 System.out.println("Error!!!!");
	}

  }
}