<%@include file="Header.jsp"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%-- <c:if test="${flag }"> --%>
<form:form action="addProduct" modelAttribute="product" method="post" enctype="multipart/form-data"> 
<table align ="center">
	<tr>
		<td colspan="2">Product Detail</td>
	</tr>
	
	<tr>
		<td>Product Name</td>
		<td><form:input path="productName" required title="mandate"/></td>
	</tr>
	
	<tr>
		<td>Price</td>
		<td><form:input path="price" required title="mandate"/></td>
	</tr>
	
	<tr>
		<td>Stock</td>
		<td><form:input path="quantity" required title="mandate"/></td>
	</tr>
	
	<tr>
		<td>Category</td>
		<td><form:select path="categoryID">
				<form:option value="0" label="--Select List--"/>
				<form:options items="${categoryList }" />
			</form:select>
		</td>
	</tr>
	
	<tr>
		<td>Supplier</td>
		<td><form:select path="supplierID">
				<form:option value="0" label="--Select List--"/>
				<form:options items="${supplierList }"/>
		</form:select>
		</td>
	</tr>
	
	<tr>
		<td>Product Description</td>
		<td><form:input path="productDesc" required title="mandate"/></td>
	</tr>
	<tr>
		<td>Product Image</td>
		<td><form:input type="file" path="productImage" required title="insert an image"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<center>
				<input type="submit" value="Insert"/>
			</center>
		</td>
	</tr>
</table>
</form:form>
<%-- </c:if> --%>
<%-- <c:if test="${flag}">
<form:form action="updateProduct" modelAttribute="product" method="post"> 
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
		<td>Stock</td>
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
		<td><form:select path="supplierID">
				<form:option value="0" label="--Select List--"/>
				<form:options items="${supplierList }"/>
		</form:select>
		</td>
	</tr>
	
	<tr bgcolor="pink">
		<td>Product Description</td>
		<td><form:input path="productDesc"/></td>
	</tr>
	
	<tr>
		<td>Product Image</td>
		<td><form:input type="file" path="pimage"/></td>
	</tr>
	
	<tr>
		<td colspan="2">
			<center>
				<input type="submit" value="Insert"/>
			</center>
		</td>
	</tr>
</table>
</form:form>
</c:if>
 --%>
 <table align="center" class="table">
	<tr>
		<td colspan = "9"><center>Product Detail</center></td>
	</tr>
	</tr>
	<tr>
		<td>Product Image</td>
		<td>Product ID</td>
		<td>Product Name</td>
		<td>Product Desc</td>
		<td>Price</td>
		<td>Stock</td>
		<td>Edit Product</td>
		<td>Delete Product</td>
	</tr>
	<c:forEach items="${productList }" var = "product">
		<tr>
			<td><img src="<c:url value="/resources/images/${product.productID }.jpg"/>" class="img-thumbnail" height="50" width="50"/></td>
			<td>${product.productID }</td>
			<td>${product.productName }</td>
			<td>${product.productDesc }</td>
			<td>${product.price }</td>
			<td>${product.quantity }</td>
			<td><a href="<c:url value="/editProduct/${product.productID}"/>">Edit</a></td>
			<td><a href="<c:url value="/deleteProduct/${product.productID}" />">Delete</a></td>
		</tr>
	</c:forEach>
</table>
<%@include file="Footer.jsp"%>