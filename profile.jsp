<%@page import="java.io.File"%>
<%@include file="header.jsp"%>

	<div style="position:fixed;top:0px; left:0px; right:0px">
		<marquee><%="Welcome " + u1.getUsername() + ","%></marquee>
	</div><div id="updiv"><%
		String fileName = "user.png";
			try{
				String fn = u1.getUserid()+".jpg";
			//	String fPath = application.getRealPath("") + "images/";// local server
			    String fPath = application.getRealPath("/images/");//cloud server
				File f1 = new File(fPath, fn);
				if(f1.exists())
					fileName = fn;
			}catch(Exception e){fileName = "user.png";}
		%>	
		<img src="images/<%=fileName%>" height=140px width=140px>
		<form action="upload" method="post" enctype="multipart/form-data">
		<input type="file" accept="image/jpg" name="img1" id="upbtn"
			onchange="this.form.submit();">
		</form>
		<br>
   <li class="menuitem"><a class="menulink" href="cp.jsp">ResetPassword</a></li>
	</div>
	<h1>Welcome <%=u1.getUsername()%>,</h1>
	<h2>Registered Mail : <%=u1.getUserid()%>,</h2>
	<h2>City : <%=u1.getCity()%>,</h2>
	<h2>Contact : <%=u1.getContact()%>,</h2>
	<h2>Date of Birth : <%=u1.getDob()%>,</h2>
	<h2>Gender : <%=u1.getGender()%>,</h2>
	<h2>Last accessed from : <%=u1.getLip()%>,</h2>
	<h2>No. of login(s) : <%=u1.getUc()%>,</h2>
<script>
<%
	try{
		String msg = request.getParameter("msg");
		if(msg.equals("lscs")){
			%>
			alert("Login Successfull!");
			<%
		}
	}catch(Exception e){}
%>
</script>
<%@include file="footer.jsp"%>