<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="com.iiit.dao.DBMan"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="header.jsp"%>
		<%
		ResultSet rs = DBMan.getProducts();
		while(rs.next()){
			%>
	<div class="productdiv1">
		<img class="pimg1" src="images/<%=rs.getString(1)%>.jpg">
		<div class="ptitle1"><%=rs.getString(2) %></div>
		<form class="buyform" action="buy.jsp">
			<input type="hidden" name="pid" value="<%=rs.getString(1)%>">
			<label for="qty">Select Qty :</label>
			<select id="qty" name="qty"><option>1</option>
			<option>2</option><option>3</option>
			<option>4</option></select><br>
			<input type="submit" value="Buy Now" class="menulink">
		</form>
		<div class="mprc1">Market Price : 
		<span style="text-decoration: line-through;">Rs. <%=rs.getString(4)%>/-</span></div>
		<div class="oprc1">Our Price : Rs. <%=rs.getString(5)%>/-</div>
		<div class="category">Category : <%=rs.getString(3)%></div>
	</div>
			<%	
		}
		%>




<%@include file="footer.jsp"%>