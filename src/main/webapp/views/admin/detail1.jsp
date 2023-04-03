<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/29/2022
  Time: 1:46 PM
  To change this template use File | Settings | File Templates.
--%>
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
  <title>Amado - Furniture Ecommerce Template | Product Details</title>

  <!-- Favicon  -->
<%--  <link rel="icon" href="<%=request.getContextPath()%>/views/img/core-img/favicon.ico">--%>

  <!-- Core Style CSS -->
<%--  <link rel="stylesheet" href="<%=request.getContextPath()%>/views/css/core-style.css">--%>
<%--  <link rel="stylesheet" href="<%=request.getContextPath()%>/views/style.css">--%>

</head>

<body>
<!-- Search Wrapper Area Start -->
<div class="search-wrapper section-padding-100">
  <div class="search-close">
    <i class="fa fa-close" aria-hidden="true"></i>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="search-content">
          <form action="#" method="get">
            <input type="search" name="search" id="search" placeholder="Type your keyword...">
            <button type="submit"><img src="<%=request.getContextPath()%>/views/img/core-img/search.png" alt=""></button>
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
  <div class="mobile-nav">
    <!-- Navbar Brand -->
    <div class="amado-navbar-brand">
      <a href="index.html"><img src="<%=request.getContextPath()%>/views/img/core-img/logo.png" alt=""></a>
    </div>
    <!-- Navbar Toggler -->
    <div class="amado-navbar-toggler">
      <span></span><span></span><span></span>
    </div>
  </div>

  <!-- Header Area Start -->
  <header class="header-area clearfix">
    <!-- Close Icon -->
    <div class="nav-close">
      <i class="fa fa-close" aria-hidden="true"></i>
    </div>
    <!-- Logo -->
    <div class="logo">
      <a href="<%=request.getContextPath()%>/ProductServlet"><img src="<%=request.getContextPath()%>/views/img/core-img/logo.png" alt=""></a>
    </div>
    <!-- Amado Nav -->
    <nav class="amado-nav">
      <ul>
        <li ><a href="../views/admin/index.jsp">Home</a></li>
        <li><a href="<%=request.getContextPath()%>/CatalogServlet">Catalog</a></li>
        <li><a href="<%=request.getContextPath()%>/ProductServlet">Shop</a></li>
        <li><a href="<%=request.getContextPath()%>/UserServlet">User</a></li>
<%--        <li><a href="register.html">Register</a></li>--%>

      </ul>
    </nav>
    <!-- Button Group -->
    <div class="amado-btn-group mt-30 mb-100">
      <a href="newProduct.html" class="btn amado-btn active">New this week</a>
    </div>
    <!-- Cart Menu -->
<%--    <div class="cart-fav-search mb-100">--%>
<%--      <a href="cart.html" class="cart-nav"><img src="img/core-img/cart.png" alt=""> Cart <span>(0)</span></a>--%>
<%--      <a href="./likeProduct.html" class="fav-nav"><img src="img/core-img/favorites.png" alt=""> Favourite</a>--%>
<%--      <a href="#" class="search-nav"><img src="img/core-img/search.png" alt=""> Search</a>--%>
<%--    </div>--%>
    <!-- Social Button -->
    <div class="social-info d-flex justify-content-between">
      <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
      <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
      <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
      <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
    </div>
  </header>
  <!-- Header Area End -->

  <!-- Product Details Area Start -->
  <div class="single-product-area section-padding-100 clearfix">
    <div class="container-fluid">

      <div class="row">
        <div class="col-12">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb mt-50">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item"><a href="#">ProductDetail</a></li>
            </ol>
          </nav>
        </div>
      </div>

      <div class="row">
        <div class="col-12 col-lg-7">
          <div class="single_product_thumb">
            <div id="product_details_slider" class="carousel slide" data-ride="carousel">
                <div>
                  <img style="height: 450px;width: 600px" src="<%=request.getContextPath()%>/images/${proDetail.productImages}" alt="${proDetail.productName}"/>
                </div>
              <div>
                <c:forEach items="${proDetail.listImage}" var="link">
                  <img style="width: 300px;height: 300px" src="<%=request.getContextPath()%>/images/${link}" alt="${proDetail.productName}"/>
                </c:forEach>
              </div>
            </div>
          </div>
        </div>

        <div class="col-12 col-lg-5">
          <div class="single_product_desc">
            <!-- Product Meta Data -->
            <div class="product-meta-data">
              <div class="line"></div>
              <p class="product-price">${proDetail.price}</p>
              <a href="<%=request.getContextPath()%>/views/product-details.html">
                <h6>${proDetail.productName}</h6>

              </a>

              <!-- Ratings & Review -->
              <div class="ratings-review mb-15 d-flex align-items-center justify-content-between">
                <div class="ratings">
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                </div>
                <div class="review">
                  <a href="#">Write A Review</a>
                </div>
              </div>
              <!-- Avaiable -->
              <p class="avaibility"><i class="fa fa-circle"></i> In Stock</p>
            </div>

            <div class="short_overview my-5">
              <p>Title : ${proDetail.title}</p>
            </div>

            <!-- Add to Cart Form -->
            <form class="cart clearfix" method="post">
              <div class="cart-btn d-flex mb-50">
                <p>QuanTity: ${proDetail.quantity}</p>
<%--
              </div>
<%--              <button type="submit" name="addtocart" value="5" class="btn amado-btn">Add to cart</button>--%>
            </form>

          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Product Details Area End -->
</div>
<!-- ##### Main Content Wrapper End ##### -->

<!-- ##### Newsletter Area Start ##### -->
<!-- <section class="newsletter-area section-padding-100-0">
    <div class="container">
        <div class="row align-items-center">

            <div class="col-12 col-lg-6 col-xl-7">
                <div class="newsletter-text mb-100">
                    <h2>Subscribe for a <span>25% Discount</span></h2>
                    <p>Nulla ac convallis lorem, eget euismod nisl. Donec in libero sit amet mi vulputate consectetur. Donec auctor interdum purus, ac finibus massa bibendum nec.</p>
                </div>
            </div>

            <div class="col-12 col-lg-6 col-xl-5">
                <div class="newsletter-form mb-100">
                    <form action="#" method="post">
                        <input type="email" name="email" class="nl-email" placeholder="Your E-mail">
                        <input type="submit" value="Subscribe">
                    </form>
                </div>
            </div>
        </div>
    </div>
</section> -->
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
            <a href="<%=request.getContextPath()%>/views/index.html"><img src="<%=request.getContextPath()%>/views/img/core-img/logo2.png" alt=""></a>
          </div>
          <!-- Copywrite Text -->
          <p class="copywrite"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> & Re-distributed by <a href="https://themewagon.com/" target="_blank">Themewagon</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
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
                    <a class="nav-link" href="<%=request.getContextPath()%>/views/index.html">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="<%=request.getContextPath()%>/views/shop.html">Shop</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="<%=request.getContextPath()%>/views/product-details.html">Product</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="<%=request.getContextPath()%>/views/cart.html">Cart</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="<%=request.getContextPath()%>/views/checkout.html">Checkout</a>
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
<!-- P
opper js -->
<script src="<%=request.getContextPath()%>/views/js/popper.min.js"></script>
<!-- Bootstrap js -->
<script src="<%=request.getContextPath()%>/views/js/bootstrap.min.js"></script>
<!-- Plugins js -->
<script src="<%=request.getContextPath()%>/views/js/plugins.js"></script>
<!-- Active js -->
<script src="<%=request.getContextPath()%>/views/js/active.js"></script>
</body>

</html>