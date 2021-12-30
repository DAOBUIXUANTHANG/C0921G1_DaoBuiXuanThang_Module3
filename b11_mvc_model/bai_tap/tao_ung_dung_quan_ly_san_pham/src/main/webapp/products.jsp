
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
    <div>
        <h1>Product List</h1>
    </div>

    <div>
        <p>
            <a href="/products?action=create">Create new product</a>
        </p>

        <form >
            <input type="text" name="search" placeholder="Search By Name">
            <input type="text" name="action" hidden value="search">
            <button>Search</button>

        </form>
    </div>

    <div>
        <form>
            <table border="1">
                <tr>
                    <td>Id</td>
                    <td>Name</td>
                    <td>Price</td>
                    <td>Product Description</td>
                    <td>Producer</td>
                </tr>
                <c:forEach items='${requestScope["products"]}' var="products">
                    <tr>
                        <td><a href="/products?action=view&id=${products.id}">${products.id}</a></td>
                        <td>${products.getName()}</td>
                        <td>${products.getPrice()}</td>
                        <td>${products.getDescription()}</td>
                        <td>${products.getProducer()}</td>
                        <td><a href="/products?action=edit&id=${products.getId()}">edit</a></td>
                        <td><a href="/products?action=delete&id=${products.id}">delete</a></td>
                    </tr>
                </c:forEach>
            </table>
        </form>
    </div>
</body>
</html>
