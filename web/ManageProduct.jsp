<%-- 
    Document   : ManageProduct
    Created on : Oct 25, 2021, 3:13:10 PM
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
        <title>Aroma Shop - Manage Products</title>
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
                            <h1>Manage Products</h1>
                            <nav aria-label="breadcrumb" class="banner-breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="home">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Manage Products</li>
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
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">
                                            Product
                                        </th>
                                        <th scope="col">
                                            Price
                                        </th>
                                        <th scope="col">
                                            <!-- Button trigger modal -->
                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
                                                Add New Product
                                            </button>

                                            <!-- Modal -->
                                            <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel">
                                                                Add New Product
                                                            </h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>

                                                        <form action="add-product" method="post">
                                                            <div class="modal-body">
                                                                <div class="form-group">
                                                                    <label for="recipient-name" class="col-form-label">
                                                                        Name:
                                                                    </label>
                                                                    <input type="text" class="form-control" id="product-name" name="name">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="recipient-name" class="col-form-label">
                                                                        Images:
                                                                    </label>
                                                                    <input type="text" class="form-control" id="product-images" name="image">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="recipient-name" class="col-form-label">
                                                                        Price:
                                                                    </label>
                                                                    <input type="text" class="form-control" id="product-price" name="price">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="recipient-name" class="col-form-label">Category:</label>
                                                                    <div class="category-list">
                                                                        <select name="category">
                                                                            <option value="">Choose Category</option>
                                                                        <c:forEach items="${listC}" var="i">
                                                                            <option value="${i.id}">${i.name}</option>
                                                                        </c:forEach>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <br>
                                                            <div class="form-group">
                                                                <label for="recipient-name" class="col-form-label">
                                                                    Quantity:
                                                                </label>
                                                                <input type="text" class="form-control" id="product-quantity" name="quantity">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="message-text" class="col-form-label">
                                                                    Details:
                                                                </label>
                                                                <textarea class="form-control" id="product-details" name="details"></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">  
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal" value="Cancel">
                                                                Cancel
                                                            </button>
                                                            <button type="submit" class="btn btn-primary" value="Add">
                                                                Add
                                                            </button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${listP}" var="i">
                                    <tr>
                                        <td>
                                            <div class="media">
                                                <div class="d-flex" style="height: 100px;">
                                                    <img src="${i.images.get(0)}" alt="">
                                                </div>
                                                <div class="media-body">
                                                    <p>${i.name}</p>
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <h5>$${i.price}</h5>
                                        </td>
                                        <td>
                                            
                                            <a class="button" href="load-product?id=${i.id}">Update</a>
                                            <a class="button" href="delete-product?id=${i.id}">Delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
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
