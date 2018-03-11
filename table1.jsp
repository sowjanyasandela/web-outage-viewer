<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="com.iiit.dao.DBMan"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="header.jsp"%>
<table border=1>
	<tr>
		<%
		ResultSet rs = DBMan.getProducts();
		ResultSetMetaData rm = rs.getMetaData();
		int n = rm.getColumnCount();
		for(int i = 1;i<=n;i++){
			%>
			<th><%=rm.getColumnName(i)%></th>
			<%
		}
		%>
	</tr>
	<%
		while(rs.next()){
			%>
			<tr>
				<%
				for(int i=1;i<=n;i++){
				%><td><%=rs.getString(i)%></td><%	
				}
				%>
			</tr>
			<%	
		}
	%>
</table>
<%@include file="footer.jsp"%>