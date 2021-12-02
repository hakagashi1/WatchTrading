<%-- 
    Document   : Register
    Created on : Oct 24, 2021, 5:13:15 PM
    Author     : ZenBook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Aroma Shop - Register</title>
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
                            <h1>Register</h1>
                            <nav aria-label="breadcrumb" class="banner-breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="home">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Register</li>
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
                            <div class="login_box_img">
                                <div class="hover">
                                    <h4>Already have an account?</h4>
                                    <p>There are advances being made in science and technology everyday, and a good example of this is the</p>
                                    <a class="button button-account" href="login">Login Now</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="login_form_inner register_form_inner">
                                <h3>Create an account</h3>
                                <form class="row login_form" action="register" id="register_form" method="post" >
                                    <p class="text-danger">${mess}</p>
                                <div class="col-md-12 form-group">
                                    <input type="text" class="form-control" id="user" name="first" placeholder="First Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'First Name'">
                                </div>
                                <div class="col-md-12 form-group">
                                    <input type="text" class="form-control" id="user" name="last" placeholder="Last Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Last Name'">
                                </div>
                                <div class="col-md-12 form-group">
                                    <input type="text" class="form-control" id="user" name="name" placeholder="Username" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Username'">
                                </div>
                                <div class="col-md-12 form-group">
                                    <input type="text" class="form-control" id="email" name="email" placeholder="Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address'">
                                </div>
                                <div class="col-md-12 form-group">
                                    <input type="password" class="form-control" id="password" name="password" placeholder="Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'">
                                </div>
                                <div class="col-md-12 form-group">
                                    <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" placeholder="Confirm Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Confirm Password'">
                                </div>
                                <div class="col-md-12 form-group">
                                    <input type="text" class="form-control" id="user" name="telephone" placeholder="Telephone" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Telephone'">
                                </div>
                                <div class="col-md-12 form-group" style="display: flex">
                                    <div class="creat_account" style="padding: 20px;">
                                        <input type="checkbox" id="seller" name="seller">
                                        <label for="seller">Seller</label>
                                    </div>                                    
                                </div>

                                <div class="col-md-12 form-group" style="display: flex">
                                    <div class="creat_account" style="padding: 20px;">
                                        <input type="checkbox" id="admin" name="admin">
                                        <label for="admin">Admin</label>
                                    </div>
                                </div>
                                <!--                                <div class="col-md-12 form-group">
                                                                    <div class="creat_account">
                                                                        <input type="checkbox" id="f-option2" name="selector">
                                                                        <label for="f-option2">Keep me logged in</label>
                                                                    </div>
                                                                </div>-->
                                <div class="col-md-12 form-group">
                                    <button type="submit" value="submit" class="button button-register w-100">Register</button>
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
