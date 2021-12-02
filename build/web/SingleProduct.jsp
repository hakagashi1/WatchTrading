<%-- 
    Document   : SingleProduct
    Created on : Oct 23, 2021, 4:08:28 PM
    Author     : ZenBook
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Aroma Shop - Product Details</title>
        <link rel="icon" href="images/Fevicon.png" type="image/png">
        <link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
        <link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
        <link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">
        <link rel="stylesheet" href="vendors/linericon/style.css">
        <link rel="stylesheet" href="vendors/nice-select/nice-select.css">
        <link rel="stylesheet" href="vendors/owl-carousel/owl.theme.default.min.css">
        <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
        <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <!--================ Start Header Menu Area =================-->
        <jsp:include page="HeaderMenu.jsp"></jsp:include>
            <!--================ End Header Menu Area =================-->

            <!-- ================ start banner area ================= -->	
            <section class="blog-banner-area" id="blog">
                <div class="container h-100">
                    <div class="blog-banner">
                        <div class="text-center">
                            <h1>Shop Single</h1>
                            <nav aria-label="breadcrumb" class="banner-breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Shop Single</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </section>
            <!-- ================ end banner area ================= -->


            <!--================Single Product Area =================-->
            <div class="product_image_area">
                <div class="container">
                    <div class="row s_product_inner">
                        <div class="col-lg-6">
                            <div class="owl-carousel owl-theme s_Product_carousel">
                            <c:forEach items="${single.images}" var="i">
                                <div class="single-prd-item">
                                    <img class="img-fluid" src="${i}" alt="">
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="col-lg-5 offset-lg-1">
                        <div class="s_product_text">
                            <h3>${single.name}</h3>
                            <h2>$${single.price}</h2>
                            <ul class="list">
                                <li><a class="active" href="#"><span>Category</span> : Watch</a></li>
                                <li><a href="#"><span>Availibility</span> : In Stock</a></li>
                            </ul>
                            <br>
                            <br>
                            <br>

                            <c:if test="${sessionScope.acc != null}">
                                <div class="product_count">
                                    <form action="add-to-cart?id=${single.getId()}" method="post">
                                        <div class="product_count">
                                            <input type="text" name="qty" id="sst" maxlength="12" minlength="1" value="${i.getQuantity()}" title="Quantity:"
                                                   class="input-text qty">
                                            <button onclick="var result = document.getElementById('sst');
                                                    var sst = result.value;
                                                    if (!isNaN(sst))
                                                        result.value++;
                                                    return false;"
                                                    class="increase items-count" type="button"><i class="lnr lnr-chevron-up"></i></button>
                                            <button onclick="var result = document.getElementById('sst');
                                                    var sst = result.value;
                                                    if (!isNaN(sst))
                                                        result.value--;
                                                    return false;"
                                                    class="reduced items-count" type="button"><i class="lnr lnr-chevron-down"></i></button>
                                        </div>
                                        <input class="button primary-btn" type="submit" name="button" value="Add Cart" />
                                    </form>
                                </div>
                            </c:if>
                            <div class="card_area d-flex align-items-center">
                                <a class="icon_btn" href="#"><i class="lnr lnr lnr-diamond"></i></a>
                                <a class="icon_btn" href="#"><i class="lnr lnr lnr-heart"></i></a>
                            </div>
                            <ul style="list-style-type:square;">
                                <li>Free returns</li>
                                <li>Free shipping</li>
                                <li>Pay in 4 installments of $105</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--================End Single Product Area =================-->

        <!--================Product Description Area =================-->
        <section class="product_description_area">
            <div class="container">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Description</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile"
                           aria-selected="false">Specification</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact"
                           aria-selected="false">Comments</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" id="review-tab" data-toggle="tab" href="#review" role="tab" aria-controls="review"
                           aria-selected="false">Reviews</a>
                    </li>
                </ul>
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <p>${single.details}</p>
                    </div>
                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                        <div class="table-responsive">
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <td>
                                            <h5>Width</h5>
                                        </td>
                                        <td>
                                            <h5>128mm</h5>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5>Height</h5>
                                        </td>
                                        <td>
                                            <h5>508mm</h5>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5>Depth</h5>
                                        </td>
                                        <td>
                                            <h5>85mm</h5>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5>Weight</h5>
                                        </td>
                                        <td>
                                            <h5>52gm</h5>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5>Quality checking</h5>
                                        </td>
                                        <td>
                                            <h5>yes</h5>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5>Freshness Duration</h5>
                                        </td>
                                        <td>
                                            <h5>03days</h5>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5>When packeting</h5>
                                        </td>
                                        <td>
                                            <h5>Without touch of hand</h5>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5>Each Box contains</h5>
                                        </td>
                                        <td>
                                            <h5>60pcs</h5>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="comment_list">
                                    <div class="review_item">
                                        <div class="media">
                                            <div class="d-flex">
                                                <img src="img/product/review-1.png" alt="">
                                            </div>
                                            <div class="media-body">
                                                <h4>Blake Ruiz</h4>
                                                <h5>12th Feb, 2018 at 05:56 pm</h5>
                                                <a class="reply_btn" href="#">Reply</a>
                                            </div>
                                        </div>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                                            dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                                            commodo</p>
                                    </div>
                                    <div class="review_item reply">
                                        <div class="media">
                                            <div class="d-flex">
                                                <img src="img/product/review-2.png" alt="">
                                            </div>
                                            <div class="media-body">
                                                <h4>Blake Ruiz</h4>
                                                <h5>12th Feb, 2018 at 05:56 pm</h5>
                                                <a class="reply_btn" href="#">Reply</a>
                                            </div>
                                        </div>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                                            dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                                            commodo</p>
                                    </div>
                                    <div class="review_item">
                                        <div class="media">
                                            <div class="d-flex">
                                                <img src="img/product/review-3.png" alt="">
                                            </div>
                                            <div class="media-body">
                                                <h4>Blake Ruiz</h4>
                                                <h5>12th Feb, 2018 at 05:56 pm</h5>
                                                <a class="reply_btn" href="#">Reply</a>
                                            </div>
                                        </div>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                                            dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                                            commodo</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <c:if test="${sessionScope.acc != null}">
                                    <div class="review_box">
                                        <h4>Post a comment</h4>
                                        <form class="row contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" id="name" name="name" placeholder="Your Full name">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <input type="email" class="form-control" id="email" name="email" placeholder="Email Address">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" id="number" name="number" placeholder="Phone Number">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <textarea class="form-control" name="message" id="message" rows="1" placeholder="Message"></textarea>
                                                </div>
                                            </div>
                                            <div class="col-md-12 text-right">
                                                <button type="submit" value="submit" class="btn primary-btn">Submit Now</button>
                                            </div>
                                        </form>
                                    </div>
                                </c:if>
                                <c:if test="${sessionScope.acc == null}">
                                    <div class="returning_customer">
                                        <div class="check_title">
                                            <h2>You have an account? <a href="Login.jsp">Click here login to comment</a></h2>
                                        </div>
                                    </div>
                                </c:if>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade show active" id="review" role="tabpanel" aria-labelledby="review-tab">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="row total_rate">
                                    <div class="col-6">
                                        <div class="box_total">
                                            <h5>Overall</h5>
                                            <h4>4.0</h4>
                                            <h6>(03 Reviews)</h6>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="rating_list">
                                            <h3>Based on 3 Reviews</h3>
                                            <ul class="list">
                                                <li><a href="#">5 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                            class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                                <li><a href="#">4 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                            class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                                <li><a href="#">3 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                            class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                                <li><a href="#">2 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                            class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                                <li><a href="#">1 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                            class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="review_list">
                                    <div class="review_item">
                                        <div class="media">
                                            <div class="d-flex">
                                                <img src="img/product/review-1.png" alt="">
                                            </div>
                                            <div class="media-body">
                                                <h4>Blake Ruiz</h4>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                        </div>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                                            dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                                            commodo</p>
                                    </div>
                                    <div class="review_item">
                                        <div class="media">
                                            <div class="d-flex">
                                                <img src="img/product/review-2.png" alt="">
                                            </div>
                                            <div class="media-body">
                                                <h4>Blake Ruiz</h4>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                        </div>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                                            dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                                            commodo</p>
                                    </div>
                                    <div class="review_item">
                                        <div class="media">
                                            <div class="d-flex">
                                                <img src="img/product/review-3.png" alt="">
                                            </div>
                                            <div class="media-body">
                                                <h4>Blake Ruiz</h4>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                        </div>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                                            dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                                            commodo</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <c:if test="${sessionScope.acc != null}">
                                    <div class="review_box">
                                        <h4>Add a Review</h4>
                                        <p>Your Rating:</p>
                                        <ul class="list">
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        </ul>
                                        <p>Outstanding</p>
                                        <form action="#/" class="form-contact form-review mt-3">
                                            <div class="col-md-12 form-group">
                                                <input type="text" class="form-control" id="name" name="cmt" placeholder="Comment"">
                                            </div>
                                            <div class="col-md-12 form-group">
                                                <button type="submit" value="submit" class="button button-login">Post</button>
                                            </div>
                                        </form>
                                    </div>
                                </c:if>
                                <c:if test="${sessionScope.acc == null}">
                                    <div class="returning_customer">
                                        <div class="check_title">
                                            <h2>You have an account? <a href="Login.jsp">Click here login to comment</a></h2>
                                        </div>
                                    </div>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================End Product Description Area =================-->

        <!--================ Start related Product area =================-->  
