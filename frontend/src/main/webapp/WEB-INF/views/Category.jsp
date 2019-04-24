<%@include file="Header.jsp"%>
<html>
<body>
<h2>Welcome to Category Page!</h2>
<form action="addCategory" method="post">

	<table align="center" class="table-bordered">
		<tr>
			<td colspan ="2">Category Detail</td>
		</tr>
		<tr>
			<td>Category Name</td>
			<td><input type="text" name="categoryName"/></td>
		</tr>
		<tr>
			<td>Category Desc</td>
			<td><input type="text" name="categoryDesc"/></td>
		</tr>
		<tr>
			<td colspan="2">
			<input type="submit" value="Enter Category"/></td>
		</tr>
	</table>
</form>
<table align="center" class="table">
	<tr>
		<td colspan = "3"><center>Category Detail</center></td>
	</tr>
	</tr>
	<tr>
		<td>Category ID</td>
		<td>Category Name</td>
		<td>Category Desc</td>
		<td>Edit Category</td>
		<td>Delete Category</td>
	</tr>
	<c:forEach items="${categoryList }" var = "category">
		<tr>
		
			<td>${category.categoryID }</td>
			<td>${category.categoryName }</td>
			<td>${category.categoryDesc }</td>
			<td><a href="<c:url value="/editCategory/${category.categoryID}"/>">Edit</a></td>
			<td><a href="<c:url value="/deleteCategory/${category.categoryID}" />">Delete</a></td>
		</tr>
	</c:forEach>
</table>
</body>
</html>
