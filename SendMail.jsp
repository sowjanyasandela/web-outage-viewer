<jsp:include page="header.jsp"></jsp:include>

<form class="mform" action="" method="post">
	<table width="1">
		<tr>
		<th><h1>Send Mail</h1></th>
		</tr>
		<tr>
		<td>Recipient : <input type="email" class="mycomp" size="100%" name="email" placeholder="Enter recipient" required="required"></td>
		</tr>
		<tr>
		<td>Sub : <input type="text" class="mycomp" size="100%" name="sub" placeholder="Subject" required="required"></td>
		</tr>
		<td>Message : <textarea rows="5" cols="86"></textarea></td>
		<tr>
		</tr>
		<tr>
		<td><input type="submit" class="mybtn" value="Send"></td>
		</tr>
	</table>

</form>
<%@ include file="footer.jsp"%>


