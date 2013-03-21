<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Final Project</title>
<script type="text/javascript">
function onload(){
	var t="<%=session.getAttribute("flag1")%>";
if(t=="yes")
	{
	
	alert("Project Match:<%=session.getAttribute("clist1")%>");
	<%session.setAttribute("flag1", null);%>

	document.getElementById("synopsis").value="";
	}
else
	{
	var y="<%=session.getAttribute("temp1")%>";
	
	if(y=="null")
		{
	document.getElementById("synopsis").value=" ";
		}
	else
		{
		alert("available!!");
		document.getElementById("synopsis").value="<%=session.getAttribute("temp1")%>";
		<%session.setAttribute("temp1", null);%>
		}
	}
		if (t == "sub") {

			alert("submitted successfully!!");
		}
	}
	function check(mem) {

		//var mem=Test3.members.value;
		if (mem != '---select---') {
			hideAll();
			document.getElementById("show").style.display = "";
			showControl(gr);
			showControl(std);
			if (mem == '2' || mem >= 2) {
				showControl(std1);
				showControl(gr1);
				showControl(std2);
				showControl(gr2);
			}
			if (mem == '3' || mem >= 3) {
				showControl(std3);
				showControl(gr3);
			}
			if (mem == '4' || mem >= 4) {
				showControl(std4);
				showControl(gr4);
			}

		} else {
			hideAll();
		}

	}
	function showControl(controlid) {

		var tmpe2 = document.getElementById(controlid.id);

		//alert("Its show control id"+controlid.id);
		if (tmpe2 != null) {

			if (controlid.style.display == 'none') {
				controlid.style.display = '';
			}
		} else {
			alert("show control alert-->>" + controlid.id);
		}
	}
	function hideControl(controlid) {

		//if (LoginForm.usertype.value=='--Select--')
		//	{
		//	alert("inside if block of hideControl");
		var tmpel = document.getElementById(controlid.id);
		//alert("hide Control-->"+controlid.id);
		if (tmpel != null) {
			if (controlid.style.display == '') {
				controlid.style.display = 'none';
			}
		} else {
			alert(controlid.id);
		}
		//}
	}
	function hideAll() {
		//alert("district id in hide all---->>"+districtid.id);
		hideControl(show);
		hideControl(std1);
		document.getElementById("s1").value = "";
		hideControl(std2);
		document.getElementById("s2").value = "";
		hideControl(std3);
		document.getElementById("s3").value = "";
		hideControl(std4);
		document.getElementById("s4").value = "";
		hideControl(gr1);
		document.getElementById("g1").value = "";
		hideControl(gr2);
		document.getElementById("g2").value = "";
		hideControl(gr3);
		document.getElementById("g3").value = "";
		hideControl(gr4);
		document.getElementById("g4").value = "";

	}
</script>
</head>
<body style="background-color:#CBCBCB" onload="onload()">
<form action="controller4.jsp" >
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
             <a href="seminar.jsp" style="text-decoration: none; color:white " class="grey" >Seminar</a>
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
             <td  align="center" width="126px" valign="middle"  style=" background-position:initial initial; background-repeat: initial initail;background-color: #42423c;color: white" >
             Final Project
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
          <table width="950px" style="background-image:url('background.jpg'); ">
           <tr>
            <td>
            <table cellpadding="10" cellspacing="15">
  <tr>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
 </tr>
 <tr>
  <td align="right" style="color: white;">Project Name : <sup style="font-family: inherit;color: red"> * </sup> </td>
  <td> <input type="text" name="name"></td>
  <td></td>
  <td align="right" style="color: white;"> Domain : </td>
  <td>
   <select name="domain">
 	 <option value="Mobile Computing">Mobile Computing</option>
 	 <option value="Artificial Intelligence">Artificial Intelligence</option>
 	 <option value="HCI">HCI</option>
 	 <option value="Compiler">Compiler</option>
   </select>
  </td>
 </tr>
 <tr>
  <td align="right" style="color: white;"> Year : </td>
  <td align="left">
   <input type=" text" value="B.E." readonly="readonly" name="year">
  </td>
  <td></td>
  <td align="right" style="color: white;"> Division : </td>
  <td><input type="text" name="div"></td>
 </tr>

 <tr id="1">
