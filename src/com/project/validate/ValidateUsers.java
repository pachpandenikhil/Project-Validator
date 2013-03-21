package com.project.validate;

public class ValidateUsers {
	public String uname,pass;

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}
	public boolean validate()
	{
		if(uname.equals("admin") && pass.equals("vit")) 
				return true;
				
		else 
				return false;
		
	}

}
