<%-- 
    Document   : profile
    Created on : Dec 19, 2023, 5:20:39 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">


        <title>bs5 edit profile account details - Bootdey.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css">
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css">
        <style type="text/css">
            body{
                background-color:#f2f6fc;
                color:#69707a;
            }
            .img-account-profile {
                height: 10rem;
            }
            .rounded-circle {
                border-radius: 50% !important;
            }
            .card .card-header {
                font-weight: 500;
            }
            .card-header:first-child {
                border-radius: 0.35rem 0.35rem 0 0;
            }
            .card-header {
                padding: 1rem 1.35rem;
                margin-bottom: 0;
                background-color: rgba(33, 40, 50, 0.03);
                border-bottom: 1px solid rgba(33, 40, 50, 0.125);
            }
            .form-control, .dataTable-input {
                display: block;
                width: 100%;
                padding: 0.875rem 1.125rem;
                font-size: 0.875rem;
                font-weight: 400;
                line-height: 1;
                color: #69707a;
                background-color: #fff;
                background-clip: padding-box;
                border: 1px solid #c5ccd6;
                -webkit-appearance: none;
                -moz-appearance: none;
                appearance: none;
                border-radius: 0.35rem;
                transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
            }

            .nav-borders .nav-link.active {
                color: #0061f2;
                border-bottom-color: #0061f2;
            }
            .nav-borders .nav-link {
                color: #69707a;
                border-bottom-width: 0.125rem;
                border-bottom-style: solid;
                border-bottom-color: transparent;
                padding-top: 0.5rem;
                padding-bottom: 0.5rem;
                padding-left: 0;
                padding-right: 0;
                margin-left: 1rem;
                margin-right: 1rem;
            }
        </style>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <c:set var="user" value="${sessionScope.account}"/>
        <header style="background-color: rgba(0, 0, 0, 0.7); color: white; padding: 10px 0; font-family: Lato, sans-serif">
            <div class="row align-items-center" style="margin: 0">
                <div class="col-lg-2" style="padding: 0px">
                    <div class="logo">
                        <a href="home"><img src="images/logo.png" alt=""></a>
                    </div>
                </div>

                <div class="col-lg-3" style="padding: 0px">
                    <div class="main_menu menu_two menu_position">
                        <nav>
                            <ul>
                                <li>
                                    <a href="home">Home</a>
                                </li>
                                <li>
                                    <a href="home" class="active">Profile</a>
                                </li>
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Contact Us</a></li>

                                <li>
                                    <a href="https://www.bootdey.com/snippets/view/bs5-profile-security-page" target="__blank">Security</a>
                                </li>
                            </ul>
                        </nav>
                    </div>

                </div>
                <div class="col-lg-6" style="padding: 0px; display: flex; justify-content: flex-end; align-items: center">
                    <div class="header_right_info" style="margin-right: 50px">
                        <ul style="text-align: center; height: 100%; width: 100%">

                            <li class="header_wishlist" style="margin-right: 20px">
                                <a href="#">
                                    <i class="fa fa-heart-o" style="color: white"></i>
                                    <span class="item_count">4</span>
                                </a>
                            </li>

                            <li class="mini_cart_wrapper">
                                <a href="javascript:void(0)">
                                    <i class="fa fa-shopping-cart" style="color: white"></i>
                                    <span class="item_count">2</span>
                                </a>

                                <div class="mini_cart mini_cart2">
                                    <div class="cart_gallery">
                                        <div class="cart_item">
                                            <div class="cart_img">
                                                <a href="#"><img src="images/small-product/mini1.png"
                                                                 alt="Perfume"></a>
                                            </div>
                                            <div class="cart_info">
                                                <a href="#">Hugo Boss</a>
                                                <p><span>Rs. 3640</span> X 1</p>
                                            </div>
                                            <div class="cart_remove">
                                                <a href="#"><i class="fa fa-times"></i></a>
                                            </div>
                                        </div>
                                        <div class="cart_item">
                                            <div class="cart_img">
                                                <a href="#"><img src="images/small-product/mini2.png"
                                                                 alt="Perfume"></a>
                                            </div>
                                            <div class="cart_info">
                                                <a href="#">Bvlgari</a>
                                                <p><span>Rs. 8350</span> X 1</p>
                                            </div>
                                            <div class="cart_remove">
                                                <a href="#"><i class="fa fa-times"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mini_cart_table">
                                        <div class="cart_table_border">
                                            <div class="cart_total">
                                                <span>Sub Total :</span>
                                                <span class="price">Rs. 11990</span>
                                            </div>

                                            <div class="cart_total mt-10">
                                                <span>Total :</span>
                                                <span class="price">Rs. 11990</span>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="mini_cart_footer" style="margin-left: 100px">
                                        <div class="cart_button">
                                            <a href="#">View Cart</a>
                                        </div>
                                        <div class="cart_button">
                                            <a href="#">Checkout</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="header_account">
                        <ul>
                            <c:if test="${user!=null}">
                                <li>
                                    <h4 href="profile" style="color: white">Hello, ${user==null ? "": user.fullName}!</h4>
                                </li>
                                <li >
                                    <a id="logout" href="#" onclick="checkLogout()" style="color: white; font-size: 13px; font-weight: 800; text-decoration: underline">
                                        ${user==null ? "": "LOGOUT"}</a>
                                </li>
                            </c:if>
                        </ul>
                    </div>
                </div>
            </div>
        </header>










        <div class="container-xl px-4 mt-4">

            <nav class="nav nav-borders">
                <!--                <a class="nav-link active ms-0" href="https://www.bootdey.com/snippets/view/bs5-edit-profile-account-details" target="__blank">Profile</a>
                                <a class="nav-link" href="https://www.bootdey.com/snippets/view/bs5-profile-billing-page" target="__blank">Billing</a>
                                <a class="nav-link" href="https://www.bootdey.com/snippets/view/bs5-edit-notifications-page" target="__blank">Notifications</a>-->
            </nav>
            <hr class="mt-0 mb-4">
            <div class="row">
                <div class="col-xl-4">

                    <div class="card mb-4 mb-xl-0">
                        <div class="card-header">Profile Picture</div>
                        <div class="card-body text-center">

                            <img class="img-account-profile rounded-circle mb-2" src="http://bootdey.com/img/Content/avatar/avatar1.png" alt>

                            <div class="small font-italic text-muted mb-4">JPG or PNG no larger than 5 MB</div>

                            <button class="btn btn-primary" type="button">Upload new image</button>
                        </div>
                    </div>
                </div>
                <div class="col-xl-8">

                    <div class="card mb-4">
                        <div class="card-header" style="font-weight: 700">YOUR PROFILE</div>
                        <div class="card-body">
                            <form>

                                <div class="mb-3">
                                    <label class="small mb-1" for="inputUsername">Username</label>
                                    <input class="form-control" id="inputUsername" readonly type="text" placeholder="Enter your username" value="${user.userName}">
                                </div>

                                <div class="gx-3 mb-3">
                                    <label class="small mb-1" for="inputFirstName">First name</label>
                                    <input class="form-control" id="inputFirstName" readonly type="text" placeholder="Full Name" value="${user.fullName}">
                                </div>

                                <div class="row gx-3 mb-3">

                                    <div class="col-md-6">
                                        <label class="small mb-1" for="inputOrgName">Role</label>
                                        <c:if test="${user.roleID == 2}">
                                            <input class="form-control" id="inputOrgName" readonly type="text" placeholder="Enter your organization name" value="Customer">
                                        </c:if>
                                        <c:if test="${user.roleID == 1}">
                                            <input class="form-control" id="inputOrgName" readonly type="text" placeholder="Enter your organization name" value="Admin">
                                        </c:if>
                                    </div>

                                    <div class="col-md-6">
                                        <label class="small mb-1" for="inputLocation">Address</label>
                                        <input class="form-control" id="inputLocation" readonly type="text" placeholder="Enter your location" value="${user.address}">
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label class="small mb-1" for="inputEmailAddress">Email address</label>
                                    <input class="form-control" id="inputEmailAddress" readonly type="email" placeholder="Enter your email address" value="name@example.com">
                                </div>

                                <div class="row gx-3 mb-3">

                                    <div class="col-md-6">
                                        <label class="small mb-1" for="inputPhone">Phone number</label>
                                        <input class="form-control" id="inputPhone" readonly type="tel" placeholder="Enter your phone number" value="${user.phone}">
                                    </div>

                                    <div class="col-md-6">
                                        <label class="small mb-1" for="inputBirthday">Birthday</label>
                                        <input class="form-control" id="inputBirthday" readonly type="text" name="birthday" placeholder="Enter your birthday" value="06/10/1988">
                                    </div>
                                </div>

                                <button style="margin-top: 15px;" class="btn btn-primary" type="button">Edit Profile</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <script src="js/main.js" type="text/javascript"></script>
    </body>
</html>