
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Product</title>
</head>
<body>
<div>
    <h1>Create Product</h1>
</div>
<div>
    <p>
        <c:if test='${requestScope["message"] != null}'>
            <span class="message">${requestScope["message"]}</span>
        </c:if>
    </p>
    <p>
        <a href="/products">Back to product list</a>
    </p>
</div>
<div>
    <form method="post">
        <fieldset>
            <legend>Product information</legend>
            <table>
                <tr>
                    <td>Name: </td>
                    <td><input type="text" name="name" id="name" value="${requestScope["product"].getName()}"></td>
                </tr>
                <tr>
                    <td>Price: </td>
                    <td><input type="text" name="price" id="price" value="${requestScope["product"].getPrice()}"></td>
                </tr>
                <tr>
                    <td>Product Description: </td>
                    <td><input type="text" name="productDescription" id="productDescription" value="${requestScope["product"].getDescription()}"></td>

                </tr>
                <tr>
                    <td>Producer:</td>
                    <td><input type="text" name="producer" id = "producer" value ="${requestScope["product"].getProducer()}"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Update product"></td>
                </tr>
            </table>
        </fieldset>
    </form>
</div>
</body>
</html>
