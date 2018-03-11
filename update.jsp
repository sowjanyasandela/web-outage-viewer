<%@include file="header.jsp"%>
<form class="mform" action="update" method="post">
<table width="100%">
		<tr><th><h1>Update Profile</h1></th></tr>	
		<tr><td><input type="email" name="email" class="mycomp" 
						readonly="readonly" value="<%=u1.getUserid()%>"></td>
		</tr>
		<tr><td><input type="date" class="mycomp" name="dob" 
					placeholder="Date of Birth" max="2017-05-05" min="2017-04-15"
					style="width:35%;margin-right:0px;margin-left:0px;
					padding-right:0px" value="<%=u1.getDob()%>">
	<select name="city" class="mycomp"	style="margin-left:0px;width:30%">

		<option><%=u1.getCity()%></option>	
		<option>Hyderabad</option>			<option>Adilabad</option>
		<option>Secundrabad</option>		<option>Warangal</option>
		<option>Nizamabad</option>			<option>Basra</option>
	</select></td></tr>
		<tr><td><input type="text" class="mycomp"
			required="required" name="name" value=<%=u1.getUsername()%>>
		</td></tr>
		<tr><td><input type="number" class="mycomp" name="contact"
	min="7000000000" max="9999999999" value="<%=u1.getContact()%>">
			</td></tr>
		<tr><td class="mycomp">
			<input type="radio" class="width:10%" 
			<%=(u1.getGender().equals("male")?"checked='checked'":"") %>
				value="male" name="gender">Male
			<input type="radio" class="width:10%" value="female"
			<%=(u1.getGender().equals("female")?"checked='checked'":"") %>
				name="gender">Female</td></tr>
		<tr><td align="center">
				<input type="submit" class="mybtn" value="Update">
				<input type="button" class="mybtn" value="Reload Profile Settings"
				onclick="window.location.assign('update.jsp');"
				></td></tr>
	</table>
</form>
<%@include file="footer.jsp"%>