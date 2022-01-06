<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Furama</title>
  <link rel="stylesheet" href="css_bootstrap/css/bootstrap.min.css">
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
<%--phan thân trang--%>
<div class="container-fluid mt-3" style="height: 600px">
  <div class="row h-100">
    <div class="col-xl-3 border-end border-dark">
      <div class="row">
        <div class="col-xl-12">
          <ul class="list-group list-group-flush">
            <li class="list-group-item">An item</li>
            <li class="list-group-item">A second item</li>
            <li class="list-group-item">A third item</li>
            <li class="list-group-item">A fourth item</li>
          </ul>
        </div>
      </div>
    </div>

    <div class="col-xl-9">

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