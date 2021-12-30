
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search</title>
</head>
<body>
<h1>List Result</h1>
<p>
    <a href="/products">Back to product list</a>
</p>
<div>
    <table border="1">
        <caption>Result</caption>
        <tr>
            <td>Id</td>
            <td>Name</td>
            <td>Price</td>
            <td>Product Description</td>
            <td>Producer</td>
        </tr>
        <c:forEach items='${requestScope["products"]}' var="products">
            <tr>
                <td><a href="/products?action=view&id= ${products.id}">${products.id}</a></td>
                <td>${products.getName()}</td>
                <td>${products.getPrice()}</td>
                <td>${products.getDescription()}</td>
                <td>${products.getProducer()}</td>
                <td><a href="/products?action=edit&id=${products.getId()}">edit</a></td>
                <td><a href="/products?action=delete&id=${products.getId()}">delete</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
