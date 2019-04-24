<%@include file="Header.jsp"%>
<html>
<body>
<h2>Welcome to Category Page!</h2>
<form action="<c:url value="/updateCategory"/>" method="post">

	<table align="center" class="table-bordered">
		<tr>
			<td>Category ID</td>
			<td><input type="text" name="categoryID" value="${categoryData.categoryID }"/ readonly></td>
		</tr>
		<tr>
			<td colspan ="2">Category Detail</td>
		</tr>
		<tr>
			<td>Category Name</td>
			<td><input type="text" name="categoryName" value="${categoryData.categoryName }"/></td>
		</tr>
		<tr>
			<td>Category Desc</td>
			<td><input type="text" name="categoryDesc" value="${categoryData.categoryDesc }"/></td>
		</tr>
		<tr>
			<td colspan="2">
			<input type="submit" value="Update Category"/></td>
		</tr>
	</table>
</form>