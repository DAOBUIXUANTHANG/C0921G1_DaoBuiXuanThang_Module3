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
<%--phan th??n trang--%>
<div class="container-fluid mt-3" style="height: 600px">
    <div class="row h-100">

        <div class="col-xl-12">
            <form method="post">
                <div class="mb-3">
                    <label for="customerTypeID" class="form-label">Customer Type ID: </label>

                    <select class="form-select" aria-label="default select example" id="customerTypeID" name="customerTypeID">
                        <option></option>
                        <option value="1">Diamond</option>
                        <option value="2">Platinum</option>
                        <option value="3">Gold</option>
                        <option value="4">Silver</option>
                        <option value="5">Member</option>
                    </select>
                </div>

                <div class="mb-3">
                    <label for="customerName" class="form-label">Customer Name: </label>
                    <input type="text" class="form-control" id="customerName" name="customerName">
                </div>

                <div class="mb-3">
                    <label for="dateOfBirth" class="form-label">Date Of Birth: </label>
                    <input type="text" class="form-control" id="dateOfBirth" name="dateOfBirth">
                </div>

                <div class="mb-3">
                    <label for="sex" class="form-label">Sex: </label>
                    <select class="form-select" aria-label="default select example" id="sex" name="sex">
                        <option></option>
                        <option value="true">Male</option>
                        <option value="false">Female</option>
                    </select>
                </div>

                <div class="mb-3">
                    <label for="identityNumber" class="form-label">Identity Number: </label>
                    <input type="text" class="form-control" id="identityNumber" name="identityNumber">
                </div>

                <div class="mb-3">
                    <label for="phoneNumber" class="form-label">Phone Number: </label>
                    <input type="text" class="form-control" id="phoneNumber" name="phoneNumber">
                </div>

                <div class="mb-3">
                    <label for="email" class="form-label">Email: </label>
                    <input type="text" class="form-control" id="email" name="email">
                </div>

                <div class="mb-3">
                    <label for="address" class="form-label">Address: </label>
                    <input type="text" class="form-control" id="address" name="address">
                </div>

                <button type="submit" class="btn btn-secondary">Add New Customer</button>


                <a href="/customers" class="ms-1 text-decoration-none text-dark">Back to customer list!</a>
            </form>
        </div>
    </div>
</div>

<hr class="bg-gradient">
<%--Footer--%>
<div>
    <div class="row">
        <div class="col-xl-1"> Footer</div>
    </div>
</div>

<script src="css_bootstrap/js/bootstrap.min.js"></script>
</body>
</html>