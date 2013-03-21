<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="bean" class="com.project.validate.ValidateUsers" scope="application"></jsp:useBean>
<jsp:setProperty property="*" name="bean"/>

<%  
if(bean.validate())
{	session.setAttribute("uname", bean.getUname());
	%>
	<jsp:forward page="menu.jsp"></jsp:forward>  
	
	<% 
}
else
{
	%>
	
	<h3 style="color: red;" align="right"> Sorry <sub>Invalid User</sub></h3>
	<h3 style="color: red;"align="right">Please Try Again!!!</h3>
	<jsp:include page="index.jsp"></jsp:include>
	<% 
}

%>
</body>
</html>