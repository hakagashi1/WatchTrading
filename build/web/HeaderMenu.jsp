<%-- 
    Document   : StartHeaderMenu
    Created on : Oct 24, 2021, 4:52:17 PM
    Author     : ZenBook
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<header class="header_area">
    <div class="main_menu">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container">
                <a class="navbar-brand logo_h" href="home"><img src="images/logo.png" alt=""></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                    <ul class="nav navbar-nav menu_nav ml-auto mr-auto">
                        <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
                        <li class="nav-item active submenu dropdown">
                            <a href="category" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                               aria-expanded="false">Shop</a>
                            <ul class="dropdown-menu">
                                <li class="nav-item">
                                    <a class="nav-link" href="category">Shop Watches</a>
                                </li>
                                <c:if test="${sessionScope.acc != null}">
                                    <c:if test="${sessionScope.acc.isSell == true}">
                                        <li class="nav-item">
                                            <a class="nav-link" href="manage">Manage Products</a>
                                        </li>
                                    </c:if>
                                    <li class="nav-item"><a class="nav-link" href="confirmation">Confirmation</a></li>
                                    <li class="nav-item"><a class="nav-link" href="cart">Shopping Cart</a></li>
                                    </c:if>
                            </ul>
                        </li>
                        <li class="nav-item submenu dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                               aria-expanded="false">Pages</a>
                            <ul class="dropdown-menu">
                                <c:if test="${sessionScope.acc != null}">
                                    <li class="nav-item">
                                        <a class="nav-link" href="logout">Logout</a>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.acc == null}">
                                    <li class="nav-item">
                                        <a class="nav-link" href="login">Login</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="register">Register</a>
                                    </li>
                                </c:if>   
                                <c:if test="${sessionScope.acc != null}">
                                    <li class="nav-item">
                                        <a class="nav-link" href="tracking-order">Tracking</a>
                                    </li>
                                </c:if>
                            </ul>
                        </li>
                        <c:if test="${sessionScope.acc.isAdmin == true}">
                            <li class="nav-item">
                                <a class="nav-link" href="#">Account</a>
                            </li>
                        </c:if>
                        <c:if test="${sessionScope.acc != null}">
                            <li class="nav-item">
                                <a class="nav-link" href="profile">Profile</a>
                            </li>
                        </c:if>
                    </ul>

                    <ul class="nav-shop">
                        <li class="nav-item"><button><i class="ti-search"></i></button></li>
                        <li class="nav-item"><button><a href="cart"><i class="ti-shopping-cart"></i></a><span class="nav-shop__circle">${volume}</span></button> </li>
                        <li class="nav-item"><a class="button button-header" href="category">Buy Now</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</header>
