<%@include file="Header.jsp"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<form:form action="InsertProduct" modelAttribute="product" method="post"> 
<table align ="center">
	<tr>
		<td colspan="2">Product Detail</td>
	</tr>
	
	<tr>
		<td>Product Name</td>
		<td><form:input path="productName"/></td>
	</tr>
	
	<tr bgcolor="pink">
		<td>Price</td>
		<td><form:input path="price"/></td>
	</tr>
	
	<tr>
		<td>Quantity</td>
		<td><form:input path="quantity"/></td>
	</tr>
	
	<tr bgcolor="pink">
		<td>Category</td>
		<td><form:select path="categoryID">
				<form:option value="0" label="--Select List--"/>
				<form:options items="${categoryList }" />
			</form:select>
		</td>
	</tr>
	
	<tr>
		<td>Supplier</td>
		<td><form:select path="supplierID"/></td>
	</tr>
	
	<tr bgcolor="pink">
		<td>Product Description</td>
		<td><form:input path="productDesc"/></td>
	</tr>
	<%-- 
	<tr>
		<td>Product Image</td>
		<td><form:input type="file" path="pimage"/></td>
	</tr>
	 --%>
	<tr>
		<td colspan="2">
			<center>
				<input type="submit" value="Insert"/>
			</center>
		</td>
	</tr>
</table>
</form:form>
<table align="center" class="table">
	<tr>
		<td colspan = "3"><center>Product Detail</center></td>
	</tr>
	</tr>
	<tr>
		<td>Product ID</td>
		<td>Product Name</td>
		<td>Price</td>
		<td>Edit Product</td>
		<td>Delete Product</td>
	</tr>
	<c:forEach items="${categoryList }" var = "category">
		<tr>
		
			<td>${category.categoryID }</td>
			<td>${category.categoryName }</td>
			<td>${category.categoryDesc }</td>
			<td><a href="<c:url value="/editProduct/${category.categoryID}"/>">Edit</a></td>
			<td><a href="<c:url value="/deleteProduct/${category.categoryID}" />">Delete</a></td>
		</tr>
	</c:forEach>
</table>