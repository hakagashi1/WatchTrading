<%-- 
    Document   : Cart
    Created on : Oct 27, 2021, 10:07:45 AM
    Author     : ZenBook
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Aroma Shop - Cart</title>
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
                            <h1>Shopping Cart</h1>
                            <nav aria-label="breadcrumb" class="banner-breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Shopping Cart</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </section>
            <!-- ================ end banner area ================= -->



            <!--================Cart Area =================-->
            <section class="cart_area">
                <div class="container">
                    <div class="cart_inner">
                        <div class="table-responsive">
                            <form action="update-cart" method="post">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col">Product</th>
                                            <th scope="col">Price</th>
                                            <th scope="col">Quantity</th>
                                            <th scope="col">Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${listItems}" var="i">
                                        <tr>
                                            <td>
                                                <div class="media">
                                                    <div class="d-flex" style="height: 100px;">
                                                        <img src="${i.getProduct().getImages().get(0)}" alt="">
                                                    </div>
                                                    <div class="media-body">
                                                        <p>${i.getProduct().getName()}</p>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <h5>$${i.getProduct().getPrice()}</h5>
                                            </td>
                                            <td>
                                                <div class="product_count">
                                                    <input type="text" name="qty-${i.getId()}" id="sst-${i.getId()}" maxlength="12" minlength="1" value="${i.getQuantity()}" title="Quantity:"
                                                           class="input-text qty">
                                                    <button onclick="var result = document.getElementById('sst-${i.getId()}');
                                                            var sst = result.value;
                                                            if (!isNaN(sst))
                                                                result.value++;
                                                            return false;"
                                                            class="increase items-count" type="button"><i class="lnr lnr-chevron-up"></i></button>
                                                    <button onclick="var result = document.getElementById('sst-${i.getId()}');
                                                            var sst = result.value;
                                                            if (!isNaN(sst))
                                                                result.value--;
                                                            return false;"
                                                            class="reduced items-count" type="button"><i class="lnr lnr-chevron-down"></i></button>
                                                </div>
                                            </td>
                                            <td>
                                                <h5>$${i.getProduct().getPrice() * i.getQuantity()}</h5>
                                            </td>
                                            <td>
                                                <a href="delete-cart?id=${i.getId()}">Delete</a>
                                            </td>
                                        </tr>
                                    </c:forEach>

                                    <tr class="bottom_button">
                                        <td>
                                            <input class="button" type="submit" name="button" value="Update Cart" />
                                        </td>
                                        <td>

                                        </td>
                                        <td>

                                        </td>
                                        <td>
                                            <div class="cupon_text d-flex align-items-center">
                                                <input type="text" placeholder="Coupon Code">
                                                <a class="primary-btn" href="#">Apply</a>
                                                <a class="button" href="#">Have a Coupon?</a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>

                                        </td>
                                        <td>

                                        </td>
                                        <td>
                                            <h5>Subtotal</h5>
                                        </td>
                                        <td>
                                            <h5>$${subtotal}</h5>
                                        </td>
                                    </tr>
                                    <tr class="shipping_area">
                                        <td class="d-none d-md-block">

                                        </td>
                                        <td>

                                        </td>
                                        <td>
                                            <h5>Shipping</h5>
                                        </td>
                                        <td>
                                            <div class="shipping_box">
                                                <ul class="list">
                                                    <c:forEach items="${listS}" var="s">
                                                        <li class="${s.active}"><a href="shipping?id=${s.id}">${s.type}: $${s.price}</a></li>
                                                        </c:forEach>
                                                </ul>
                                                <!--                                                <h6>Calculate Shipping <i class="fa fa-caret-down" aria-hidden="true"></i></h6>
                                                                                                <select class="shipping_select">
                                                                                                    <option value="1">Bangladesh</option>
                                                                                                    <option value="2">India</option>
                                                                                                    <option value="4">Pakistan</option>
                                                                                                </select>
                                                                                                <select class="shipping_select">
                                                                                                    <option value="1">Select a State</option>
                                                                                                    <option value="2">Select a State</option>
                                                                                                    <option value="4">Select a State</option>
                                                                                                </select>
                                                                                                <input type="text" placeholder="Postcode/Zipcode">
                                                                                                <a class="gray_btn" href="#">Update Details</a>-->
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="out_button_area">
                                        <td class="d-none-l">

                                        </td>
                                        <td class="">

                                        </td>
                                        <td>

                                        </td>
                                        <td>
                                            <div class="checkout_btn_inner d-flex align-items-center">
                                                <a class="gray_btn" href="category">Continue Shopping</a>
                                                <a class="primary-btn ml-2" href="checkout">Proceed to checkout</a>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!--================End Cart Area =================-->



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
