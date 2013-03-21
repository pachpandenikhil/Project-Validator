<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu Page</title>
<Script language="JavaScript">
document.oncontextmenu=function (){
alert('Sorry, right click is not allowed');
return false;
};
 </Script>
</head>
<body style="background-color:#CBCBCB">
<% session.setAttribute("temp", null); %>
<%session.setAttribute("val",null); %>
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
         <script type="text/javascript">
			var slideimages=new Array()
			function slideshowimages()
			{
     		for (i=0;i<slideshowimages.arguments.length;i++){
         	slideimages[i]=new Image()
         	slideimages[i].src=slideshowimages.arguments[i]
    		}
			}
		</script>
		<img src="1.jpg" alt="Slideshow Image Script" title="Slideshow Image Script" name="slide" border=0 width="950px" height="500px">
 		<script type="text/javascript">
			slideshowimages("nature1.jpg","nature2.jpg","nature3.jpg")
			var slideshowspeed=2000
			var whichimage=0
			function slideit()
			{
     			if (!document.images)
           		return
			     document.images.slide.src=slideimages[whichimage].src
     			if (whichimage<slideimages.length-1)
              	whichimage++
     			else
              	whichimage=0
      			setTimeout("slideit()",slideshowspeed)
			}
 			slideit()
			</script>
         </td>
       </tr>
 </tbody>
</table>


</body>
</html>