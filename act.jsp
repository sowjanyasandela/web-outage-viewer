<%@page import="com.iiit.dao.DBMan"%>
<jsp:include page="header.jsp"></jsp:include>

<%
try{
	String key = request.getQueryString();
	if(key.length()>7){
		int n = DBMan.activate(key);
		if(n>0){
			%>
			<h1>Your account has been activated successfully!</h1>
			<h1><a href="login.jsp">You can login to your account from here!</a></h1>
			<%
		}
		else {
			%>
			<h1>Unable to activate your account!</h1>
			<h1><a href="index.jsp">Either the account is already active or you have not used a proper activation link!
				You can click here to visit home page</a></h1>
			<%
		}
	}
}catch(Exception e){
	%>
	<h1>Unable to activate your account!</h1>
	<h1><a href="index.jsp">Either the account is already active or you have not used a proper activation link!</a></h1>
	<%
}
%>


<%@include file="/footer.jsp" %>