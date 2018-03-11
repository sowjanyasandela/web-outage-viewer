<jsp:include page="header.jsp"></jsp:include>
<form class="mform" action="register" method="post">
<table width="100%">
<tr>
	<th><h1>User Registration</h1>
</tr>
<tr>
	<td><input type="email" name="email" class="mycomp" placeholder="* Enter Your Email" required="required"></td>
</tr>
<tr>
	<td><input type="password" name="password" class="mycomp"
	   placeholder="* Enter Your password" required="required"></td>
</tr>
<tr>
	<td>
		<input type="number" class="mycomp" name="age" 
		min="18" max="60" placeholder="age" required="required"
	 	style="width:25%;margin-right:0px">
	 
		<input type="date" class="mycomp" name="dob" 
		placeholder="Date of Birth" max="2017-05-18" min="1900-05-18"
		style="width:25%;paddig-rigth:0px">
		
		<select name="city" class="mycomp"
		style="width:25%;margin-left:0px">
				<option value="-1">--City--</option>
				<option>Hyderabad</option>
				<option>Medak</option>
				<option>Siddipet</option>
				<option>Basar</option>	
			</select>>
	</td>
</tr>
<tr>
	<td><input type="text" name="name" class="mycomp" placeholder="* Enter Your Name" required="required"></td>
</tr>
<tr>
	<td>
		<input type="number" class="mycomp" name="contact" 
		min="7000000000" max="9999999999" placeholder="Enter Contact num" required="required">
		
	 </td>
</tr>
<tr>	
	<td class="mycomp">
		<input name="gender" type="radio" class="width:10%" checked="checked" value="male">Male
  	<input name="gender" type="radio" class="width:10%" checked="checked" value="female">FeMale
	</td>
</tr>

<tr>
	<td align="center"><input type="submit" value="Register"class="mybtn">
	<input type="reset" value="Clear" class="mybtn"></td>
</tr>
</table>

</form>


<%@ include file="footer.jsp"%>


