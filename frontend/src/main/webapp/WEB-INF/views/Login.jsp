<%@include file="Header.jsp"%>
<h2><center>Welcome to login page!</center></h2>

<form action="perform_login" method="post">
<table align="center">
	<tr>
		<td colspan ="2" ><center><b>${errorInfo}</b></center></td>
		
	</tr>
	<tr>
		<td colspan ="2" align = "center">Login</td>
		
	</tr>
	<tr>
		<td>User Name</td>
		<td><input type="text" name="username"/></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" name="password"/></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="Submit"/></td>
	</tr>
</table>
</form>
<%@include file="Footer.jsp"%>