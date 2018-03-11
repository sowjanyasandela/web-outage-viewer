<jsp:include page="header.jsp"></jsp:include>
<%
   String msg=request.getParameter("msg");
try{
	
if(msg.equals("rfld")){
	%>
	<h1 style="color:red;font-weight:bold;font-style:italic">
	*Please Check the values and retry again!
	</h1> 
	<% 
}
else if(msg.equals("ealready")){
	%>
	<h1 style="color:red;font-weight:bold;font-style:italic">
	*UserID already exists,please try with another ID!
	</h1> 
	<% 
}
else if(msg.equals("vlen")){
	%>
	<h1 style="color:red;font-weight:bold;font-style:italic">
	*Invalid values entered ,retry again!
	</h1> 
	<% 
   
}
else if(msg.equals("lfld")){
	%><h1 style="color:red;font-weight:bold;font-style:italic">
	*Either you have entered incorrect user credentials or you have not verified your email!
	</h1> <%
}
else if(msg.equals("ufld")){
	%>
	<h1 style="color:red;font-weight:bold;font-style:italic">
	*Not Updated !
	</h1> 
	<% 
}
else if(msg.equals("pfld")){
	%>
	<h1 style="color:red;font-weight:bold;font-style:italic">
	*Password Not Changed!
	</h1> 
	<% 
}


}catch(Exception e){
	
}

%>
<h1><a class="menulink" onclick="history.back();">Click here to </a>Go back</h1>
<h1><a class="menulink" onclick="window.location.assign('index.jsp');">Click here</a> to go to Home</h1>
<%@ include file="footer.jsp"%>


