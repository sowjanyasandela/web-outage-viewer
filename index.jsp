<jsp:include page="header.jsp"></jsp:include>


<script>
   <%
   try{
	   String msg=request.getParameter("msg");
	   if(msg.equals("rscs")){
		   %>
		   alert("Registration Successful!");
		   <%
	   }
	   else if(msg.equals("uscs")){
		   %>
		   alert("Updation Successful!");
		   <%
	   }
	   else if(msg.equals("pscs")){
		   %>
		   alert(" Password changed Successfully!");
		   <%
	   }
	   else if(msg.equals("pntm")){
		   %>
		   alert(" Password not matched!");
		   <%
	   }
   }

	   catch(Exception e){
   }

    %>
</script>
<%@ include file="footer.jsp"%>


