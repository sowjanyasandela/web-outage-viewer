<%@include file="header.jsp"%>
<form class="mform" action="cp" method="post" 
onsubmit="return checkChangePass();">
<table width="100%">
		<tr><th><h1>Change Password</h1></th></tr>	
		<tr><td><label for="epwd">Existing Password : </label></td>
		<td><input type="password" name="epwd" class="mycomp"></td>
		</tr>
		<tr><td><label for="npwd">New Password : </label></td>
		<td><input type="password" name="npwd" id="npwd" 
		class="mycomp"></td></tr>
		<tr><td><label for="cpwd">Confirm Password : </label></td>
		<td><input type="password" name="cpwd" id="cpwd"
		class="mycomp"></td></tr>
		<tr><td align="center" colspan="2">
				<input type="submit" class="mybtn" value="Update">
				<input type="reset" class="mybtn" value="Reset">
		</td></tr>
	</table>
</form>
<%@include file="footer.jsp"%>
