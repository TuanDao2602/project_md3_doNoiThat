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
  <title>Amado - Furniture Ecommerce Template | Shop</title>

  <!-- Favicon  -->
  <link rel="icon" href="<%=request.getContextPath()%>/views/img/core-img/favicon.ico">


  <!-- Core Style CSS -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/views/css/core-style.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/views/css/style.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <link rel="stylesheet"href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
  <!-- CSS only -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.0/font/bootstrap-icons.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
  <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" /> -->


</head>

<body>


<div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <a href="<%=request.getContextPath()%>/views/product-details.html"><img src="<%=request.getContextPath()%>/views/img/core-img/moho_website_banner_1920x450_dotrangtri_4c37f4c5bf794b3abf0536166c6e4c98.webp" class="d-block w-100" alt="..."></a>
    </div>
    <div class="carousel-item">
      <a href="<%=request.getContextPath()%>/views/product-details.html"><img src="<%=request.getContextPath()%>/views/img/core-img/banner_web_1920x450-0410__1__6f2257102807417e9c13bec30010fb06.webp" class="d-block w-100" alt="..."></a>
    </div>
    <div class="carousel-item">
      <a href="<%=request.getContextPath()%>/views/product-details.html"><img src="<%=request.getContextPath()%>/views/img/core-img/anh2.jpg" class="d-block w-100" alt="..."></a>
    </div>
    <div class="carousel-item">
      <a href="<%=request.getContextPath()%>/views/product-details.html"><img src="<%=request.getContextPath()%>/views/img/core-img/anh3.jpg" class="d-block w-100" alt="..."></a>
    </div>

  </div>
</div>

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
      <a href="../user/index.jsp"><img src="<%=request.getContextPath()%>/views/img/core-img/logo.png" alt=""></a>
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
      <a href="<%=request.getContextPath()%>/HomeServlet?action=Home"><img src="<%=request.getContextPath()%>/views/img/core-img/logo.png" alt=""></a>
    </div>
    <!-- Amado Nav -->
    <nav class="amado-nav">
      <ul>
        <li ><a href="<%=request.getContextPath()%>/HomeServlet?action=Home">Home</a></li>
        <li class="active"><a href="<%=request.getContextPath()%>/HomeServlet?action=Shop">Shop</a></li>
        <!-- <li><a href="product-details.html">Product</a></li> -->
        <li><a href="views/user/contact.jsp">Contact</a></li>
        <!-- <li><a href="cart.html">Cart</a></li> -->
        <li><a href="views/user/login.jsp">Login</a></li>
        <li><a href="views/user/register.jsp">Register</a></li>

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

  <div class="shop_sidebar_area">

    <!-- ##### Single Widget ##### -->
    <div class="widget catagory mb-50">
      <!-- Widget Title -->
      <h6 class="widget-title mb-30">Catagories</h6>

      <!--  Catagories  -->
      <div class="catagories-menu">

         <div class="catagories-menu">
           <ul>
             <li class="active"><a href="<%=request.getContextPath()%>/ProductServlet?action=chairs&&catID=1">Chairs</a></li>
             <li><a href="<%=request.getContextPath()%>/ProductServlet?action=beds&&catID=2">Beds</a></li>
             <li><a href="<%=request.getContextPath()%>/ProductServlet?action=furniture&&catID=3">Furniture</a></li>
             <li><a href="<%=request.getContextPath()%>/ProductServlet?action=deco&&catID=4">Home Deco</a></li>
             <li><a href="<%=request.getContextPath()%>/ProductServlet?action=tables&&catID=5">Tables</a></li>
           </ul>
         </div>


      </div>
    </div>

    <!-- ##### Single Widget ##### -->
    <div class="widget brands mb-50">
      <!-- Widget Title -->
      <h6 class="widget-title mb-30">Brands</h6>

      <div class="widget-desc">
        <!-- Single Form Check -->
        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="" id="amado">
          <label class="form-check-label" for="amado">Amado</label>
        </div>
        <!-- Single Form Check -->
        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="" id="ikea">
          <label class="form-check-label" for="ikea">Ikea</label>
        </div>
        <!-- Single Form Check -->
        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="" id="furniture">
          <label class="form-check-label" for="furniture">Furniture Inc</label>
        </div>
        <!-- Single Form Check -->
        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="" id="factory">
          <label class="form-check-label" for="factory">The factory</label>
        </div>
        <!-- Single Form Check -->
        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="" id="artdeco">
          <label class="form-check-label" for="artdeco">Artdeco</label>
        </div>
      </div>
    </div>
  </div>


  <div class="amado_product_area section-padding-100">
    <div class="container-fluid">
      <div class="row">

        <!-- Single Product Area -->
        <c:forEach items="${listProduct}" var="pro">
        <div class="col-12 col-sm-6 col-md-12 col-xl-6">
          <div class="single-product-wrapper">
            <!-- Product Image -->
            <div class="product-img">
