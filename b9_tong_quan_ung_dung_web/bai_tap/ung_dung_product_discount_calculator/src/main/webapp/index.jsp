<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 23/12/2021
  Time: 9:29 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Calculator$</title>
  </head>
  <body>
  <h1> Product discount calculator</h1>
  <form action="/CalculatorServlet" method="post">
<%--    mô tả sản phẩm--%>
    <h4>Product Description</h4> <input type="text">
<%--    Giá niêm yết sản phẩm--%>
    <h4>List Price</h4> <input type="text" name="giaSanPham">
<%--    tỷ lệ chiết khấu--%>
    <h4>Discount Percen</h4> <input type="text" name="chietKhau">
  <input type = "submit" id = "submit" value = "RESULT"/>
  </form>
  </body>
</html>
