<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignUp</title>
<script type="text/javascript">
function check()
{
	var o=document.forms["signUp"]["fname"].value;
	var p=document.forms["signUp"]["lname"].value;
	var q=document.forms["signUp"]["dept"].value;
	var r=document.forms["signUp"]["desg"].value;
	var s=document.forms["signUp"]["uname"].value;
	var t=document.forms["signUp"]["pass"].value;
	if(o==""|| p=="" || q==""|| r==""|| s=="" || t=="")
	{
		alert("All the fields are mandatory!! ");
		return false;
	}
	return true;	
}
</script>
</head>
<body style="background-color:#CBCBCB ;">
<form name="signUp" action="signUpController.jsp"  onsubmit="return check()" method="post">
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
            <td  align="center" width="106px" valign="middle" onmouseover="this.style.backgroundColor='#42423c'" onmouseout="this.style.background='none'" style="background-image: none; background-position:initial initial; background-repeat: initial initail; " >
             <a href="index.jsp" style="text-decoration: none; color:white " class="grey" >Home</a>
            </td>
            <td align="center" width="2px">
             <img alt="" src="navigation_divider.png" width="2px" height="35px">
            </td>
            <td  align="center" width="126px" valign="middle" style=" background-position:initial initial; background-repeat: initial initail;background-color:#42423c;color: white " >
             SignUp
            </td>
            <td align="center" width="2px">
             <img alt="" src="navigation_divider.png" width="2px" height="35px">
            </td> 
             
            </td>    
           </tr>
          </tbody>
         </table>         
        </td>
        <td height="35px" align="right" style="color: white">
          
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
         <table width="950px" style="background-image: url('background.jpg');">
          <tr>
           <td>
           <table cellpadding="10" cellspacing="15" align="center">
  <tr>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
 </tr>
 <tr >
  <td align="center" style="color: white;">First Name : <sup style="font-family: inherit;color: red"> * </sup> </td>
  <td> <input type="text" name="fname"  style="width: 350px"></td>
  
  
 </tr>
 <tr>
  <td align="center" style="color: white;">Last Name : <sup style="font-family: inherit;color: red"> * </sup> </td>
  <td> <input type="text" name="lname" style="width: 350px"></td>
  
  
 </tr>
  
 </tr>
  <tr>
  <td align="center" style="color: white;">Department : <sup style="font-family: inherit;color: red"> * </sup> </td>
  <td> <input type="text" name="dept" style="width: 350px"></td>
    
 </tr>
 </tr>
  <tr>
  <td align="center" style="color: white;">Designation : <sup style="font-family: inherit;color: red"> * </sup> </td>
  <td> <input type="text" name="desg" style="width: 350px"></td>
    
 </tr>
 </tr>
  <tr>
  <td align="center" style="color: white;">Username : <sup style="font-family: inherit;color: red"> * </sup> </td>
  <td> <input type="text" name="uname" style="width: 350px"></td>
    
 </tr>
 </tr>
  <tr>
  <td align="right" style="color: white;">Password : <sup style="font-family: inherit;color: red"> * </sup> </td>
  <td> <input type="password" name="pass" style="width: 350px"></td>
    </tr>
    <tr>
    <td align="right" style="color: white;">Security Question : <sup style="font-family: inherit;color: red"> * </sup> </td>
<td align="center">
   <select name="que">
 	 <option value="Name of your first pet? ">Name of your first pet?   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</option>
 	 <option value="What is your birthplace?">What is your birthplace? </option>
 	 <option value="Name of your primary school? ">Name of your primary school? </option>
 	 
   </select>
  </td>
  </tr>
  <tr>
  <td align="center" style="color: white;">Answer : <sup style="font-family: inherit;color: red"> * </sup> </td>
  <td> <input type="text" name="ans" style="width: 350px"></td>
    
 </tr>
 <tr>
<td></td>
<td>
</td>
 <td> 
 <input align="right" type="submit" name="submit" value="Submit" > 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input aling="right" type="reset" name="reset" value="Reset">
</td>
</tr>

</table>
           </td>
          </tr>
         </table>
         </td>
     </tr>
 </tbody>
</table>
</form>
</body>
</html>