<!--        <section class="related-product-area">
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
                                    <a href="#" class="title">QUADRO PRESSED MELROSE</a>
                                    <div class="price">$199.00</div>
                                </div>
                            </div>
                            <div class="single-search-product d-flex">
                                <a href="#"><img src="img/product/product-sm-2.png" alt=""></a>
                                <div class="desc">
                                    <a href="#" class="title">QUADRO PRESSED SHEFFIELD</a>
                                    <div class="price">$179.00</div>
                                </div>
                            </div>
                            <div class="single-search-product d-flex">
                                <a href="#"><img src="img/product/product-sm-3.png" alt=""></a>
                                <div class="desc">
                                    <a href="#" class="title">QUADRO PRESSED SHEFFIELD</a>
                                    <div class="price">$179.00</div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-xl-3 mb-4 mb-xl-0">
                        <div class="single-search-product-wrapper">
                            <div class="single-search-product d-flex">
                                <a href="#"><img src="img/product/product-sm-4.png" alt=""></a>
                                <div class="desc">
                                    <a href="#" class="title">QUADRO PRESSED SHEFFIELD</a>
                                    <div class="price">$179.00</div>
                                </div>
                            </div>
                            <div class="single-search-product d-flex">
                                <a href="#"><img src="img/product/product-sm-5.png" alt=""></a>
                                <div class="desc">
                                    <a href="#" class="title">QUADRO PRESSED ASHFIELD</a>
                                    <div class="price">$199.00</div>
                                </div>
                            </div>
                            <div class="single-search-product d-flex">
                                <a href="#"><img src="img/product/product-sm-6.png" alt=""></a>
                                <div class="desc">
                                    <a href="#" class="title">ICONIC MOTION</a>
                                    <div class="price">$199.00</div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-xl-3 mb-4 mb-xl-0">
                        <div class="single-search-product-wrapper">
                            <div class="single-search-product d-flex">
                                <a href="#"><img src="img/product/product-sm-7.png" alt=""></a>
                                <div class="desc">
                                    <a href="#" class="title">ICONIC LINK CERAMIC</a>
                                    <div class="price">$299.00</div>
                                </div>
                            </div>
                            <div class="single-search-product d-flex">
                                <a href="#"><img src="img/product/product-sm-8.png" alt=""></a>
                                <div class="desc">
                                    <a href="#" class="title">ICONIC LINK UNITONE</a>
                                    <div class="price">$229.00</div>
                                </div>
                            </div>
                            <div class="single-search-product d-flex">
                                <a href="#"><img src="img/product/product-sm-9.png" alt=""></a>
                                <div class="desc">
                                    <a href="#" class="title">ICONIC LINK EMERALD</a>
                                    <div class="price">$229.00</div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-xl-3 mb-4 mb-xl-0">
                        <div class="single-search-product-wrapper">
                            <div class="single-search-product d-flex">
                                <a href="#"><img src="img/product/product-sm-1.png" alt=""></a>
                                <div class="desc">
                                    <a href="#" class="title">QUADRO PRESSED MELROSE</a>
                                    <div class="price">$199.00</div>
                                </div>
                            </div>
                            <div class="single-search-product d-flex">
                                <a href="#"><img src="img/product/product-sm-2.png" alt=""></a>
                                <div class="desc">
                                    <a href="#" class="title">QUADRO PRESSED SHEFFIELD</a>
                                    <div class="price">$179.00</div>
                                </div>
                            </div>
                            <div class="single-search-product d-flex">
                                <a href="#"><img src="img/product/product-sm-3.png" alt=""></a>
                                <div class="desc">
                                    <a href="#" class="title">QUADRO PRESSED SHEFFIELD</a>
                                    <div class="price">$179.00</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>-->
        <!--================ end related Product area =================-->  	

        <!--================ Start footer Area  =================-->	
        <jsp:include page="FooterArea.jsp"></jsp:include>
        <!--================ End footer Area  =================-->



        <script src="vendors/jquery/jquery-3.2.1.min.js"></script>
        <script src="vendors/bootstrap/bootstrap.bundle.min.js"></script>
        <script src="vendors/skrollr.min.js"></script>
        <script src="vendors/owl-carousel/owl.carousel.min.js"></script>
        <script src="vendors/nice-select/jquery.nice-select.min.js"></script>
        <script src="vendors/jquery.ajaxchimp.min.js"></script>
        <script src="vendors/mail-script.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
