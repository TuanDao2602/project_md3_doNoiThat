<%@ page import="ra.controller.HomeServlet" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/22/2022
  Time: 3:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="description" content="">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

  <!-- Title  -->
  <title>Amado - Furniture Ecommerce Template | Home</title>

  <!-- Favicon  -->
  <link rel="icon" href="<%=request.getContextPath()%>/views/img/core-img/favicon.ico">

  <!-- Core Style CSS -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/views/css/core-style.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/views/css/style.css">
<%--  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">--%>
<%--  <link rel="stylesheet"href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css">--%>
<%--  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">--%>
<%--  <!-- CSS only -->--%>
<%--  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.0/font/bootstrap-icons.css">--%>
<%--  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">--%>
<%--  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>--%>
<%--  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>--%>
<%--  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>--%>
<%--  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">--%>
<%--  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>--%>

<%--</head>--%>

<body>
<!-- Search Wrapper Area Start -->


<div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <a href="../user/product-details.jsp"><img src="<%=request.getContextPath()%>/views/img/img/bg-img/Cover1.jpg" class="d-block w-100" alt="..."></a>
    </div>
    <div class="carousel-item">
      <a href="../user/product-details.jsp"><img src="<%=request.getContextPath()%>/views/img/bg-img/Cover3.jpg" class="d-block w-100" alt="..."></a>
    </div>
    <div class="carousel-item">
      <a href="../user/product-details.jsp"><img src="<%=request.getContextPath()%>/views/img/bg-img/Cover4.jpg" class="d-block w-100" alt="..."></a>
    </div>
    <div class="carousel-item">
      <a href="../user/product-details.jsp"><img src="<%=request.getContextPath()%>/views/img/bg-img/cover5.jpg" class="d-block w-100" alt="..."></a>
    </div>

  </div>
</div>



<div class="search-wrapper section-padding-100 search-class">
  <div class="search-close">
    <i class="fa fa-close" aria-hidden="true"></i>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="search-content">
          <form action="<%=request.getContextPath()%>/HomeServlet" method="get">
            <input type="search" name="search" id="search" placeholder="Type your keyword...">
            <button type="submit" name="action" value="Search"><img src="<%=request.getContextPath()%>/views/img/core-img/search.png" alt=""></button>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Search Wrapper Area End -->

<!-- ##### Main Content Wrapper Start ##### -->
<div class="main-content-wrapper d-flex clearfix">

  <!-- Mobile Nav (max width 767px)-->

  <div class="mobile-nav div2">
    <!-- Navbar Brand -->
    <div class="amado-navbar-brand">
      <a href="<%=request.getContextPath()%>/HomeServlet?action=Home"><img src="<%=request.getContextPath()%>/views/img/core-img/logo.png" alt=""></a>
    </div>
    <!-- Navbar Toggler -->
    <div class="amado-navbar-toggler">
      <span></span><span></span><span></span>
    </div>
  </div>

  <!-- Header Area Start -->
  <header class="header-area clearfix headerclass">
    <!-- Close Icon -->
    <div class="nav-close">
      <i class="fa fa-close" aria-hidden="true"></i>
    </div>
    <!-- Logo -->
    <div class="logo">
      <a href="<%=request.getContextPath()%>/HomeServlet?action=Home"><img src="<%=request.getContextPath()%>/views/img/core-img/logo.png" alt=""></a>
    </div>
    <!-- Amado Nav -->
    <nav class="amado-nav">
      <ul>
        <li class="active"><a href="<%=request.getContextPath()%>/HomeServlet?action=Home">Home</a></li>
        <li><a href="<%=request.getContextPath()%>/HomeServlet?action=Shop">Shop</a></li>
        <!-- <li><a href="product-details.html">Product</a></li> -->
        <li><a href="views/user/contact.jsp">Contact</a></li>
        <!-- <li><a href="cart.html">Cart</a></li> -->
        <li><c:choose>
          <c:when test="${empty userLogin}">
            <a class="dropdown-item"
               href="<%=request.getContextPath()%>/views/user/login.jsp">Login</a>
            <a class="dropdown-item"
               href="<%=request.getContextPath()%>/views/user/register.jsp">Regiter</a>

          </c:when>
          <c:otherwise>
            <a class="dropdown-item" href="<%=request.getContextPath()%>/UserServlet?action=logOut">LogOut</a>
          </c:otherwise>
        </c:choose>
        </li>


        <!-- <li><a href="checkout.html">Checkout</a></li> -->
      </ul>
    </nav>
    <!-- Button Group -->
    <div class="amado-btn-group mt-30 mb-100">
      <a href="../user/newproduct.jsp" class="btn amado-btn active">New this week</a>
    </div>
    <!-- Cart Menu -->
    <div class="cart-fav-search mb-100">
      <a href="<%=request.getContextPath()%>/views/user/cart.jsp" class="cart-nav"><img src="<%=request.getContextPath()%>/views/img/core-img/cart.png" alt=""> Cart <span>(0)</span></a>
      <a href="<%=request.getContextPath()%>/views/user/likeproduct.jsp" class="fav-nav"><img src="<%=request.getContextPath()%>/views/img/core-img/favorites.png" alt=""> Favourite</a>
      <a href="#" class="search-nav"><img src="<%=request.getContextPath()%>/views/img/core-img/search.png" alt=""> Search</a>
    </div>
    <!-- Social Button -->
    <div class="social-info d-flex justify-content-between">
      <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
      <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
      <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
      <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
    </div>
  </header>
