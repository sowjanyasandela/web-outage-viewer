<jsp:include page="header.jsp"></jsp:include>
<form class="mform" action="login" method="post">
<table width="100%">
<tr>
	<th><h1>Login </h1>
</tr>
<tr>
	<td><input type="email" name="email" class="mycomp" placeholder="* Enter Your Email" required="required"></td>
</tr>
<tr>
	<td><input type="password" name="password" class="mycomp"
	   placeholder="* Enter Your password" required="required"></td>
</tr>


<tr>

	<td align="center"><input type="submit" value="login"class="mybtn">
	<input type="reset" value="Clear" class="mybtn"></td>
</tr>
</table>

</form>
<%@ include file="footer.jsp"%>