<%--              <a href="<%=request.getContextPath()%>/ProductServlet?productId=${pro.productID}&&action=detail"><img src="https://product.hstatic.net/200000065946/product/pro_mau_tu_nhien_ghe_sofa_go_moho_milan_902_2_0482b12840d344e28cca55d43194d57f_grande.jpg" alt=""></a>--%>
<%--              <!-- Hover Thumb -->--%>
<%--              <a href=""><img class="hover-img" src="https://product.hstatic.net/200000065946/product/pro_mau_tu_nhien_noi_that_moho_sofa_milan_902_2_d9b24def5b734661adae0a2f1ed3f1e1_grande.jpg" alt=""></a>--%>
  <a href=""><img style="width: 500px;height: 430px"  src="https://product.hstatic.net/200000065946/product/pro_mau_tu_nhien_noi_that_moho_sofa_milan_902_2_d9b24def5b734661adae0a2f1ed3f1e1_grande.jpg" alt=""></a>

  <a href="<%=request.getContextPath()%>/HomeServlet?productId=${pro.productID}&&action=detail"><img style="width: 500px;height: 430px" class="hover-img" src="<%=request.getContextPath()%>/images/${pro.productImages}" alt="${pro.productName}"></a>

            <%--              <img src="<%=request.getContextPath()%>/images/${pro.productImages}" alt="${pro.productName}"/>--%>
            </div>
            <!-- Product Description -->
            <div class="product-description d-flex align-items-center justify-content-between">
              <!-- Product Meta Data -->
              <div class="product-meta-data">
                <div class="line"></div>
                <p class="product-price">${pro.price}</p>
                <a href="<%=request.getContextPath()%>/views/admin/detail1.jsp">
                  <h6>${pro.productName}</h6>
                </a>
              </div>
              <!-- Ratings & Cart -->
              <div class="ratings-cart text-right">
                <div class="ratings">
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                </div>
                <div class="cart">
                  <a href="<%=request.getContextPath()%>/CartServlet?action=addCart&&productID=${pro.productID} " data-toggle="tooltip" data-placement="left" title="Add to Cart"><img src="<%=request.getContextPath()%>/views/img/core-img/cart.png" alt=""></a>
                </div>
                <div class="like" >
                  <a href="<%=request.getContextPath()%>/LikeProductServlet?action=likeProduct&&productID=${pro.productID}" class="btnlike"><i class="bi bi-suit-heart"></i></a>
                </div>
              </div>
            </div>
          </div>
        </div>
        </c:forEach>
      </div>
    </div>
  </div>

  <!-- Single Product Area -->



  <div class="row">
    <div class="col-12">
      <!-- Pagination -->
      <nav aria-label="navigation">
        <ul class="pagination justify-content-end mt-50">
          <li class="page-item active"><a class="page-link" href="#">01.</a></li>
          <li class="page-item"><a class="page-link" href="#">02.</a></li>
          <li class="page-item"><a class="page-link" href="#">03.</a></li>
          <li class="page-item"><a class="page-link" href="#">04.</a></li>
        </ul>
      </nav>
    </div>
  </div>
</div>
</div>
</div>

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