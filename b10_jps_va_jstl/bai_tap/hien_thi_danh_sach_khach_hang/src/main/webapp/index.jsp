<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 23/12/2021
  Time: 10:02 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <head>
    <title>Danh Sach Khach Hang</title>
  </head>
  <body>

  <table border="1">
    <tr>
      <th>Danh sach Khach Hang</th>
    </tr>
    <tr>
      <th>Tên</th>
      <th>Ngày Sinh</th>
      <th>Địa Chỉ</th>
      <th>Ảnh</th>
    </tr>
    <c:forEach var="khachHang" items="${listDSKhachHang1}">
      <tr>
        <td>
          <c:out value="${khachHang.name}"/></td>
        <td>
          <c:out value="${khachHang.birthDate}"/></td>
        <td>
          <c:out value="${khachHang.address}"/></td>
        <td>
          <img style="width: 50px;height: 50px" src="<c:out value=" ${khachHang.picture}" />">
        </td>
      </tr>
    </c:forEach>
  </table>
  </body>
</html>
