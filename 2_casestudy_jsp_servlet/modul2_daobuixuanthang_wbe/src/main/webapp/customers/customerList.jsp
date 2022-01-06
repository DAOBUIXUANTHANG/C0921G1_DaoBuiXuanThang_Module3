<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Furama</title>
    <link rel="stylesheet" href="../bootstrap-5.1.3-dist/css/bootstrap.min.css">
</head>
<body>
<%-- row1 header--%>
<div class="container-fluid">
    <div class="row">
        <div class="col-xl-6">

            <p class="fw-bold fst-italic">Furama Resort</p>
        </div>

        <div class="col-xl-6">

            <p class="fw-bold fst-italic text-md-end">X.Thang</p>
        </div>
    </div>
</div>
<%--dong ngan cach--%>
<hr class="bg-gradient">
<%--thanh menu + search--%>
<div class="container-fluid">
    <div class="row bg-light">

        <div class="col-xl-12">
            <div class="row">
                <div class="col-xl-12">
                    <nav class="navbar navbar-expand-lg navbar-light bg-light">
                        <div class="container-fluid">
                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                    <li class="nav-item fw-bold">
                                        <a class="nav-link text-dark" href="/">Home</a>
                                    </li>

                                    <li class="nav-item fw-bold ms-4">
                                        <a class="nav-link text-dark" href="/employees">Employee</a>
                                    </li>

                                    <li class="nav-item fw-bold ms-4">
                                        <a class="nav-link text-dark" href="/customers">Customer</a>
                                    </li>

                                    <li class="nav-item fw-bold ms-4">
                                        <a class="nav-link text-dark" href="/services">Service</a>
                                    </li>

                                    <li class="nav-item fw-bold ms-4">
                                        <a class="nav-link text-dark" href="/contracts">Contract</a>
                                    </li>
                                </ul>

                                <form class="d-flex position-absolute top-50 end-0 translate-middle-y">
                                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                                    <button class="btn btn-outline-success text-dark" type="submit">Search</button>
                                </form>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>

    </div>
</div>
<%--phan thân trang--%>
<div class="container-fluid mt-3" style="height: 600px">
    <div class="row">
<%--        create customer--%>
        <div>

            <table border="1" cellpadding="5">
                <div>
                    <caption><h2>List of Customers</h2></caption>
                </div>
                <div>
                    <tr>
                        <th>ID</th>
                        <th>Type ID</th>
                        <th>Name</th>
                        <th>Birthday</th>
                        <th>Gender</th>
                        <th>ID Card</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>Adđress</th>
                    </tr>
                    <c:forEach var="customer" items="${customers}">
                        <tr>
                            <td><c:out value="${customer.cusID}"/></td>
                            <td><c:out value="${customer.cusType}"/></td>
                            <td><c:out value="${customer.cusName}"/></td>
                            <td><c:out value="${customer.dateOfBirth}"/></td>
                            <td><c:out value="${customer.isGender()}"/></td>
                            <td><c:out value="${customer.cusIDCard}"/></td>
                            <td><c:out value="${customer.phoneNumber}"/></td>
                            <td><c:out value="${customer.email}"/></td>
                            <td><c:out value="${customer.address}"/></td>
                            <td>
                                <a href="/customers?action=edit&id=${customer.cusID}">Edit</a>
                                <a href="/customers?action=delete&id=${customer.cusID}">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </div>

            </table>

        </div>
    </div>


</div>


<%--Footer--%>
<hr>
<div>
    <div class="row" >
        <div class="button">
            <a href="/customers?action=create" class="text-dark text-decoration-none fw-bold ms-2">Add new customer</a>
        </div>
    </div>
</div>

<script src="css_bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
