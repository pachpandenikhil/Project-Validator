package com.project.validate;

import java.beans.Statement;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.Session;

public class Seminar extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public String name,grno,year,div,rollno,acdmicyr,topic,guide,abstracts,status;
	Connection con;
	public String copy;
    public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGrno() {
		return grno;
	}

	public void setGrno(String grno) {
		this.grno = grno;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getDiv() {
		return div;
	}

	public void setDiv(String div) {
		this.div = div;
	}

	public String getRollno() {
		return rollno;
	}

	public void setRollno(String rollno) {
		this.rollno = rollno;
	}

	public String getAcdmicyr() {
		return acdmicyr;
	}

	public void setAcdmicyr(String acdmicyr) {
		this.acdmicyr = acdmicyr;
	}

	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

	public String getGuide() {
		return guide;
	}

	public void setGuide(String guide) {
		this.guide = guide;
	}

	public String getAbstracts() {
		return abstracts;
	}

	public void setAbstracts(String abstracts) {
		this.abstracts = abstracts;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Seminar() {
        super();
        
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
				int no=Integer.parseInt(grno);
				String url="insert into seminar values(?,?,?,?,?,?,?,?,?,?)";
				 java.sql.PreparedStatement pst= con.prepareStatement(url);
				 pst.setInt(1, no);
				 pst.setString(2,name);
				 pst.setString(3,year);
				 pst.setString(4,div);
				 pst.setString(5,rollno);
				 pst.setString(6,acdmicyr);
				 pst.setString(7,topic);
				 pst.setString(8,guide);
				 pst.setString(9,abstracts);
				 pst.setString(10,status);
				 
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
	public boolean validate()
	{
		connect();
		java.sql.PreparedStatement pst;
		try {
			System.out.println(topic);
			pst = con.prepareStatement("select grno from seminar where topic=?");
			pst.setString(1, topic);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				System.out.println("Topic already exists");
				copy=Integer.toString(rs.getInt(1));
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	}

}
