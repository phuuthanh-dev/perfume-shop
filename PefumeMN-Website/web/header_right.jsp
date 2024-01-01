<%-- 
    Document   : refine
    Created on : Dec 20, 2023, 7:55:37 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.text.DecimalFormat" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Perfume | E-Commerce</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css">
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css">
        <link rel="stylesheet" href="css/style.css">
        <style>
            li a:hover {
                color: #f6692a;
            }
            ul li a.active {
                color: #f6692a;
            }

            .li_header {
                color: white;
                margin-left: 50px;
                font-size: 18px;
            }

            .submit-price {
                font-size: 16px;
                background-color: black;
                color: white;
                font-weight: 600;
                padding: 5px 40px;
                border-radius: 20px;
                margin: 10px 0 20px
            }

            .submit-price:hover {
                background-color: rgba(0,0,0,0.3);
                color: black;
                font-weight: 600;
            }
        </style>
    </head>
    <body>
        <div id="header_right">
            <div class="header_top_right">
                <div class="header_right_info">
                    <ul>
                        <li class="user">
                            <c:if test="${sessionScope.account == null}">
                                <a href="login" title="Icon User">
                                    <i class="fa fa-user-circle"></i>
                                </a>
                            </c:if>
                            <c:if test="${sessionScope.account != null && sessionScope.account.roleID!=1}">
                                <a href="profile" title="Icon User">
                                    <i class="fa fa-user-circle"></i>
                                </a>
                            </c:if>
                        </li>
                        <li class="header_wishlist">
                            <a href="viewwishlist">
                                <i class="fa fa-heart-o"></i>
                                <c:if test="${sessionScope.wishList != null && sessionScope.wishListSize != 0}" >
                                    <span class="item_count">
                                        ${sessionScope.wishListSize}
                                    </span>
                                </c:if>
                            </a>
                        </li>
                        <c:if test="${sessionScope.account.roleID==1}">
                            <li class="header_wishlist">
                                <a href="admin">
                                    <i class="fa-solid fa-chalkboard-user"></i>
                                </a>
                            </li>
                        </c:if>
                        <li id="productsCart" class="mini_cart_wrapper">
                            <a href="javascript:void(0)" >
                                <i class="fa fa-shopping-cart"></i>
                                <c:if test="${sessionScope.cart != null && sessionScope.cartSize != 0}" >
                                    <span class="item_count">
                                        ${sessionScope.cartSize}
                                    </span>
                                </c:if>
                            </a>
                            <div class="mini_cart mini_cart2">
                                <div class="cart_gallery" style="max-height: 250px; overflow-y: auto;">
                                    <div >
                                        <c:if test="${sessionScope.cart != null && sessionScope.cartSize != 0}">
                                            <c:forEach items="${sessionScope.listItemsInCart}" var="p">
                                                <div class="cart_item">
                                                    <div class="cart_img">
                                                        <a href="#">
                                                            <img src="${p.product.image[0]}"
                                                                 alt="Perfume">
                                                        </a>
                                                    </div>

                                                    <div class="cart_info">
                                                        <a href="#">${p.product.name}</a>
                                                        <p style="color: black"><span style="color: black">Rs.${p.price}</span> X ${p.quantity}</p>
                                                    </div>

                                                    <div class="cart_remove">
                                                        <button style="padding: 0 5px; border: #fff" value="${p.product.id}" onclick="removeProductCart(this)">
                                                            <i style="color: black" class="fa fa-times"></i>
                                                        </button>
                                                    </div>

                                                </div>
                                            </c:forEach>
                                        </c:if>
                                    </div>
                                    <c:if test="${sessionScope.cart == null || sessionScope.cartSize == 0}">
                                        <span style="color: black" class="header__cart-list--no-cart-msg">Nothing now!</span>
                                        <img src="images/emptycart.png" alt="Emptycart" style=" width: 60%;">
                                    </c:if>
                                </div>
                                <div class="mini_cart_table">
                                    <div class="cart_table_border">
                                        <div class="cart_total">
                                            <span style="color: black">Sub Total :</span>
                                            <span class="price" style="color:grey">Rs.${sessionScope.cart.getTotalPriceWithOutDiscount()}</span>
                                        </div>

                                        <div class="cart_total mt-10">
                                            <span style="color: black">Total :</span>
                                            <span class="price" style="color: black">Rs. ${sessionScope.cart.getTotalMoney()}</span>
                                        </div>

                                    </div>
                                </div>
                                <div class="mini_cart_footer">
                                    <div class="cart_button">
                                        <a href="${sessionScope.account == null ? 'login' : 'viewcart'}">View Cart</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="header_account">
                    <ul>
                        <li class="top_links">
                            <a href="#">
                                <i class="fa fa-cog"></i>
                            </a>
                            <ul class="dropdown_links">
                                <li><a href="profile">My Account</a></li>
                                <li><a href="refine?cid_refine=0">Shopping</a></li>
                            </ul>
                        </li>
                        <c:if test="${sessionScope.account!=null}">
                            <li onclick="change()" style="position: relative; cursor: pointer;">
                                <img src="${sessionScope.imageUser}" width="40px" style="color: white; border-radius: 50% ;border: 2px solid white;">
                                <ul id="avt" class="header_avt" style="margin-top:25px;
                                    position: absolute;
                                    left: -96px ;
                                    background-color: white;
                                    color: black;
                                    padding: 10px;
                                    max-width: 160px;
                                    z-index: 1;
                                    border-radius: 5px;
                                    box-shadow: 0 1px 3.125rem 0 rgba(0, 0, 0, 0.2);">
                                    <li class="option_avt"><a href="#">Checkout</a>
                                    <li class="option_avt"><a href="${sessionScope.account.roleID==1?"admin":"profile"}">My Account</a></li>
                                    <li class="option_avt">

                                        <a id="logout" data-toggle="modal" data-target="#modal_box" href="#" onclick="confirmLogout('modal_box')">
                                            <i class="fa-solid fa-right-from-bracket"></i>
                                            ${sessionScope.account==null ? "": "Logout"}
                                        </a>
                                    </li>
                                </ul>

                            </li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </div>


        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>   
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>
        <script src="js/countdown.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js"></script>
        <script src="js/clickevents.js"></script>

        <script type="text/javascript">
                                            function change() {
                                                var a = document.getElementById("avt");
                                                if (a.style.display === 'none' || a.style.display === '') {
                                                    a.style.display = 'block';
                                                } else {
                                                    a.style.display = 'none';
                                                }
                                            }
        </script>

    </body>
</html>
