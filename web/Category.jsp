<%-- 
    Document   : Category
    Created on : Oct 26, 2021, 6:05:40 PM
    Author     : ZenBook
--%>

<%@page import="model.Product"%>
<%@page import="java.util.List"%>
<%@page import="dao.ProductDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Aroma Shop - Category</title>
        <link rel="icon" href="images/Fevicon.png" type="image/png">
        <link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
        <link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
        <link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">
        <link rel="stylesheet" href="vendors/linericon/style.css">
        <link rel="stylesheet" href="vendors/owl-carousel/owl.theme.default.min.css">
        <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
        <link rel="stylesheet" href="vendors/nice-select/nice-select.css">
        <link rel="stylesheet" href="vendors/nouislider/nouislider.min.css">

        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <!--================ Start Header Menu Area =================-->
        <jsp:include page="HeaderMenu.jsp"></jsp:include>
            <!--================ End Header Menu Area =================-->

            <!-- ================ start banner area ================= -->	
            <section class="blog-banner-area" id="category">
                <div class="container h-100">
                    <div class="blog-banner">
                        <div class="text-center">
                            <h1>Shop Category</h1>
                            <nav aria-label="breadcrumb" class="banner-breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active">Shop Category</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </section>
            <!-- ================ end banner area ================= -->


            <!-- ================ category section start ================= -->		  
            <section class="section-margin--small mb-5">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3 col-lg-4 col-md-5">
                            <div class="sidebar-categories">
                                <div class="head">Browse Categories</div>
                                <ul class="main-categories">
                                    <li class="common-filter">
                                        <ul>
                                        <c:forEach items="${listC}" var="c">
                                            <li class="filter-list">
                                                <a href="search-category?id=${c.id}">
                                                    <label for="${c.name.toLowerCase()}">${c.name}<span> (${c.volume})</span>
                                                    </label>
                                                </a>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <!--                        <div class="sidebar-filter">
                                                    <div class="top-filter-head">Product Filters</div>
                                                    <div class="common-filter">
                                                        <div class="head">Brands</div>
                                                        <form action="#">
                                                            <ul>
                                                                <li class="filter-list"><input class="pixel-radio" type="radio" id="apple" name="brand"><label for="apple">Apple<span>(29)</span></label></li>
                                                                <li class="filter-list"><input class="pixel-radio" type="radio" id="asus" name="brand"><label for="asus">Asus<span>(29)</span></label></li>
                                                                <li class="filter-list"><input class="pixel-radio" type="radio" id="gionee" name="brand"><label for="gionee">Gionee<span>(19)</span></label></li>
                                                                <li class="filter-list"><input class="pixel-radio" type="radio" id="micromax" name="brand"><label for="micromax">Micromax<span>(19)</span></label></li>
                                                                <li class="filter-list"><input class="pixel-radio" type="radio" id="samsung" name="brand"><label for="samsung">Samsung<span>(19)</span></label></li>
                                                            </ul>
                                                        </form>
                                                    </div>
                                                    <div class="common-filter">
                                                        <div class="head">Color</div>
                                                        <form action="#">
                                                            <ul>
                                                                <li class="filter-list"><input class="pixel-radio" type="radio" id="black" name="color"><label for="black">Black<span>(29)</span></label></li>
                                                                <li class="filter-list"><input class="pixel-radio" type="radio" id="balckleather" name="color"><label for="balckleather">Black
                                                                        Leather<span>(29)</span></label></li>
                                                                <li class="filter-list"><input class="pixel-radio" type="radio" id="blackred" name="color"><label for="blackred">Black
                                                                        with red<span>(19)</span></label></li>
                                                                <li class="filter-list"><input class="pixel-radio" type="radio" id="gold" name="color"><label for="gold">Gold<span>(19)</span></label></li>
                                                                <li class="filter-list"><input class="pixel-radio" type="radio" id="spacegrey" name="color"><label for="spacegrey">Spacegrey<span>(19)</span></label></li>
                                                            </ul>
                                                        </form>
                                                    </div>
                                                    <div class="common-filter">
                                                        <div class="head">Price</div>
                                                        <div class="price-range-area">
                                                            <div id="price-range"></div>
                                                            <div class="value-wrapper d-flex">
                                                                <div class="price">Price:</div>
                                                                <span>$</span>
                                                                <div id="lower-value"></div>
                                                                <div class="to">to</div>
                                                                <span>$</span>
                                                                <div id="upper-value"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>-->
                    </div>
                    <div class="col-xl-9 col-lg-8 col-md-7">
                        <!-- Start Filter Bar -->
                        <div class="filter-bar d-flex flex-wrap align-items-center">
                            <div class="sorting">
                                <select name="sorting" id="sorting" onchange="sortList1(this)">
                                    <option>Choosing</option>
                                    <option value="1">Price: High to Low</option>
                                    <option value="2">Price: Low to High</option>
                                </select>
                            </div>
                            <script>
                                function sortList1(obj) {
                                    var value = obj.value;
                                    if (value === '1') {
                                        window.location.href("category?sort=1");
                                    } else if (value === '2') {
                                        window.location.href("category?sort=2");
                                    }
                                }
                            </script>
                            <div class="sorting mr-auto">
                                <select id="paging" onchange="paging()">
                                    <option value="0">Show 6</option>
                                    <option value="1">Show 12</option>
                                    <option value="2">Show 18</option>
                                </select>
                            </div>
                            <script>
                                function paging(obj) {
                                    var value = obj.value;
                                    if (value === '') {
                                        
                                    } else if (value === '1') {
                                        
                                    } else if (value === '2') {
                                        
                                    }
                                }
                            </script>
                            <form action="search-txt" method="get">
                                <div>
                                    <div class="input-group filter-bar-search">
                                        <input type="text" name="txt" placeholder="Search">
                                        <div class="input-group-append">
                                            <button type="submit"><i class="ti-search"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!-- End Filter Bar -->
                        <!-- Start Best Seller -->
                        <section class="lattest-product-area pb-40 category-list">
                            <div class="row" id="id01">
                                <c:forEach items="${listP}" var="p">
                                    <div class="col-md-6 col-lg-4">
                                        <div class="card text-center card-product">
                                            <div class="card-product__img">
                                                <img class="card-img" src="${p.images.get(0)}" alt="">
                                                <ul class="card-product__imgOverlay">
                                                    <li><button><a href="single-product?id=${p.id}"><i class="ti-search"></i></button></li>
                                                            <c:if test="${sessionScope.acc != null}">
                                                        <li>
                                                            <button><a href="add-to-cart?id=${p.id}"><i class="ti-shopping-cart"></i></a></button>
                                                        </li>
                                                        <li>
                                                            <button><i class="ti-heart"></i></button>
                                                        </li>
                                                    </c:if>
                                                </ul>
                                            </div>
                                            <div class="card-body">
                                                <p>Watch</p>
                                                <h4 class="card-product__title"><a href="single-product?id=${p.id}">${p.name}</a></h4>
                                                <p class="card-product__price">$${p.price}</p>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </section>
                        <!-- End Best Seller -->
                    </div>
                </div>
            </div>
        </section>
        <!-- ================ category section end ================= -->		  

        <!--         ================ top product area start ================= 	
                <section class="related-product-area">
                    <div class="container">
                        <div class="section-intro pb-60px">
                            <p>Popular Item in the market</p>
                            <h2>Top <span class="section-intro__style">Product</span></h2>
                        </div>
                        <div class="row mt-30">
                            <div class="col-sm-6 col-xl-3 mb-4 mb-xl-0">
                                <div class="single-search-product-wrapper">
                                    <div class="single-search-product d-flex">
                                        <a href="#"><img src="img/product/product-sm-1.png" alt=""></a>
                                        <div class="desc">
                                            <a href="#" class="title">Gray Coffee Cup</a>
                                            <div class="price">$170.00</div>
                                        </div>
                                    </div>
                                    <div class="single-search-product d-flex">
                                        <a href="#"><img src="img/product/product-sm-2.png" alt=""></a>
                                        <div class="desc">
                                            <a href="#" class="title">Gray Coffee Cup</a>
                                            <div class="price">$170.00</div>
                                        </div>
                                    </div>
                                    <div class="single-search-product d-flex">
                                        <a href="#"><img src="img/product/product-sm-3.png" alt=""></a>
                                        <div class="desc">
                                            <a href="#" class="title">Gray Coffee Cup</a>
                                            <div class="price">$170.00</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
        
                            <div class="col-sm-6 col-xl-3 mb-4 mb-xl-0">
                                <div class="single-search-product-wrapper">
                                    <div class="single-search-product d-flex">
                                        <a href="#"><img src="img/product/product-sm-4.png" alt=""></a>
                                        <div class="desc">
                                            <a href="#" class="title">Gray Coffee Cup</a>
                                            <div class="price">$170.00</div>
                                        </div>
                                    </div>
                                    <div class="single-search-product d-flex">
                                        <a href="#"><img src="img/product/product-sm-5.png" alt=""></a>
                                        <div class="desc">
                                            <a href="#" class="title">Gray Coffee Cup</a>
                                            <div class="price">$170.00</div>
                                        </div>
                                    </div>
                                    <div class="single-search-product d-flex">
                                        <a href="#"><img src="img/product/product-sm-6.png" alt=""></a>
                                        <div class="desc">
                                            <a href="#" class="title">Gray Coffee Cup</a>
                                            <div class="price">$170.00</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
        
                            <div class="col-sm-6 col-xl-3 mb-4 mb-xl-0">
                                <div class="single-search-product-wrapper">
                                    <div class="single-search-product d-flex">
                                        <a href="#"><img src="img/product/product-sm-7.png" alt=""></a>
                                        <div class="desc">
                                            <a href="#" class="title">Gray Coffee Cup</a>
                                            <div class="price">$170.00</div>
                                        </div>
                                    </div>
                                    <div class="single-search-product d-flex">
                                        <a href="#"><img src="img/product/product-sm-8.png" alt=""></a>
                                        <div class="desc">
                                            <a href="#" class="title">Gray Coffee Cup</a>
                                            <div class="price">$170.00</div>
                                        </div>
                                    </div>
                                    <div class="single-search-product d-flex">
                                        <a href="#"><img src="img/product/product-sm-9.png" alt=""></a>
                                        <div class="desc">
                                            <a href="#" class="title">Gray Coffee Cup</a>
                                            <div class="price">$170.00</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
        
                            <div class="col-sm-6 col-xl-3 mb-4 mb-xl-0">
                                <div class="single-search-product-wrapper">
                                    <div class="single-search-product d-flex">
                                        <a href="#"><img src="img/product/product-sm-1.png" alt=""></a>
                                        <div class="desc">
                                            <a href="#" class="title">Gray Coffee Cup</a>
                                            <div class="price">$170.00</div>
                                        </div>
                                    </div>
                                    <div class="single-search-product d-flex">
                                        <a href="#"><img src="img/product/product-sm-2.png" alt=""></a>
                                        <div class="desc">
                                            <a href="#" class="title">Gray Coffee Cup</a>
                                            <div class="price">$170.00</div>
                                        </div>
                                    </div>
                                    <div class="single-search-product d-flex">
                                        <a href="#"><img src="img/product/product-sm-3.png" alt=""></a>
                                        <div class="desc">
                                            <a href="#" class="title">Gray Coffee Cup</a>
                                            <div class="price">$170.00</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                 ================ top product area end ================= 		-->

        <!-- ================ Subscribe section start ================= -->		  
        <section class="subscribe-position">
            <div class="container">
                <div class="subscribe text-center">
                    <h3 class="subscribe__title">Get Update From Anywhere</h3>
                    <p>Bearing Void gathering light light his eavening unto dont afraid</p>
                    <div id="mc_embed_signup">
                        <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="subscribe-form form-inline mt-5 pt-1">
                            <div class="form-group ml-sm-auto">
                                <input class="form-control mb-1" type="email" name="EMAIL" placeholder="Enter your email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '" >
                                <div class="info"></div>
                            </div>
                            <button class="button button-subscribe mr-auto mb-1" type="submit">Subscribe Now</button>
                            <div style="position: absolute; left: -5000px;">
                                <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
                            </div>

                        </form>
                    </div>

                </div>
            </div>
        </section>
        <!-- ================ Subscribe section end ================= -->		  


        <!--================ Start footer Area  =================-->	
        <jsp:include page="FooterArea.jsp"></jsp:include>
        <!--================ End footer Area  =================-->



        <script src="vendors/jquery/jquery-3.2.1.min.js"></script>
        <script src="vendors/bootstrap/bootstrap.bundle.min.js"></script>
        <script src="vendors/skrollr.min.js"></script>
        <script src="vendors/owl-carousel/owl.carousel.min.js"></script>
        <script src="vendors/nice-select/jquery.nice-select.min.js"></script>
        <script src="vendors/nouislider/nouislider.min.js"></script>
        <script src="vendors/jquery.ajaxchimp.min.js"></script>
        <script src="vendors/mail-script.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>