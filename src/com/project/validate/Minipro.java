package com.project.validate;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

import com.sun.org.apache.xalan.internal.xsltc.runtime.Hashtable;

public class Minipro {
	public String g1,g2,g3,g4,s1,s2,s3,s4,name,domain,year,div,report,status,nom ,acdmicyr,synopsis,keywords;
	Connection con;
	public int keywordscount;
	public String txt;
	private HashSet<String> hs;
	private String [] words;
	private HashMap<Integer, HashSet> firstChar;
	int matchcount,percent;
	public String copylist=null;
	
	
	
	public String getG1() {
		return g1;
	}

	public void setG1(String no1) {
		this.g1 = no1;
	}

	public String getG2() {
		return g2;
	}

	public void setG2(String no2) {
		this.g2 = no2;
	}

	public String getG3() {
		return g3;
	}

	public void setG3(String no3) {
		this.g3 = no3;
	}

	public String getG4() {
		return g4;
	}

	public void setG4(String no4) {
		this.g4 = no4;
	}

	public String gets1() {
		return s1;
	}

	public void sets1(String s1) {
		this.s1 = s1;
	}

	public String gets2() {
		return s2;
	}

	public void sets2(String s2) {
		this.s2 = s2;
	}

	public String gets3() {
		return s3;
	}

	public void sets3(String s3) {
		this.s3 = s3;
	}

	public String gets4() {
		return s4;
	}

