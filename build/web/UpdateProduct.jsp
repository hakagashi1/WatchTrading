<%-- 
    Document   : UpdateProduct
    Created on : Oct 26, 2021, 12:21:00 PM
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
        <title>Aroma Shop - Update Product</title>
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
                            <h1>Update Product</h1>
                            <nav aria-label="breadcrumb" class="banner-breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="home">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Update</li>
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
                            <h3>Update Product</h3>
                            <form action="update-product?id=${single.id}" method="post">
                                <div class="modal-body">
                                    <div class="form-group">
                                        <label for="recipient-name" class="col-form-label">Name:</label>
                                        <input value="${single.name}" type="text" class="form-control" id="product-name" name="name" >
                                    </div>
                                    <div class="form-group">
                                        <label for="recipient-name" class="col-form-label">Images:</label>
                                        <input value="${single.images.get(0)}" type="text" class="form-control" id="product-images" name="image">
                                    </div>
                                    <div class="form-group">
                                        <label for="recipient-name" class="col-form-label">Price:</label>
                                        <input value="${single.price}" type="text" class="form-control" id="product-price" name="price">
                                    </div>
                                    <div class="form-group">
                                        <label>Category:</label>
                                        <div class="category-list">
                                            <select name="category" class="form-select" aria-label="Default select example">
                                                <option value="${c.id}">${c.name}</option>
                                                <c:forEach items="${listC}" var="b">
                                                    <option value="${b.id}">${b.name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="form-group">
                                        <label for="recipient-name" class="col-form-label">Quantity:</label>
                                        <input value="${single.quantity}" type="text" class="form-control" id="product-quantity" name="quantity">
                                    </div>
                                    <div class="form-group">
                                        <label for="message-text" class="col-form-label">Details:</label>
                                        <textarea class="form-control" id="product-details" name="details">${single.details}</textarea>
                                    </div>
                                </div>
                                <div class="modal-footer">  
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal" value="Cancel">Cancel</button>
                                    <button type="submit" class="btn btn-primary" value="Add">Add</button>
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