<!-- Header Area End -->

<!-- Product Catagories Area Start -->

  <div class="products-catagories-area clearfix">
<%--    <h3 style="color: rgb(134, 66, 120);">Outstanding</h3>--%>
    <div class="amado-pro-catagory clearfix">
      <c:forEach items="${listProduct}" var="pro">
      <div class="single-products-catagory clearfix">
<%--        <img style="height: 450px;width: 600px" src="<%=request.getContextPath()%>/images/${proDetail.productImages}" alt="${proDetail.productName}"/>--%>
        <a href="<%=request.getContextPath()%>/HomeServlet?productId=${pro.productID}&&action=detail"><img  src="<%=request.getContextPath()%>/images/${pro.productImages}" alt="${pro.productName}"/></a>
          <!-- Hover Content -->
          <div class="hover-content">
            <div class="line"></div>
            <p>From ${pro.price}</p>
            <h4>${pro.productName}</h4>
          </div>
          <div class="like1" >
            <a href="<%=request.getContextPath()%>/LikeProductServlet?action=likeProduct&&productID=${pro.productID}" ><i class="bi bi-suit-heart"></i></a>
          </div>
        </a>
      </div>
      </c:forEach>
    </div>
  </div>
</div>
<!-- ##### Newsletter Area End ##### -->

<!-- ##### Footer Area Start ##### -->
  <footer class="footer_area clearfix">
    <div class="container">
      <div class="row align-items-center">
        <!-- Single Widget Area -->
        <div class="col-12 col-lg-4">
          <div class="single_widget_area">
            <!-- Logo -->
            <div class="footer-logo mr-50">
              <a href="../user/index.jsp"><img src="<%=request.getContextPath()%>/views/img/core-img/logo2.png" alt=""></a>
            </div>
            <!-- Copywrite Text -->
            <p class="copywrite"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
              Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> & Re-distributed by <a href="https://themewagon.com/" target="_blank">Themewagon</a>
              <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
          </div>
        </div>
        <!-- Single Widget Area -->
        <div class="col-12 col-lg-8">
          <div class="single_widget_area">
            <!-- Footer Menu -->
            <div class="footer_menu">
              <nav class="navbar navbar-expand-lg justify-content-end">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#footerNavContent" aria-controls="footerNavContent" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
                <div class="collapse navbar-collapse" id="footerNavContent">
                  <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                      <a class="nav-link" href="../user/index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="<%=request.getContextPath()%>/HomeServlet">Shop</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="../user/product-details.jsp">Product</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="../user/cart.jsp">Cart</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="../user/checkout.jsp">Checkout</a>
                    </li>
                  </ul>
                </div>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </div>

  </footer>
<!-- ##### Footer Area End ##### -->

<!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
  <script src="<%=request.getContextPath()%>/views/js/jquery/jquery-2.2.4.min.js"></script>
  <!-- Popper js -->
  <script src="<%=request.getContextPath()%>/views/js/popper.min.js"></script>
  <!-- Bootstrap js -->
  <script src="<%=request.getContextPath()%>/views/js/bootstrap.min.js"></script>
  <!-- Plugins js -->
  <script src="<%=request.getContextPath()%>/views/js/plugins.js"></script>
  <!-- Active js -->
  <script src="<%=request.getContextPath()%>/views/js/active.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
          integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
          crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js"
          integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk"
          crossorigin="anonymous"></script>
</body>

</html>