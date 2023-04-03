<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/23/2022
  Time: 11:38 AM
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
    <title>Amado - Furniture Ecommerce Template | Home</title>

    <!-- Favicon  -->
    <link rel="icon" href="<%=request.getContextPath()%>/views/img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/views/css/core-style.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet"href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <!-- CSS only -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.0/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" /> -->
    <style>
        .single-products-catagory {
            width: 100%;
        }
    </style>

</head>

<body>
<jsp:include page="header.jsp"/>
    <!-- Header Area End -->

    <!-- Product Catagories Area Start -->

    <div class="products-catagories-area clearfix">
        <h3 style="color: rgb(134, 66, 120);">NEW ARRIVALS</h3>
        <div id="listItems">
            <div class="single-products-catagory clearfix">
                <a href="../user/product-details.jsp">
                    <img src="https://product.hstatic.net/200000065946/product/pro_nau_noi_that_moho_ghe_an_go_vline_1_45bc1d6b3e4a4e2c8f126af544a079d3_grande.jpg" alt="">
                    <!-- Hover Content -->
                    <div class="hover-content">
                        <div class="line"></div>
                        <p>From $318</p>
                        <h4>Modern Rocking Chair</h4>
                    </div>
                </a>
            </div>
            <div class="single-products-catagory clearfix">
                <a href="../user/product-details.jsp">
                    <img src="https://product.hstatic.net/200000065946/product/pro_mau_tu_nhien_ghe_an_go_odessa_2_6010a08098c64bd4950858a6219f75c2_grande.jpg" alt="">
                    <!-- Hover Content -->
                    <div class="hover-content">
                        <div class="line"></div>
                        <p>From $318</p>
                        <h4>Modern Rocking Chair</h4>
                    </div>
                </a>
            </div>
            <div class="single-products-catagory clearfix">
                <a href="../user/product-details.jsp">
                    <img src="https://product.hstatic.net/200000065946/product/pro_nau_noi_that_moho_tu_dau_giuong_vline_801_1_569ac1a7e28c44748f4d018e7a7816cc_grande.jpg" alt="">
                    <!-- Hover Content -->
                    <div class="hover-content">
                        <div class="line"></div>
                        <p>From $318</p>
                        <h4>Modern Rocking Chair</h4>
                    </div>
                </a>
            </div>
            <div class="single-products-catagory clearfix">
                <a href="../user/product-details.jsp">
                    <img src="https://product.hstatic.net/200000065946/product/pro_nau_noi_that_moho_tu_quan_ao_hobro_2_canh_1_bd19b43e1ec24ac79b355e28f4b5494f_grande.jpg" alt="">
                    <!-- Hover Content -->
                    <div class="hover-content">
                        <div class="line"></div>
                        <p>From $318</p>
                        <h4>Modern Rocking Chair</h4>
                    </div>
                </a>
            </div>
            <div class="single-products-catagory clearfix">
                <a href="../user/product-details.jsp">
                    <img src="https://product.hstatic.net/200000065946/product/pro_den_noi_that_moho_ban_an_go_nyborg_1_260a21deeddc4d3fb8a2b5c38f0ca3c7_grande.jpg" alt="">
                    <!-- Hover Content -->
                    <div class="hover-content">
                        <div class="line"></div>
                        <p>From $318</p>
                        <h4>Modern Rocking Chair</h4>
                    </div>
                </a>
            </div>
            <div class="single-products-catagory clearfix">
                <a href="../user/product-details.jsp">
                    <img src="https://product.hstatic.net/200000065946/product/img_8937_dce8e87b389b470495ccfeb470359520_grande.png" alt="">
                    <!-- Hover Content -->
                    <div class="hover-content">
                        <div class="line"></div>
                        <p>From $318</p>
                        <h4>Modern Rocking Chair</h4>
                    </div>
                </a>
            </div>
            <div class="single-products-catagory clearfix">
                <a href="../user/product-details.jsp">
                    <img src="https://product.hstatic.net/200000065946/product/img_0511_be5b970bb4114323956cf58e035d2f5d_grande.jpg" alt="">
                    <!-- Hover Content -->
                    <div class="hover-content">
                        <div class="line"></div>
                        <p>From $318</p>
                        <h4>Modern Rocking Chair</h4>
                    </div>
                </a>
            </div>
            <div class="single-products-catagory clearfix">
                <a href="../user/product-details.jsp">
                    <img src="https://truongthang.vn/wp-content/uploads/2022/05/3-1-1.jpg" alt="">
                    <!-- Hover Content -->
                    <div class="hover-content">
                        <div class="line"></div>
                        <p>From $318</p>
                        <h4>Modern Rocking Chair</h4>
                    </div>
                </a>
            </div>
            <div class="single-products-catagory clearfix">
                <a href="../user/product-details.jsp">
                    <img src="http://127.0.0.1:5501/amado-master/img/bg-img/9.jpg" alt="">
                    <!-- Hover Content -->
                    <div class="hover-content">
                        <div class="line"></div>
                        <p>From $318</p>
                        <h4>Modern Rocking Chair</h4>
                    </div>
                </a>
            </div>

            <div class="single-products-catagory clearfix">
                <a href="../user/product-details.jsp">
                    <img src="https://product.hstatic.net/200000065946/product/pro_nau_noi_that_moho_ban_an_vline_75cm_6_16fa8ca29a864401b32892bbabacead1_grande.jpg" alt="">
                    <!-- Hover Content -->
                    <div class="hover-content">
                        <div class="line"></div>
                        <p>From $318</p>
                        <h4>Modern Rocking Chair</h4>
                    </div>
                </a>
            </div>

            <div class="single-products-catagory clearfix">
                <a href="../user/product-details.jsp">
                    <img src="https://product.hstatic.net/200000065946/product/pro_nau_noi_that_moho_ban_an_go_milan_1m25_1_58f07a1618a2498c9254135d2b9d6f6b_grande.jpg" alt="">
                    <!-- Hover Content -->
                    <div class="hover-content">
                        <div class="line"></div>
                        <p>From $318</p>
                        <h4>Modern Rocking Chair</h4>
                    </div>
                </a>
            </div>
            <div class="single-products-catagory clearfix">
                <a href="../user/product-details.jsp">
                    <img src="https://product.hstatic.net/200000065946/product/pro_nau_noi_that_moho_ghe_bang_dai_vline_1_5561393c6ec04a998718ad44ad3a34f3_grande.jpg" alt="">
                    <!-- Hover Content -->
                    <div class="hover-content">
                        <div class="line"></div>
                        <p>From $318</p>
                        <h4>Modern Rocking Chair</h4>
                    </div>
                </a>
            </div>
        </div>
    </div>

</div>
<jsp:include page="footer.jsp"/>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>

</body>

</html>