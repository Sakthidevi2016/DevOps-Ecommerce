<%@include file="Header.jsp"%>

<form action="paymentprocess" method="post">
<table>
	<tr>
		<td colspan ="2"><center>Payment Process</center></td>
	</tr>
	<tr>
		<td>Payment Mode</td>
		<td><input type = "radio" name="pmode" value="CC"/>Credit Card
		<input type = "radio" name="pmode" value="CD"/>Cash on Delivery</td>
	</tr>
	
	<tr>
		<td>Credit Card</td>
		<td><input type="text" name="ccard"/></td>
	</tr>
	
	<tr>
		<td>Card Number</td>
		<td><input type="text" name="cnumber"/></td>
	</tr>
	
	<tr>
		<td>Validity</td>
		<td><input type="text" name="validity"/></td>
	</tr>
	
	<tr>
		<td>CCV</td>
		<td><input type="text" name="ccv"/></td>
	</tr>
	
	<tr>
		<td>Name on Card</td>
		<td><input type="text" name="cname"/></td>
	</tr>
	
	<tr>
		<td colspan = "2"><center><input type = "submit" value = "Pay"/><input type = "submit" value = "Cancel"/></center></td>
	</tr>
</table>
</form>
<%@include file="Footer.jsp"%>