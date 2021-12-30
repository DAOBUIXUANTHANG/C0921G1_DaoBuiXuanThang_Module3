<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>Products:</h1>
<p>
    <a href="/products?action=create">Create new product</a>
</p>
<form >
    <input type="text" name="search" placeholder="Search By Name">
    <input type="text" name="action"hidden value="search">
    <button>Search</button>

</form>

<table border="1">
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Price</td>
        <td>Product Description</td>
        <td>Producer</td>
    </tr>
    <c:forEach items='${requestScope["product"]}' var="product">
        <tr>
            <td><a href="/products?action=view&id=${product.id}">${product.id}</a></td>
            <td> ${product.name}</td>
            <td>${product.price}</td>
            <td>${product.descriptionOfProd}</td>
            <td>${product.producer}</td>
            <td><a href="/products?action=edit&id=${product.getId()}">edit</a></td>
            <td><a href="/products?action=delete&id=${product.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>