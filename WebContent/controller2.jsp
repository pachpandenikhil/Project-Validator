<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="seminarbean" scope="application" class="com.project.validate.Seminar"></jsp:useBean>
<jsp:setProperty property="*" name="seminarbean"/>
 
<%  boolean val;
	if(seminarbean.validate())
	{
		val=true;
		session.setAttribute("val",val);
		seminarbean.store();
		%>
		<jsp:forward page="seminar.jsp"></jsp:forward> 
		<% 
	}
		
	else
	{
		System.out.println("In else");
		val=false;
		session.setAttribute("val",val);
		session.setAttribute("gr",seminarbean.copy);
	%>
	<jsp:include page="seminar.jsp"></jsp:include>
<%		
}
%>

</body>
</html>