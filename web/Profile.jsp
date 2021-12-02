<%-- 
    Document   : Profile
    Created on : Oct 31, 2021, 4:01:10 PM
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
        <title>Aroma Shop - Profile</title>
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
                            <h1>Profile</h1>
                            <nav aria-label="breadcrumb" class="banner-breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="home">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Account</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </section>
            <!-- ================ end banner area ================= -->

            <!--================Login Box Area =================-->
        <section class="login_box_area section-margin">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="login_form_inner">
                            <h3>User Information</h3>
                            <form action="update-user?id=${user.id}" method="post">
                                <div class="modal-body">
                                    <div class="form-group">
                                        <label for="recipient-name" class="col-form-label">Username: </label>
                                        <input value="${user.user}" type="text" class="form-control" id="product-name" name="user" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="recipient-name" class="col-form-label">First Name:</label>
                                        <input value="${user.first_name}" type="text" class="form-control" id="product-name" name="first" >
                                    </div>
                                    <div class="form-group">
                                        <label for="recipient-name" class="col-form-label">Last Name:</label>
                                        <input value="${user.last_name}" type="text" class="form-control" id="product-name" name="last" >
                                    </div>
                                    <div class="form-group">
                                        <label for="recipient-name" class="col-form-label">Email:</label>
                                        <input value="${user.email}" type="text" class="form-control" id="product-images" name="email" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="recipient-name" class="col-form-label">Telephone:</label>
                                        <input value="${user.telephone}" type="text" class="form-control" id="product-price" name="telephone">
                                    </div>
                                </div>
                                <div class="modal-footer">  
                                    <button type="submit" class="btn btn-primary" value="save">Save</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================End Login Box Area =================-->



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
