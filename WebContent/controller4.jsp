<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="finalprobean" class="com.project.validate.Finalpro" scope="application"></jsp:useBean>
<jsp:setProperty property="*" name="finalprobean"/>
<% if(finalprobean.name==null || finalprobean.div==null || finalprobean.nom=="--select--")
{
  
	if(finalprobean.validate())
	{
		 session.setAttribute("temp1", finalprobean.synopsis);
		 System.out.println("valid true");
		 System.out.println(session.getAttribute("temp1"));
		 System.out.println(session.getAttribute("flag1"));
		 
		%>
		<jsp:forward page="finalpro.jsp"></jsp:forward>
		
		<%
	}
		else
		{
			session.setAttribute("clist1",finalprobean.copylist);
			 session.setAttribute("flag1", "yes");
			 
			
			%>
		<jsp:forward page="finalpro.jsp"></jsp:forward>	
	<% }
	
}
else
{
		
	finalprobean.store();
	
%>
<jsp:forward page="finalpro.jsp"></jsp:forward>
<%

}

%>
</body>
</html>