<%@page import="com.iiit.view.User" %>
<!DOCTYPE html>
<html>
<head>
<title>IIIT APP -An initiative to Learn Cloud with Java</title>
<script src="engine/script.js"></script>
<link rel="stylesheet" href="engine/style.css"/>
<link rel="icon" href="images/logo1.jpg"/>
</head>
<body>
<div id="contact">
    <div style="float:left; background: white; border:1px solid #0b3c65; border-radius:35px">
	<img src="images/contact.png" height=30px width=30px style="margin:15px" class="rimg">
	</div>
<div style="float:right;width:250px;margin:10px;border:1px solid white">
<h1 style="text-align:center">Contact-Us</h1>
Feel free to contact us at:<br>
<b>Address:Ragiv Gandhi University for Knowledge Technologies,BASAR,</b>
<b>Nizamabad,TS<br></b>
<b>Phone :+91-XXX-XXXXXXX<br></b>
<b>Mobile:+91-XXX-XXXXXXX<br></b>
<b>Website:www.rgukt.org<br></b>
<b>email:contact!rgukt.org<br></b>
</div>
</div>
<%User u1=new User();%>
<div id="header">

   <img id="logo" src="images/logo1.jpg"/ ><br>
  <span class="title" >IIIT JavaEE App</span><br>
  <span class="subtitle" >An initiative to Learn Cloud Deployment with Application Development using JavaEE</span>
   <ul id="mmenu">
   <li class="menuitem"><a class="menulink" href="index.jsp">Home</a></li>
   <%
      try{
    	u1= (User)session.getAttribute("user");
    	if(u1.getUserid().length()>2){
    		%>
    		
    		<li class="menuitem"><a class="menulink" href="profile.jsp">Profile</a></li>   
           <li class="menuitem"><a class="menulink" href="update.jsp">Update</a></li>    
           <li class="menuitem"><a class="menulink" href="logout.jsp">Logout</a></li> 
    		<% 
    		
    	}
      }catch(Exception e){
    	  %>
    	    <li class="menuitem"><a class="menulink" href="login.jsp">Login</a></li>
            <li class="menuitem"><a class="menulink" href="register.jsp">Register</a></li>
    	  <%
    	  
      }
   
   %> 
     <li class="menuitem"><a class="menulink" href="about.jsp">About</a></li>        
   </ul>
</div>
<div id="content" style="margin-top:10px">
