<%@page import="java.sql.ResultSet"%>
<%@page import="com.iiit.dao.DBMan"%>
<jsp:include page="header.jsp"></jsp:include>
<%
	String pid = request.getParameter("pid");
	ResultSet rs = DBMan.getProductById(pid);
	rs.next();
%>
<h1><%=rs.getString(2)%></h1>
<img src="images/<%=rs.getString(1)%>.jpg">





<h1><a class="menulink" onclick="history.back();">Click here</a> to Go Back</h1>
<%@include file="footer.jsp"%>