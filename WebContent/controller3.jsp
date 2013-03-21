<%@page import="com.project.validate.Seminar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<jsp:useBean id="miniprobean" class="com.project.validate.Minipro" scope="application"></jsp:useBean>
<jsp:setProperty property="*" name="miniprobean"/>
<% System.out.print(miniprobean.name);%>
<% if(miniprobean.name==null || miniprobean.div==null)
{
	System.out.print("In above validate");
	if(miniprobean.validate())
	{
		System.out.print("In validate");
		 session.setAttribute("temp", miniprobean.synopsis);
		 System.out.println("valid true");
		 System.out.println(session.getAttribute("flag"));
		 
		%>
		<jsp:forward page="minipro.jsp"></jsp:forward>
		
		<%
	}
		else
		{
			session.setAttribute("clist",miniprobean.copylist);
			 session.setAttribute("flag", "yes");
			 
			
			%>
			
		<jsp:forward page="minipro.jsp"></jsp:forward>
		<% 	
	    }
	
}
else
{
	 session.setAttribute("flag", "sub");
miniprobean.store();
%>

<jsp:forward page="minipro.jsp"></jsp:forward>
<% 	
}
%>
</body>
</html>