	public void sets4(String s4) {
		this.s4 = s4;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDomain() {
		return domain;
	}

	public void setDomain(String domain) {
		this.domain = domain;
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

	public String getReport() {
		return report;
	}

	public void setReport(String report) {
		this.report = report;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getAcdmicyr() {
		return acdmicyr;
	}

	public void setAcdmicyr(String acdmicyr) {
		this.acdmicyr = acdmicyr;
	}

	public String getSynopsis() {
		return synopsis;
	}

	public void setSynopsis(String synopsis) {
		this.synopsis = synopsis;
	}

	public String getKeywords() {
		return keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
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
			formHash();
			calwords();
			calkeyword();
			if(true)
			{
			try {
				int no=Integer.parseInt(g1);
				System.out.println("Keyword while inserting into db:"+keywords);
				String url="insert into minipro values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
				java.sql.PreparedStatement pst= con.prepareStatement(url);
				int c=Integer.parseInt(nom);
				pst.setInt(1, no);
				 pst.setString(5, s1);
				 pst.setString(2,g2);
				 pst.setString(6, s2);
				 if(nom=="3" || c >=3)
				 {
				 pst.setString(3,g3);
				 pst.setString(7, s3);
				 }
				 else
				 {
					 pst.setString(3,null);
					 pst.setString(7, null);
					  
				 }
				 if(nom=="4")
				 {
				 pst.setString(4,g4);
				 pst.setString(8, s4);
				 }
				 else
				 {
					 pst.setString(4,null);
					 pst.setString(8, null);
					  
				 }
		
				 pst.setString(9,name);
				 pst.setString(10,domain);
				 pst.setString(11,year);
				 pst.setString(12,div);
				 pst.setString(13,report);
				 pst.setString(14,status);
				 pst.setString(15,nom);
				 pst.setString(16,acdmicyr);
				 pst.setString(17,synopsis);
				 pst.setString(18,keywords);
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
	
	
	
	
	
	public void  formHash() {
		firstChar=new HashMap<Integer, HashSet>();
		Minipro[] s=new Minipro[26];
		int i=0,length=26;
		try {
			while(length!=0)
			{
				s[i]=new Minipro();
				s[i].hs= new HashSet<String>();
				i++;
				length--;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		for (int j = 0; j < s.length; j++) {
			firstChar.put(j,s[j].hs);
		}
		i=0;
		String alphabets="A1B1C1D1E1F1G1H1I1J1K1L1M1N1O1P1Q1R1S1T1U1V1W1X1Y1Z1";
		length=alphabets.length();
		try (BufferedReader br = new BufferedReader(new FileReader("C:\\Users\\nikhil\\Desktop\\list - Copy.txt")))
		{
 
			String sCurrentLine;
			i=0;
			int k=0;
			sCurrentLine = br.readLine();
			while (sCurrentLine != null) {
				if(sCurrentLine.contains(alphabets.substring(i,i+2)))
				{
					i+=2;
					while((sCurrentLine=br.readLine()).contains(alphabets.substring(i,i+2)) == false)
					{
						s[k].hs.add(sCurrentLine);
					}
				}
				k++;
				if(sCurrentLine.contains("Z1"))
					break;
			}
			while((sCurrentLine=br.readLine()) !=null)
				s[k].hs.add(sCurrentLine);
 
		} catch (IOException e) {
			e.printStackTrace();
		}
		i=0;
		System.out.println("\n\n\n\t\t***************************   Hash Table   **************************************\n\n\n");
		while(i<26)
			System.out.println(firstChar.get(i++));
		
	}
	
	
	
	public void calwords()
	{
		words = synopsis.toLowerCase().split(" ");
		int length=words.length;
		int i=0;
		System.out.println("\n\n\n\t\t***************************   Words Found     ************************************** \n\n\n");
		while(length!=0)
		{
		System.out.println(words[i++]);
		length--;
		}
	
	}
	
	
	
	public void calkeyword()
	{
		keywords=null;
		int length,i=0;
		length=words.length;
		System.out.println("\n\n\n\t\t***************************   keyword   ************************************** \n\n\n");
		int k=0;
		while(length!=0)
		{
			int newlength,j;
			k=words[i].charAt(0)-97;
			Object[] row=firstChar.get(k).toArray();
			newlength=row.length;
			j=0;
			while(newlength!=0)
			{
				if(row[j].toString().toLowerCase().equals(words[i].toLowerCase()))
				{
					
					System.out.println("Keywords:"+words[i]);
					if(keywords==null)
					{
						keywords=words[i];
						j++;
						newlength--;
						continue;
					}
					keywords=keywords+" "+(words[i]);
					
				}
					j++;
					newlength--;
			}
			i++;
			length--;
		}
		
	}
	
	
	public boolean validate() {
		boolean valid=true;
		copylist=null;
		int k=0;
		if(connect())
		{
			formHash();
			calwords();
			calkeyword();
			if(keywords!=null)
			{
			String [] wordsinkeywords = keywords.split(" ");
			java.sql.PreparedStatement pst;
			System.out.println("Words in keywords:");
			int lenth=wordsinkeywords.length;
			int i=0;
			while((lenth--)!=0)
				System.out.print(wordsinkeywords[i++]);
			
			System.out.println();
			keywordscount=keywords.split(" ").length;
			System.out.println("Keyword Count:"+keywordscount);
			try {
				pst = con.prepareStatement("select no1,keywords from minipro where domain=?");
				pst.setString(1,domain);
				ResultSet rs=pst.executeQuery();
				while(rs.next())
				{
					matchcount=0;
					String [] dbwords=rs.getString(2).split(" ");
					int j;
					
					System.out.println("Database word count : " +dbwords.length);
					for(i=0;i<dbwords.length;i++)
					
						
						for(j=0;j<keywordscount;j++)
							if(wordsinkeywords[j].equals(dbwords[i]))
							{
								matchcount++;
							}
					
					if(dbwords.length>keywordscount)
					{
						System.out.println("In dbword greater "+matchcount);
						percent=(matchcount*100)/dbwords.length;
						System.out.println("Percent : "+percent);
					}
					else
					{
						System.out.println("In keyword greater "+matchcount);
						percent=(matchcount*100)/keywordscount;
						System.out.println("Percent : "+percent);
					}
						
					if(percent>40)
					{
						System.out.println("Copied !!!!!!" + percent+ " from project with student of gr no :"+rs.getInt(1));
						System.out.println(Integer.toString(rs.getInt(1))+" "+Integer.toString(percent));
						if(copylist==null)
						copylist=" GR No:"+Integer.toString(rs.getInt(1))+" percentages: "+Integer.toString(percent);
						else
							copylist=copylist+" "+" GR No:"+Integer.toString(rs.getInt(1))+" percentage: "+Integer.toString(percent)+"%";
						valid=false;
					}
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			
		}
		}
		if(valid)
			return true;
		return false;
		
	}
	
	
	

}
