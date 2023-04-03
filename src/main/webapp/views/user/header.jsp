<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/22/2022
  Time: 3:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

  <div class="mobile-nav div2">
    <!-- Navbar Brand -->
    <div class="amado-navbar-brand">
      <a href="../user/index.jsp"><img src="<%=request.getContextPath()%>/views/img/core-img/logo.png" alt=""></a>
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
      <a href="../user/index.jsp"><img src="<%=request.getContextPath()%>/views/img/core-img/logo.png" alt=""></a>
    </div>
    <!-- Amado Nav -->
    <nav class="amado-nav">
      <ul>
        <li class="active"><a href="<%=request.getContextPath()%>/HomeServlet?action=Home">Home</a></li>
        <li><a href="<%=request.getContextPath()%>/HomeServlet?action=Shop">Shop</a></li>
        <!-- <li><a href="product-details.html">Product</a></li> -->
        <li><a href="../user/contact.jsp">Contact</a></li>
        <!-- <li><a href="cart.html">Cart</a></li> -->
        <li><a href="../user/login.jsp">Login</a></li>
        <li><a href="../user/register.jsp">Register</a></li>


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
