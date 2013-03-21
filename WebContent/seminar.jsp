<%@page import="java.awt.GradientPaint"%>
<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Seminar</title>
<script type="text/javascript">
function get() {
	var e = document.getElementById("acdmicyr");
	var strUser = e.options[e.selectedIndex].value;
	document.getElementById("s1").value =strUser;
	alert(strUser);
	return true;
	
}

function val() {
	var s=<%=session.getAttribute("val") %>;
	if(s==false)
		alert("Seminar topic already exits!!! Registered with GR. No. <%=session.getAttribute("gr")%>  Please enter the topic again");
	<%session.setAttribute("val",null);%>
	else
		{
		if(<%=session.getAttribute("val")%>=="null" || s == true)
			{
		alert("Submitted Successfully!!");
		<% session.setAttribute("val", null);%>
			}
		}
		
	
}

</script>
</head>
<body style="background-color:#CBCBCB" onload="val()">
<form action="controller2.jsp" onsubmit="return get()">
<table cellspacing="0" cellpadding="0" width="950px" align="center">
 <tbody>
  <tr>
   <td  style="background-image: url('background.jpg');" width="950px" height="100px">
  <h1 style="font-family:inherit;color: white;">Project<sub style="font-size: 20"> Validator</sub></h1>
   </td>
  </tr>
    <tr>
    <td bgcolor="#666662" height="35px">
     <table cellpadding="0" cellspacing="0" width="950px">
      <tbody>
       <tr>
        <td width="10px" align="left" height="35px" >
           <img alt="" src="left_curv_navigation.png" height="35px">         
        </td>
        <td valign="top" style="padding-left:20px" >
         <table  cellpadding="0" cellspacing="0" width="85%" class="grey" height="35px">
          <tbody>
           <tr>
            <td  align="center" width="106px" valign="middle"  style="background-position:initial initial; background-repeat: initial initail;background-color:#42423c;color: white" >
              Seminar
            </td>
            <td align="center" width="2px">
             <img alt="" src="navigation_divider.png" width="2px" height="35px">
            </td>
            <td  align="center" width="126px" valign="middle" onmouseover="this.style.backgroundColor='#42423c'" onmouseout="this.style.background='none'" style="background-image: none; background-position:initial initial; background-repeat: initial initail; " >
             <a href="minipro.jsp" style="text-decoration: none; color:white " class="grey" >Mini Project</a>
            </td>
            <td align="center" width="2px">
             <img alt="" src="navigation_divider.png" width="2px" height="35px">
            </td> 
             <td  align="center" width="126px" valign="middle" onmouseover="this.style.backgroundColor='#42423c'" onmouseout="this.style.background='none'" style="background-image: none; background-position:initial initial; background-repeat: initial initail; " >
             <a href="finalpro.jsp" style="text-decoration: none; color:white " class="grey" >Final Project</a>
            </td>    
           </tr>
          </tbody>
         </table>         
        </td>
        <td height="35px" align="right" style="color: white">
        Logged In As&nbsp<%=session.getAttribute("uname") %>    
        </td>
           <td width="10px" align="right" height="35px" >           
           <img alt="" src="right_curv_navigation.png" height="35px">         
           </td> 
       </tr>
       
      </tbody>
     </table>     
    </td> 
  </tr>
  <tr>
  <td height="10px">
  </td>
  </tr>
    <tr>
         <td >
         <table cellpadding="15" cellspacing="15" style="background-image: url('background.jpg'); " width="950px">
<tr>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>



<tr>
<td align="right" style="color: white;"> Name of Student: <sup style="font-family: inherit;color: red"> * </sup> </td>
<td> <input type="text" name="name"></td>
<td></td>
<td align="right" style="color: white;"> GR. No : <sup style="font-family: inherit;color: red"> * </sup> </td>
<td><input type="text" name="grno"></td>
</tr>

<tr>
<td align="right" style="color: white;"> Year : </td>
<td> <input type="text" name="year" value="T.E." readonly="readonly"></td>
<td></td>
<td align="right" style="color: white;"> Division : </td>
<td><input type="text" name="div"></td>
</tr>

<tr>
<td align="right" style="color: white;"> Roll No : </td>
<td> <input type="text" name="rollno" ></td>
<td></td>
<td align="right" style="color: white;"> Academic Year :  </td>
<td>
<select id="acdmicyr" name="acdmicyr">
 	<option value="2012-13">2012-13 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</option>
 	<option value="2013-14">2013-14 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</option>
 	 <option value="2014-15">2014-15 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</option>
 	 <option value="2015-16">2015-16 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</option>
</select>
 
</td>
<tr>
<td align="right" style="color: white;"> Seminar Topic : <sup style="font-family: inherit;color: red"> * </sup> </td>
<td> <input type="text" name="topic" ></td>
<td></td>
<td align="right" style="color: white;"> Seminar Guide : </td>
<td> <input type="text" name="guide" ></td>
</tr>
<td align="right" style="color: white;"> Abstract : </td>
<td>
<select name="abstracts">
 	<option value="Submitted">Submitted&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</option>
 	<option value="Not Submitted">Not Submitted&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</option>
</select>
<td></td>
</td>

<td align="right" style="color: white;"> Status : </td>
<td>
<select name="status">
 	<option value="Approved">Approved &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</option>
 	<option value="Not Approved">Not Approved &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</option>
</select>
</td>
</tr>
<tr>
<td></td>
<td></td>
<td>
<input type="submit" name="submit" value="Submit"></td>
 <td>
<input type="reset" name="reset" value="Reset"></td>
</table>
 </td>
       </tr>
 </tbody>
</table>

</form>

</body>
</html>