<td align="right" style="color: white;"> SRS : </td>
<td>
<select>
 	<option value="Submitted">Submitted &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</option>
 	<option value="Not Submitted">Not Submitted </option>
</select>
</td>
<td></td>
<td align="right" style="color: white;"> Report : </td>
<td>
<select name="report">
 	<option value="Submitted">Submitted &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</option>
 	<option value="Not Submitted">Not Submitted </option>
</select>
</td>
</tr>


<tr>
<td align="right" style="color: white;"> Abstract : </td>
<td>
<select>
 	<option value="Submitted">Submitted &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</option>
 	<option value="Not Submitted">Not Submitted </option>
</select>
<td></td>
</td>

<td align="right" style="color: white;"> Status : </td>
<td>
<select name="status">
 	<option value="Approved">Approved &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</option>
 	<option value="Not Approved">Not Approved </option>
</select>
</td>
</tr>

<tr>
  <td align="right" style="color: white;" > No.of Members : <sup style="font-family: inherit;color: red"> * </sup> </td>
  <td>
    <select name="nom" onchange="check(this.value)">
 	 <option value="---select---">---Select--- &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</option>
 	 <option value="2">2 </option>
 	 <option value="3">3 </option>
 	 <option value="4">4 </option>
   </select> 
  </td>
  <td></td>
  <td align="right" style="color: white;"> Academic Year : </td>
  <td align="left">
   <select name="acdmicyr">
 	 <option value="2012-13">2012-13 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</option>
 	 <option value="2013-14">2013-14 </option>
 	 <option value="2014-15">2014-15 </option>
 	 <option value="2015-16">2015-16 </option>
   </select>
  </td>
  </tr>
  <tr id=show style="display: none">
<td style="color: white;">
<table cellspacing="2">
   		<tr id="std" style = "display:none">  		 
  		 <td>Name of Student</td>
  		</tr >
  		<tr >
   		 <td>&nbsp</td>
   		</tr>
  		<tr >
  		 <td></td>
   		</tr>
  		<tr >
  		 <td></td>
   		</tr>
 	</table>
</td>
<td>
 	<table cellspacing="2">
  
 		<tr id="std1" style = "display:none">  		 
  		 <td ><input type="text" id="s1" name="s1"></td>
  		</tr >
  		<tr id="std2" style = "display:none">
   		 <td><input type="text" id="s2" name="s2"></td>
   		</tr>
  		<tr id="std3" style = "display:none">
  		 <td><input type="text" id="s3" name ="s3"></td>
   		</tr>
  		<tr id="std4" style = "display:none">
  		 <td><input type="text" id="s4" name="s4"></td>
   		</tr>
 	</table>
 	</td>
<td style="color: white;">
<table cellspacing="2">
   		<tr id="gr" style = "display:none">  		 
  		 <td>G.R. No.</td>
  		</tr >
  		<tr >
   		 <td>&nbsp</td>
   		</tr>
  		<tr >
  		 <td></td>
   		</tr>
  		<tr >
  		 <td></td>
   		</tr>
 	</table>
</td>
<td>
  <table cellspacing="2">
   <tr id="gr1" style = "display:none">
    <td><input type="text" id="g1" name="g1"></td>
   </tr >
   <tr id="gr2" style = "display:none">
    <td><input type="text" id="g2" name="g2"></td>
   </tr>
   <tr id="gr3" style = "display:none">
    <td><input type="text" id="g3" name="g3"></td>
   </tr>
   <tr id="gr4" style = "display:none">
    <td><input type="text" id="g4" name="g4"></td>
   </tr>
 </table> 
 </td>

</tr>
  
</table>
<table cellpadding="3">
<tr>

<td width="100px" align="right" style="color: white;"> Synopsis : <sup style="font-family: inherit;color: red"> * </sup> </td>
<td></td>
<td> <textarea rows="5" cols="45" name="synopsis"></textarea></td>
<td> <input type="submit" value="Check Availability"> </td>
</tr>
<tr>
<td></td>
</tr>
<tr>
<td></td>
<td>
</td>
 <td> 
 <input align="right" type="submit" name="submit" value="Submit" onclick="display()"> 
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