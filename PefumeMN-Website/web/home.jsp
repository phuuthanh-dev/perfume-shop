<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Perfume | E-Commerce</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css">
        <link rel="stylesheet" href="css/style.css">
    </head>

    <body>
        <div class="off_canvars_overlay"></div>

        <div class="offcanvas_menu offcanvas_two">
            <div class="canvas_open">
                <a href="javascript:void(0)"><i class="fa fa-bars"></i></a>
            </div>
            <div class="offcanvas_menu_wrapper">
                <div class="canvas_close">
                    <a href="javascript:void(0)"><i class="fa fa-times"></i></a>
                </div>
                <div class="header_account">
                    <ul>
                        <li class="top_links">
                            <a href="#">My Account <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown_links">
                                <li><a href="#">Checkout</a></li>
                                <li><a href="#">My Account</a></li>
                                <li><a href="#">Shopping Cart</a></li>
                                <li><a href="#">Wishlist</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

                <div class="header_right_info">
                    <ul>
                        <li class="search_box">
                            <a href="javascript:void(0)"><i class="fa fa-search"></i></a>
                            <div class="search_widget">
                                <form action="#">
                                    <input type="text" placeholder="Search Your Perfume">
                                    <button type="submit"><i class="fa fa-search"></i></button>
                                </form>
                            </div>
                        </li>
                        <li class="header_wishlist">
                            <a href="#"><i class="fa fa-heart-o"></i>
                                <span class="item_count">4</span>
                            </a>
                        </li>
                        <li class="mini_cart_wrapper">
                            <a href="javascript:void(0)">
                                <i class="fa fa-shopping-cart"></i>
                                <span class="item_count">2</span>
                            </a>
                            <div class="mini_cart mini_cart2">
                                <div class="cart_gallery">
                                    <div class="cart_item">
                                        <div class="cart_img">
                                            <a href="#"><img src="images/small-product/mini1.png" alt="Perfume"></a>
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
                                            <a href="#"><img src="images/small-product/mini2.png" alt="Perfume"></a>
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
                                <div class="mini_cart_footer">
                                    <div class="cart_button">
                                        <a href="#">View Cart</a>
                                    </div>
                                    <div class="cart_button">
                                        <a href="#">Checkout</a>
                                    </div>
                                </div>
                            </div>
                            <!-- mini cart ends here -->
                        </li>
                    </ul>
                </div>

                <div id="menu" class="text-left">
                    <ul class="offcanvas_main_menu">
                        <li class="menu-item-has-children active">
                            <a href="#">Home</a>
                            <ul class="sub-menu">
                                <c:forEach items="${requestScope.category}" var="c">

                                    <li><a href="#">${c.name}</a></li>
                                    </c:forEach>
                            </ul>
                        </li>
                        <li class="menu-item-has-children">
                            <a href="#">Brands</a>
                            <ul class="sub-menu">
                                <li class="menu-item-has-children">
                                    <a href="#">Men</a>
                                    <ul class="sub-menu">
                                        <li><a href="#">Versace</a></li>
                                        <li><a href="#">Hugo Boss</a></li>
                                        <li><a href="#">Jaguar</a></li>
                                        <li><a href="#">Armani</a></li>
                                        <li><a href="#">Paco Rabbane</a></li>
                                        <li><a href="#">Ralph Lauren</a></li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="#">Women</a>
                                    <ul class="sub-menu">
                                        <li><a href="#">Bvlgari</a></li>
                                        <li><a href="#">Coach</a></li>
                                        <li><a href="#">Kenzo</a></li>
                                        <li><a href="#">D&G</a></li>
                                        <li><a href="#">Jean Paul Gaultier</a></li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="#">Unisex</a>
                                    <ul class="sub-menu">
                                        <li><a href="#">Ajmal</a></li>
                                        <li><a href="#">Calvin Klein</a></li>
                                        <li><a href="#">The Body Shop</a></li>
                                        <li><a href="#">Lattafa</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item-has-children">
                            <a href="#">My Account</a>
                        </li>
                        <li class="menu-item-has-children">
                            <a href="#">About Us</a>
                        </li>
                        <li class="menu-item-has-children">
                            <a href="#">User</a>
                            <ul class="sub-menu">
                                <li><a href="login">Login In</a></li>
                                <li><a href="register">Sign up</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

                <div class="offcanvas_footer">
                    <span><a href="#"><i class="fa fa-envelope-0"></i>deo@gmail.com</a></span>
                    <ul>
                        <li class="facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li class="twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li class="pinterest"><a href="#"><i class="fa fa-pinterest-p"></i></a></li>
                        <li class="linkedin"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        <li class="google-plus"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                    </ul>
                </div>
            </div>

        </div>


        <header>
            <div class="main_header header_transparent header-mobile-m">
                <div class="header_container sticky-header">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            <div class="col-lg-2">
                                <div class="logo">
                                    <a href="home"><img src="images/logo.png" alt=""></a>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <!-- main-menu starts -->
                                <div class="main_menu menu_two menu_position">
                                    <nav>
                                        <ul>
                                            <li>
                                                <a href="index.html" class="active">Home <i
                                                        class="fa fa-angle-down"></i></a>
                                                <ul class="sub_menu">
                                                    <c:forEach items="${requestScope.category}" var="c">
                                                        <li><a href="#">${c.name}</a></li>
                                                        </c:forEach>
                                                </ul>

                                            </li>

                                            <li class="mega_items">
                                                <a href="#">Brands <i class="fa fa-angle-down"></i></a>
                                                <div class="mega_menu">
                                                    <ul class="mega_menu_inner">
                                                        <li>
                                                            <a href="#">Men</a>
                                                            <ul>
                                                                <li><a href="#">Versace</a></li>
                                                                <li><a href="#">Hugo Boss</a></li>
                                                                <li><a href="#">Jaguar</a></li>
                                                                <li><a href="#">Armani</a></li>
                                                                <li><a href="#">Paco Rabbane</a></li>
                                                                <li><a href="#">Ralph Lauren</a></li>
                                                            </ul>

                                                        </li>
                                                        <li>
                                                            <a href="#">Women</a>
                                                            <ul>
                                                                <li><a href="#">Bvlgari</a></li>
                                                                <li><a href="#">Coach</a></li>
                                                                <li><a href="#">Kenzo</a></li>
                                                                <li><a href="#">D&G</a></li>
                                                                <li><a href="#">Jean Paul Gaultier</a></li>
                                                            </ul>

                                                        </li>
                                                        <li>
                                                            <a href="#">Unisex</a>
                                                            <ul>
                                                                <li><a href="#">Ajmal</a></li>
                                                                <li><a href="#">Calvin Klein</a></li>
                                                                <li><a href="#">The Body Shop</a></li>
                                                                <li><a href="#">Lattafa</a></li>
                                                            </ul>

                                                        </li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li><a href="#">About Us</a></li>
                                            <li><a href="#">Contact Us</a></li>
                                            <li>
                                                <a href="#">User <i class="fa fa-angle-down"></i></a>
                                                <ul class="sub_menu pages">
                                                    <li><a href="login">Login In</a></li>
                                                    <li><a href="register   ">Sign Up</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>

                                <!-- main menu ends -->
                            </div>
                            <div class="col-lg-4">
                                <div class="header_top_right">
                                    <div class="header_right_info">
                                        <ul>
                                            <li class="search_box">
                                                <a href="javascript:void(0)">
                                                    <i class="fa fa-search"></i>
                                                </a>
                                                <div class="search_widget">
                                                    <form action="#">
                                                        <input type="text" placeholder="Search your perfume">
                                                        <button type="submit"><i class="fa fa-search"></i></button>
                                                    </form>
                                                </div>
                                            </li>
                                            <li class="header_wishlist">
                                                <a href="#">
                                                    <i class="fa fa-heart-o"></i>
                                                    <span class="item_count">4</span>
                                                </a>
                                            </li>
                                            <li class="mini_cart_wrapper">
                                                <a href="javascript:void(0)">
                                                    <i class="fa fa-shopping-cart"></i>
                                                    <span class="item_count">2</span>
                                                </a>

                                                <!-- mini cart  -->
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
                                                    <div class="mini_cart_footer">
                                                        <div class="cart_button">
                                                            <a href="#">View Cart</a>
                                                        </div>
                                                        <div class="cart_button">
                                                            <a href="#">Checkout</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- mini cart ends -->
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
                                                    <li><a href="#">Checkout</a></li>
                                                    <li><a href="#">My Account</a></li>
                                                    <li><a href="#">Shopping cart</a></li>
                                                    <li><a href="#">Wishlist</a></li>
                                                </ul>
                                            </li>
                                            <c:if test="${sessionScope.account!=null}">
                                                <li>
                                                    <a href="#" style="color: white">Hello, ${sessionScope.account==null ? "": sessionScope.account.fullName}!</a>
                                                </li>
                                                <li>
                                                    <a href="logout" onclick="checkLogout()" style="color: white; text-decoration: underline">${sessionScope.account==null ? "": "LOGOUT"}</a>
                                                </li>
                                            </c:if>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>


        <!-- slider section starts  -->
        <section class="slider_section slider_section2 mb-66">
            <div class="slider_area owl-carousel">
                <div class="single_slider d-flex align-items-center" data-bgimg="images/slider/slider1.jpg">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-6 offset-lg-6 col-md-6 offset-md-6">
                                <div class="slider_content slider_content2 content_right">
                                    <h1>Men's Collection</h1>
                                    <h2>Wild Stone</h2>
                                    <p>The rich aromatic notes of rosemary and nerolu combined with the sophistication of
                                        tonka beans and white beans and white woods to create the perfect accompaniment for
                                        the suited look.</p>
                                    <a href="#" class="button">Shop Now <i class="fa fa-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="single_slider d-flex align-items-center" data-bgimg="images/slider/slider2.jpg">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6 col-md-7">
                                <div class="slider_content slider_content2 content_left">
                                    <h1>Watch</h1>
                                    <h2>Maison Micallef</h2>
                                    <p>This perfume is a wonderful elixir that heightens both the scents of gourmet Bourbon
                                        vanilla and those refined of tuberose and jasmine. The delightful alliance reminds
                                        of tropical paradise.</p>
                                    <a href="#" class="button">Shop Now <i class="fa fa-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>


        <!-- product area starts -->

        <div class="product_area product_area_two mb-65">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section_title">
                            <h2 style="font-size: 20px;">New Products 2023</h2>
                            <div class="product_tab_btn">
                                <ul class="nav" role="tablist">
                                    <li>
                                        <a href="home1?cid=${0}" class="${cid==0?"active":""}">
                                            ALL
                                        </a>
                                    </li>
                                    <c:forEach items="${requestScope.category}" var="c">
                                        <li>
                                            <a class="${c.id==cid?"active":""}"
                                               href="home1?cid=${c.id}">
                                                ${c.name}
                                            </a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-content">
                    <div class="tab-pane fade show active" id="Men" role="tabpanel">
                        <div class="row">
                            <div class="product_carousel product_column4 owl-carousel">
                                <c:forEach items="${requestScope.products}" var="p">
                                    <div class="col-lg-3">
                                        <article class="single_product">
                                            <figure>
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img">
                                                        <img src="${p.image1}" alt="">
                                                    </a>
                                                    <a href="#" class="secondary_img"  height="270px">
                                                        <img src="${p.image2}" alt="">
                                                    </a>
                                                    <div class="action_links">
                                                        <ul>
                                                            <li class="add_to_cart">
                                                                <a href="#" title="Add to Cart">
                                                                    <i class="fa fa-shopping-cart"></i>
                                                                </a>
                                                            </li>
                                                            <li class="wishlist">
                                                                <a href="#" title="Add to Wishlist">
                                                                    <i class="fa fa-heart-o"></i>
                                                                </a>
                                                            </li>
                                                            <li class="compare">
                                                                <a href="#" title="Add to Compare">
                                                                    <i class="fa fa-random"></i>
                                                                </a>
                                                            </li>
                                                            <li class="quick_button">
                                                                <a href="#" data-toggle="modal" data-target="#modal_box"
                                                                   title="Quick View">
                                                                    <i class="fa fa-eye"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <figcaption class="product_content">
                                                    <h4 class="product_name">
                                                        <a href="#">${p.name}</a>
                                                    </h4>

                                                    <div class="price_box">
                                                        <span class="old_price">Rs. 
                                                            <script>
                                                                document.write((${p.price} * 1.2).toFixed(2));
                                                            </script>
                                                        </span>
                                                        <span class="current_price">Rs. 
                                                            <script>
                                                                document.write(${p.price}.toFixed(2));
                                                            </script>
                                                        </span>
                                                    </div>
                                                    <div class="product_rating">
                                                        <ul>
                                                            <c:set var="numstar" value="${p.starRating}"/>
                                                            <c:forEach begin="1" end="${numstar}" step="1">
                                                                <li>
                                                                    <a href="#" style="color: orange">
                                                                        <i class="fa fa-star"></i>
                                                                    </a>
                                                                </li>
                                                            </c:forEach>
                                                            <c:if test="${numstar != 5}">
                                                                <c:forEach begin="${numstar + 1}" end="5" step="1">
                                                                    <li>
                                                                        <a href="#" style="color: black">
                                                                            <i class="fa fa-star"></i>
                                                                        </a>
                                                                    </li>
                                                                </c:forEach>
                                                            </c:if>
                                                        </ul>
                                                    </div>
                                                </figcaption>
                                            </figure>
                                        </article>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="Women" role="tabpanel">
                        <div class="row">
                            <div class="product_carousel product_column4 owl-carousel">
                                <div class="col-lg-3">
                                    <article class="single_product">
                                        <figure>
                                            <div class="product_thumb">
                                                <a href="#" class="primary_img">
                                                    <img src="images/products/Women/1-1.png" alt="">
                                                </a>
                                                <a href="#" class="secondary_img">
                                                    <img src="images/products/Women/1-2.png" alt="">
                                                </a>
                                                <div class="action_links">
                                                    <ul>
                                                        <li class="add_to_cart">
                                                            <a href="#" title="Add to Cart">
                                                                <i class="fa fa-shopping-cart"></i>
                                                            </a>
                                                        </li>
                                                        <li class="wishlist">
                                                            <a href="#" title="Add to Wishlist">
                                                                <i class="fa fa-heart-o"></i>
                                                            </a>
                                                        </li>
                                                        <li class="compare">
                                                            <a href="#" title="Add to Compare">
                                                                <i class="fa fa-random"></i>
                                                            </a>
                                                        </li>
                                                        <li class="quick_button">
                                                            <a href="#" data-toggle="modal" data-target="#modal_box"
                                                               title="Quick View">
                                                                <i class="fa fa-eye"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <figcaption class="product_content">
                                                <h4 class="product_name">
                                                    <a href="#">Dolce & Gabbana Women The Only</a>
                                                </h4>

                                                <div class="price_box">
                                                    <span class="old_price">Rs. 9500</span>
                                                    <span class="current_price">Rs. 9000</span>
                                                </div>
                                                <div class="product_rating">
                                                    <ul>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </figcaption>
                                        </figure>

                                    </article>
                                </div>
                                <div class="col-lg-3">
                                    <article class="single_product">
                                        <figure>
                                            <div class="product_thumb">
                                                <a href="#" class="primary_img">
                                                    <img src="images/products/Women/2-1.png" alt="">
                                                </a>
                                                <a href="#" class="secondary_img">
                                                    <img src="images/products/Women/2-2.png" alt="">
                                                </a>
                                                <div class="action_links">
                                                    <ul>
                                                        <li class="add_to_cart">
                                                            <a href="#" title="Add to Cart">
                                                                <i class="fa fa-shopping-cart"></i>
                                                            </a>
                                                        </li>
                                                        <li class="wishlist">
                                                            <a href="#" title="Add to Wishlist">
                                                                <i class="fa fa-heart-o"></i>
                                                            </a>
                                                        </li>
                                                        <li class="compare">
                                                            <a href="#" title="Add to Compare">
                                                                <i class="fa fa-random"></i>
                                                            </a>
                                                        </li>
                                                        <li class="quick_button">
                                                            <a href="#" data-toggle="modal" data-target="#modal_box"
                                                               title="Quick View">
                                                                <i class="fa fa-eye"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <figcaption class="product_content">
                                                <h4 class="product_name">
                                                    <a href="#">Michael Kors Women Sexy Amber</a>
                                                </h4>

                                                <div class="price_box">
                                                    <span class="old_price">Rs. 9000</span>
                                                    <span class="current_price">Rs. 8800</span>
                                                </div>
                                                <div class="product_rating">
                                                    <ul>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </figcaption>
                                        </figure>

                                    </article>
                                </div>
                                <div class="col-lg-3">
                                    <article class="single_product">
                                        <figure>
                                            <div class="product_thumb">
                                                <a href="#" class="primary_img">
                                                    <img src="images/products/Women/3-1.png" alt="">
                                                </a>
                                                <a href="#" class="secondary_img">
                                                    <img src="images/products/Women/3-2.png" alt="">
                                                </a>
                                                <div class="action_links">
                                                    <ul>
                                                        <li class="add_to_cart">
                                                            <a href="#" title="Add to Cart">
                                                                <i class="fa fa-shopping-cart"></i>
                                                            </a>
                                                        </li>
                                                        <li class="wishlist">
                                                            <a href="#" title="Add to Wishlist">
                                                                <i class="fa fa-heart-o"></i>
                                                            </a>
                                                        </li>
                                                        <li class="compare">
                                                            <a href="#" title="Add to Compare">
                                                                <i class="fa fa-random"></i>
                                                            </a>
                                                        </li>
                                                        <li class="quick_button">
                                                            <a href="#" data-toggle="modal" data-target="#modal_box"
                                                               title="Quick View">
                                                                <i class="fa fa-eye"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <figcaption class="product_content">
                                                <h4 class="product_name">
                                                    <a href="#">Bvlgari Splendid Jasmin Noir</a>
                                                </h4>

                                                <div class="price_box">
                                                    <span class="old_price">Rs. 8650</span>
                                                    <span class="current_price">Rs. 8250</span>
                                                </div>
                                                <div class="product_rating">
                                                    <ul>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </figcaption>
                                        </figure>

                                    </article>
                                </div>
                                <div class="col-lg-3">
                                    <article class="single_product">
                                        <figure>
                                            <div class="product_thumb">
                                                <a href="#" class="primary_img">
                                                    <img src="images/products/Women/4-1.png" alt="">
                                                </a>
                                                <a href="#" class="secondary_img">
                                                    <img src="images/products/Women/4-2.png" alt="">
                                                </a>
                                                <div class="action_links">
                                                    <ul>
                                                        <li class="add_to_cart">
                                                            <a href="#" title="Add to Cart">
                                                                <i class="fa fa-shopping-cart"></i>
                                                            </a>
                                                        </li>
                                                        <li class="wishlist">
                                                            <a href="#" title="Add to Wishlist">
                                                                <i class="fa fa-heart-o"></i>
                                                            </a>
                                                        </li>
                                                        <li class="compare">
                                                            <a href="#" title="Add to Compare">
                                                                <i class="fa fa-random"></i>
                                                            </a>
                                                        </li>
                                                        <li class="quick_button">
                                                            <a href="#" data-toggle="modal" data-target="#modal_box"
                                                               title="Quick View">
                                                                <i class="fa fa-eye"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <figcaption class="product_content">
                                                <h4 class="product_name">
                                                    <a href="#">Versace Pour Femme Dylan Blue</a>
                                                </h4>

                                                <div class="price_box">
                                                    <span class="old_price">Rs. 8875</span>
                                                    <span class="current_price">Rs. 7987</span>
                                                </div>
                                                <div class="product_rating">
                                                    <ul>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </figcaption>
                                        </figure>

                                    </article>
                                </div>
                                <div class="col-lg-3">
                                    <article class="single_product">
                                        <figure>
                                            <div class="product_thumb">
                                                <a href="#" class="primary_img">
                                                    <img src="images/products/Women/5-1.png" alt="">
                                                </a>
                                                <a href="#" class="secondary_img">
                                                    <img src="images/products/Women/5-2.png" alt="">
                                                </a>
                                                <div class="action_links">
                                                    <ul>
                                                        <li class="add_to_cart">
                                                            <a href="#" title="Add to Cart">
                                                                <i class="fa fa-shopping-cart"></i>
                                                            </a>
                                                        </li>
                                                        <li class="wishlist">
                                                            <a href="#" title="Add to Wishlist">
                                                                <i class="fa fa-heart-o"></i>
                                                            </a>
                                                        </li>
                                                        <li class="compare">
                                                            <a href="#" title="Add to Compare">
                                                                <i class="fa fa-random"></i>
                                                            </a>
                                                        </li>
                                                        <li class="quick_button">
                                                            <a href="#" data-toggle="modal" data-target="#modal_box"
                                                               title="Quick View">
                                                                <i class="fa fa-eye"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <figcaption class="product_content">
                                                <h4 class="product_name">
                                                    <a href="#">Carolina Herrera Women Good Girl</a>
                                                </h4>

                                                <div class="price_box">
                                                    <span class="old_price">Rs. 8705</span>
                                                    <span class="current_price">Rs. 7400</span>
                                                </div>
                                                <div class="product_rating">
                                                    <ul>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </figcaption>
                                        </figure>

                                    </article>
                                </div>
                                <div class="col-lg-3">
                                    <article class="single_product">
                                        <figure>
                                            <div class="product_thumb">
                                                <a href="#" class="primary_img">
                                                    <img src="images/products/Women/6-1.png" alt="">
                                                </a>
                                                <a href="#" class="secondary_img">
                                                    <img src="images/products/Women/6-2.png" alt="">
                                                </a>
                                                <div class="action_links">
                                                    <ul>
                                                        <li class="add_to_cart">
                                                            <a href="#" title="Add to Cart">
                                                                <i class="fa fa-shopping-cart"></i>
                                                            </a>
                                                        </li>
                                                        <li class="wishlist">
                                                            <a href="#" title="Add to Wishlist">
                                                                <i class="fa fa-heart-o"></i>
                                                            </a>
                                                        </li>
                                                        <li class="compare">
                                                            <a href="#" title="Add to Compare">
                                                                <i class="fa fa-random"></i>
                                                            </a>
                                                        </li>
                                                        <li class="quick_button">
                                                            <a href="#" data-toggle="modal" data-target="#modal_box"
                                                               title="Quick View">
                                                                <i class="fa fa-eye"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <figcaption class="product_content">
                                                <h4 class="product_name">
                                                    <a href="#">Jean Paul Gaultier Women Scandal</a>
                                                </h4>

                                                <div class="price_box">
                                                    <span class="old_price">Rs. 7514</span>
                                                    <span class="current_price">Rs. 6900</span>
                                                </div>
                                                <div class="product_rating">
                                                    <ul>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </figcaption>
                                        </figure>

                                    </article>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="Unisex" role="tabpanel">
                        <div class="row">
                            <div class="product_carousel product_column4 owl-carousel">
                                <div class="col-lg-3">
                                    <article class="single_product">
                                        <figure>
                                            <div class="product_thumb">
                                                <a href="#" class="primary_img">
                                                    <img src="images/products/Unisex/1-1.png" alt="">
                                                </a>
                                                <a href="#" class="secondary_img">
                                                    <img src="images/products/Unisex/1-2.png" alt="">
                                                </a>
                                                <div class="action_links">
                                                    <ul>
                                                        <li class="add_to_cart">
                                                            <a href="#" title="Add to Cart">
                                                                <i class="fa fa-shopping-cart"></i>
                                                            </a>
                                                        </li>
                                                        <li class="wishlist">
                                                            <a href="#" title="Add to Wishlist">
                                                                <i class="fa fa-heart-o"></i>
                                                            </a>
                                                        </li>
                                                        <li class="compare">
                                                            <a href="#" title="Add to Compare">
                                                                <i class="fa fa-random"></i>
                                                            </a>
                                                        </li>
                                                        <li class="quick_button">
                                                            <a href="#" data-toggle="modal" data-target="#modal_box"
                                                               title="Quick View">
                                                                <i class="fa fa-eye"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <figcaption class="product_content">
                                                <h4 class="product_name">
                                                    <a href="#">Ajmal Unisex Oudesiere Oriental</a>
                                                </h4>

                                                <div class="price_box">
                                                    <span class="old_price">Rs. 17500</span>
                                                    <span class="current_price">Rs. 8255</span>
                                                </div>
                                                <div class="product_rating">
                                                    <ul>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </figcaption>
                                        </figure>

                                    </article>
                                </div>
                                <div class="col-lg-3">
                                    <article class="single_product">
                                        <figure>
                                            <div class="product_thumb">
                                                <a href="#" class="primary_img">
                                                    <img src="images/products/Unisex/2-1.png" alt="">
                                                </a>
                                                <a href="#" class="secondary_img">
                                                    <img src="images/products/Unisex/2-2.png" alt="">
                                                </a>
                                                <div class="action_links">
                                                    <ul>
                                                        <li class="add_to_cart">
                                                            <a href="#" title="Add to Cart">
                                                                <i class="fa fa-shopping-cart"></i>
                                                            </a>
                                                        </li>
                                                        <li class="wishlist">
                                                            <a href="#" title="Add to Wishlist">
                                                                <i class="fa fa-heart-o"></i>
                                                            </a>
                                                        </li>
                                                        <li class="compare">
                                                            <a href="#" title="Add to Compare">
                                                                <i class="fa fa-random"></i>
                                                            </a>
                                                        </li>
                                                        <li class="quick_button">
                                                            <a href="#" data-toggle="modal" data-target="#modal_box"
                                                               title="Quick View">
                                                                <i class="fa fa-eye"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <figcaption class="product_content">
                                                <h4 class="product_name">
                                                    <a href="#">LOccitane en Provance</a>
                                                </h4>

                                                <div class="price_box">
                                                    <span class="old_price">Rs. 4900</span>
                                                    <span class="current_price">Rs. 4400</span>
                                                </div>
                                                <div class="product_rating">
                                                    <ul>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </figcaption>
                                        </figure>

                                    </article>
                                </div>
                                <div class="col-lg-3">
                                    <article class="single_product">
                                        <figure>
                                            <div class="product_thumb">
                                                <a href="#" class="primary_img">
                                                    <img src="images/products/Unisex/3-1.png" alt="">
                                                </a>
                                                <a href="#" class="secondary_img">
                                                    <img src="images/products/Unisex/3-2.png" alt="">
                                                </a>
                                                <div class="action_links">
                                                    <ul>
                                                        <li class="add_to_cart">
                                                            <a href="#" title="Add to Cart">
                                                                <i class="fa fa-shopping-cart"></i>
                                                            </a>
                                                        </li>
                                                        <li class="wishlist">
                                                            <a href="#" title="Add to Wishlist">
                                                                <i class="fa fa-heart-o"></i>
                                                            </a>
                                                        </li>
                                                        <li class="compare">
                                                            <a href="#" title="Add to Compare">
                                                                <i class="fa fa-random"></i>
                                                            </a>
                                                        </li>
                                                        <li class="quick_button">
                                                            <a href="#" data-toggle="modal" data-target="#modal_box"
                                                               title="Quick View">
                                                                <i class="fa fa-eye"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <figcaption class="product_content">
                                                <h4 class="product_name">
                                                    <a href="#">Ajmal Unisex Perfume</a>
                                                </h4>

                                                <div class="price_box">
                                                    <span class="old_price">Rs. 5600</span>
                                                    <span class="current_price">Rs. 3808</span>
                                                </div>
                                                <div class="product_rating">
                                                    <ul>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </figcaption>
                                        </figure>

                                    </article>
                                </div>
                                <div class="col-lg-3">
                                    <article class="single_product">
                                        <figure>
                                            <div class="product_thumb">
                                                <a href="#" class="primary_img">
                                                    <img src="images/products/Unisex/4-1.png" alt="">
                                                </a>
                                                <a href="#" class="secondary_img">
                                                    <img src="images/products/Unisex/4-2.png" alt="">
                                                </a>
                                                <div class="action_links">
                                                    <ul>
                                                        <li class="add_to_cart">
                                                            <a href="#" title="Add to Cart">
                                                                <i class="fa fa-shopping-cart"></i>
                                                            </a>
                                                        </li>
                                                        <li class="wishlist">
                                                            <a href="#" title="Add to Wishlist">
                                                                <i class="fa fa-heart-o"></i>
                                                            </a>
                                                        </li>
                                                        <li class="compare">
                                                            <a href="#" title="Add to Compare">
                                                                <i class="fa fa-random"></i>
                                                            </a>
                                                        </li>
                                                        <li class="quick_button">
                                                            <a href="#" data-toggle="modal" data-target="#modal_box"
                                                               title="Quick View">
                                                                <i class="fa fa-eye"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <figcaption class="product_content">
                                                <h4 class="product_name">
                                                    <a href="#">Calvin Klein Unisex One Summer</a>
                                                </h4>

                                                <div class="price_box">
                                                    <span class="old_price">Rs. 3500</span>
                                                    <span class="current_price">Rs. 3808</span>
                                                </div>
                                                <div class="product_rating">
                                                    <ul>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </figcaption>
                                        </figure>

                                    </article>
                                </div>
                                <div class="col-lg-3">
                                    <article class="single_product">
                                        <figure>
                                            <div class="product_thumb">
                                                <a href="#" class="primary_img">
                                                    <img src="images/products/Unisex/5-1.png" alt="">
                                                </a>
                                                <a href="#" class="secondary_img">
                                                    <img src="images/products/Unisex/5-2.png" alt="">
                                                </a>
                                                <div class="action_links">
                                                    <ul>
                                                        <li class="add_to_cart">
                                                            <a href="#" title="Add to Cart">
                                                                <i class="fa fa-shopping-cart"></i>
                                                            </a>
                                                        </li>
                                                        <li class="wishlist">
                                                            <a href="#" title="Add to Wishlist">
                                                                <i class="fa fa-heart-o"></i>
                                                            </a>
                                                        </li>
                                                        <li class="compare">
                                                            <a href="#" title="Add to Compare">
                                                                <i class="fa fa-random"></i>
                                                            </a>
                                                        </li>
                                                        <li class="quick_button">
                                                            <a href="#" data-toggle="modal" data-target="#modal_box"
                                                               title="Quick View">
                                                                <i class="fa fa-eye"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <figcaption class="product_content">
                                                <h4 class="product_name">
                                                    <a href="#">The Body Shop Black Musk</a>
                                                </h4>

                                                <div class="price_box">
                                                    <span class="old_price">Rs. 3150</span>
                                                    <span class="current_price">Rs. 2295</span>
                                                </div>
                                                <div class="product_rating">
                                                    <ul>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </figcaption>
                                        </figure>

                                    </article>
                                </div>
                                <div class="col-lg-3">
                                    <article class="single_product">
                                        <figure>
                                            <div class="product_thumb">
                                                <a href="#" class="primary_img">
                                                    <img src="images/products/Unisex/6-1.png" alt="">
                                                </a>
                                                <a href="#" class="secondary_img">
                                                    <img src="images/products/Unisex/6-2.png" alt="">
                                                </a>
                                                <div class="action_links">
                                                    <ul>
                                                        <li class="add_to_cart">
                                                            <a href="#" title="Add to Cart">
                                                                <i class="fa fa-shopping-cart"></i>
                                                            </a>
                                                        </li>
                                                        <li class="wishlist">
                                                            <a href="#" title="Add to Wishlist">
                                                                <i class="fa fa-heart-o"></i>
                                                            </a>
                                                        </li>
                                                        <li class="compare">
                                                            <a href="#" title="Add to Compare">
                                                                <i class="fa fa-random"></i>
                                                            </a>
                                                        </li>
                                                        <li class="quick_button">
                                                            <a href="#" data-toggle="modal" data-target="#modal_box"
                                                               title="Quick View">
                                                                <i class="fa fa-eye"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <figcaption class="product_content">
                                                <h4 class="product_name">
                                                    <a href="#">Lattafa unisex Mahir EDP</a>
                                                </h4>

                                                <div class="price_box">
                                                    <span class="old_price">Rs. 2000</span>
                                                    <span class="current_price">Rs. 1799</span>
                                                </div>
                                                <div class="product_rating">
                                                    <ul>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </figcaption>
                                        </figure>

                                    </article>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>


        <!-- product area ends -->


        <!-- banner area starts -->
        <div class="banner_area mb-66">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4">
                        <figure class="single_banner">
                            <div class="banner_thumb">
                                <a href="#">
                                    <img src="images/banner/banner1.jpg" alt="">
                                </a>
                                <div class="banner_content">
                                    <h3>Sale up to</h3>
                                    <h2>50%</h2>
                                    <p>Perfume <span> & </span> Body Spray</p>
                                </div>
                            </div>
                        </figure>
                    </div>
                    <div class="col-lg-4 col-md-4">
                        <figure class="single_banner">
                            <div class="banner_thumb">
                                <a href="#">
                                    <img src="images/banner/banner2.jpg" alt="">
                                </a>
                                <div class="banner_content">
                                    <h3>Sale up to</h3>
                                    <h2>70%</h2>
                                    <p>Deodrants</p>
                                </div>
                            </div>
                        </figure>
                    </div>
                    <div class="col-lg-4 col-md-4">
                        <figure class="single_banner">
                            <div class="banner_thumb">
                                <a href="#">
                                    <img src="images/banner/banner3.jpg" alt="">
                                </a>
                                <div class="banner_content">
                                    <h3>Sale up to</h3>
                                    <h2>30%</h2>
                                    <p>Cologne</p>
                                </div>
                            </div>
                        </figure>
                    </div>
                </div>
            </div>
        </div>
        <!-- banner area ends -->

        <!-- home section area starts  -->

        <div class="home_section_two color_two mb-70">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-12">
                        <div class="home_section_left">
                            <!-- deals product area starts -->

                            <div class="deals_product_area mb-68">
                                <div class="section_title section_title_style2">
                                    <h2>Hot Deals</h2>
                                </div>
                                <div class="row">
                                    <div class="deals_carousel product_column1 owl-carousel">
                                        <c:set var="hotDeal" value="${requestScope.hotDeal}"/>
                                        <div class="col-lg-3">
                                            <article class="single_product">
                                                <figure>
                                                    <div class="product_thumb">
                                                        <a href="#" class="primary_img">
                                                            <img src="${hotDeal.image1}" alt="">
                                                        </a>
                                                        <a href="#" class="secondary_img">
                                                            <img src="${hotDeal.image2}" alt="">
                                                        </a>
                                                        <div class="action_links">
                                                            <ul>
                                                                <li class="add_to_cart">
                                                                    <a href="#" title="Add to Cart">
                                                                        <i class="fa fa-shopping-cart"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="wishlist">
                                                                    <a href="#" title="Add to Wishlist">
                                                                        <i class="fa fa-heart-o"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="compare">
                                                                    <a href="#" title="Add to Compare">
                                                                        <i class="fa fa-random"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="quick_button">
                                                                    <a href="#" data-toggle="modal" data-target="#modal_box"
                                                                       title="Quick View">
                                                                        <i class="fa fa-eye"></i>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <figcaption class="product_content">
                                                        <!-- for deals timing -->
                                                        <div class="product_timing">
                                                            <div data-countdown="2021/1/15"></div>
                                                        </div>
                                                        <h4 class="product_name">
                                                            <a href="#">${hotDeal.name}</a>
                                                        </h4>

                                                        <div class="price_box">
                                                            <span class="old_price">Rs.
                                                                <script>
                                                                document.write((${hotDeal.price} * 1.2).toFixed(2));
                                                                </script>
                                                            </span>
                                                            <span class="current_price">Rs.${hotDeal.price}</span>
                                                        </div>

                                                    </figcaption>
                                                </figure>

                                            </article>
                                        </div>

                                        <div class="col-lg-3">
                                            <article class="single_product">
                                                <figure>
                                                    <div class="product_thumb">
                                                        <a href="#" class="primary_img">
                                                            <img src="images/Deals/D2-1.png" alt="">
                                                        </a>
                                                        <a href="#" class="secondary_img">
                                                            <img src="images/Deals/D2-2.png" alt="">
                                                        </a>
                                                        <div class="action_links">
                                                            <ul>
                                                                <li class="add_to_cart">
                                                                    <a href="#" title="Add to Cart">
                                                                        <i class="fa fa-shopping-cart"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="wishlist">
                                                                    <a href="#" title="Add to Wishlist">
                                                                        <i class="fa fa-heart-o"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="compare">
                                                                    <a href="#" title="Add to Compare">
                                                                        <i class="fa fa-random"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="quick_button">
                                                                    <a href="#" data-toggle="modal" data-target="#modal_box"
                                                                       title="Quick View">
                                                                        <i class="fa fa-eye"></i>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <figcaption class="product_content">
                                                        <!-- for deals timing -->
                                                        <div class="product_timing">
                                                            <div data-countdown="2021/1/26"></div>
                                                        </div>
                                                        <h4 class="product_name">
                                                            <a href="#">Ralph Lauren Men Polo Blue Bear</a>
                                                        </h4>

                                                        <div class="price_box">
                                                            <span class="old_price">Rs. 7499</span>
                                                            <span class="current_price">Rs. 7300</span>
                                                        </div>

                                                    </figcaption>
                                                </figure>

                                            </article>
                                        </div>

                                        <div class="col-lg-3">
                                            <article class="single_product">
                                                <figure>
                                                    <div class="product_thumb">
                                                        <a href="#" class="primary_img">
                                                            <img src="images/Deals/D3-1.png" alt="">
                                                        </a>
                                                        <a href="#" class="secondary_img">
                                                            <img src="images/Deals/D3-2.png" alt="">
                                                        </a>
                                                        <div class="action_links">
                                                            <ul>
                                                                <li class="add_to_cart">
                                                                    <a href="#" title="Add to Cart">
                                                                        <i class="fa fa-shopping-cart"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="wishlist">
                                                                    <a href="#" title="Add to Wishlist">
                                                                        <i class="fa fa-heart-o"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="compare">
                                                                    <a href="#" title="Add to Compare">
                                                                        <i class="fa fa-random"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="quick_button">
                                                                    <a href="#" data-toggle="modal" data-target="#modal_box"
                                                                       title="Quick View">
                                                                        <i class="fa fa-eye"></i>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <figcaption class="product_content">
                                                        <!-- for deals timing -->
                                                        <div class="product_timing">
                                                            <div data-countdown="2021/1/20"></div>
                                                        </div>
                                                        <h4 class="product_name">
                                                            <a href="#">Bvlgari Man In Black Orient</a>
                                                        </h4>

                                                        <div class="price_box">
                                                            <span class="old_price">Rs. 7499</span>
                                                            <span class="current_price">Rs. 6950</span>
                                                        </div>

                                                    </figcaption>
                                                </figure>

                                            </article>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- deals product area ends -->

                            <!-- small product area starts -->

                            <div class="small_product_area mb-68">
                                <div class="section_title section_title_style2">
                                    <h2>Bodycare</h2>
                                </div>
                                <div class="small_product_container sidebar_product_column1 owl-carousel">
                                    <div class="small_product_list">
                                        <article class="single_product">


                                            <figure>
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img">
                                                        <img src="images/best-product/B1-1.png" alt="">
                                                    </a>
                                                    <a href="#" class="secondary_img"><img
                                                            src="images/best-product/B1-2.png" alt=""></a>
                                                </div>
                                                <figcaption class="product_content">
                                                    <h4 class="product_name">
                                                        <a href="#">Dolce & Gabbana Women</a>
                                                    </h4>
                                                    <div class="product_rating">
                                                        <ul>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="price_box">
                                                        <span class="old_price">Rs. 9999</span>
                                                        <span class="current_price">Rs. 9000</span>
                                                    </div>
                                                </figcaption>
                                            </figure>
                                        </article>
                                        <article class="single_product">


                                            <figure>
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img">
                                                        <img src="images/best-product/B2-1.png" alt="">
                                                    </a>
                                                    <a href="#" class="secondary_img"><img
                                                            src="images/best-product/B2-2.png" alt=""></a>
                                                </div>
                                                <figcaption class="product_content">
                                                    <h4 class="product_name">
                                                        <a href="#">Jean Paul Gaultier</a>
                                                    </h4>
                                                    <div class="product_rating">
                                                        <ul>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="price_box">
                                                        <span class="old_price">Rs. 7999</span>
                                                        <span class="current_price">Rs. 7400</span>
                                                    </div>
                                                </figcaption>
                                            </figure>
                                        </article>
                                        <article class="single_product">


                                            <figure>
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img">
                                                        <img src="images/best-product/B3-1.png" alt="">
                                                    </a>
                                                    <a href="#" class="secondary_img"><img
                                                            src="images/best-product/B3-2.png" alt=""></a>
                                                </div>
                                                <figcaption class="product_content">
                                                    <h4 class="product_name">
                                                        <a href="#">Carolina Harrera Women 212 VIP</a>
                                                    </h4>
                                                    <div class="product_rating">
                                                        <ul>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="price_box">
                                                        <span class="old_price">Rs. 7499</span>
                                                        <span class="current_price">Rs. 6700</span>
                                                    </div>
                                                </figcaption>
                                            </figure>
                                        </article>

                                    </div>

                                    <div class="small_product_list">
                                        <article class="single_product">


                                            <figure>
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img">
                                                        <img src="images/best-product/B4-1.png" alt="">
                                                    </a>
                                                    <a href="#" class="secondary_img"><img
                                                            src="images/best-product/B4-2.png" alt=""></a>
                                                </div>
                                                <figcaption class="product_content">
                                                    <h4 class="product_name">
                                                        <a href="#">Mugler Aura Women</a>
                                                    </h4>
                                                    <div class="product_rating">
                                                        <ul>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="price_box">
                                                        <span class="old_price">Rs. 7999</span>
                                                        <span class="current_price">Rs. 7550</span>
                                                    </div>
                                                </figcaption>
                                            </figure>
                                        </article>
                                        <article class="single_product">


                                            <figure>
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img">
                                                        <img src="images/best-product/B5-1.png" alt="">
                                                    </a>
                                                    <a href="#" class="secondary_img"><img
                                                            src="images/best-product/B5-2.png" alt=""></a>
                                                </div>
                                                <figcaption class="product_content">
                                                    <h4 class="product_name">
                                                        <a href="#">Jimmy Choo Women Fever</a>
                                                    </h4>
                                                    <div class="product_rating">
                                                        <ul>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="price_box">
                                                        <span class="old_price">Rs. 7499</span>
                                                        <span class="current_price">Rs. 7200</span>
                                                    </div>
                                                </figcaption>
                                            </figure>
                                        </article>
                                        <article class="single_product">


                                            <figure>
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img">
                                                        <img src="images/best-product/B6-1.png" alt="">
                                                    </a>
                                                    <a href="#" class="secondary_img"><img
                                                            src="images/best-product/B6-2.png" alt=""></a>
                                                </div>
                                                <figcaption class="product_content">
                                                    <h4 class="product_name">
                                                        <a href="#">Dloce & Gabbana Women </a>
                                                    </h4>
                                                    <div class="product_rating">
                                                        <ul>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="price_box">
                                                        <span class="old_price">Rs. 7499</span>
                                                        <span class="current_price">Rs. 7200</span>
                                                    </div>
                                                </figcaption>
                                            </figure>
                                        </article>

                                    </div>
                                </div>
                            </div>

                            <!-- small product area ends -->

                            <!-- testimonial section starts  -->

                            <div class="testimonial_style_two mb-60 rightleft">
                                <div class="testimonial_container">
                                    <div class="section_title section_title_style2">
                                        <h2>Testimonial</h2>
                                    </div>
                                    <div class="testimonial_sidebar_carousel owl-carousel">
                                        <div class="single_testimonial">
                                            <div class="testimonial_img">
                                                <a href="#"><img src="images/testimonial/testimonial1.jpg" alt=""></a>
                                            </div>
                                            <div class="testimonial_content">
                                                <h4><a href="#">Navnit Kumar</a></h4>
                                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius omnis nam
                                                    eum iusto aspernatur cupiditate, ipsam deleniti labore dolorem saepe
                                                    nostrum exercitationem amet quod harum blanditiis sint atque soluta
                                                    quaerat.</p>
                                            </div>
                                        </div>
                                        <div class="single_testimonial">
                                            <div class="testimonial_img">
                                                <a href="#"><img src="images/testimonial/testimonial2.jpg" alt=""></a>
                                            </div>
                                            <div class="testimonial_content">
                                                <h4><a href="#">Ravi Kumawat</a></h4>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nulla,
                                                    aspernatur fugit obcaecati officia eligendi minus possimus, quae eius ex
                                                    quasi delectus dolorem. Commodi consectetur saepe magnam atque
                                                    reprehenderit suscipit pariatur.

                                                </p>
                                            </div>
                                        </div>
                                        <div class="single_testimonial">
                                            <div class="testimonial_img">
                                                <a href="#"><img src="images/testimonial/testimonial3.jpg" alt=""></a>
                                            </div>
                                            <div class="testimonial_content">
                                                <h4><a href="#">Nilay Hirpara</a></h4>
                                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore
                                                    accusantium quas excepturi, quam explicabo repudiandae vitae quisquam
                                                    ratione voluptatum molestiae exercitationem architecto temporibus eaque
                                                    fugit dolores, rerum laborum, optio itaque.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- testimonial section ends -->

                            <!-- Newsletter section starts -->

                            <div class="newsletter_style2">
                                <div class="newsletter_container">
                                    <div class="section_title section_title_style2">
                                        <h2>Newsletter</h2>
                                    </div>
                                    <div class="subscribe_form">
                                        <form>
                                            <input type="email" autocomplete="off" placeholder="example@gmail.com">
                                            <button>
                                                <i class="fa fa-envelope-o"></i>
                                            </button>
                                        </form>
                                    </div>
                                    <div class="newsletter_content">
                                        <p>Sign up to get news and get 25% off instantly.</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Newsletter section ends -->

                        </div>
                    </div>

                    <div class="col-lg-9 col-md-12">
                        <div class="home_section_right">
                            <!-- product area starts  -->

                            <div class="product_area mb-65">
                                <div class="section_title section_title_style2">
                                    <h2>TOP 5 BEST SELLERS</h2>
                                </div>
                                <div class="row">
                                    <div class="product_carousel product_column3 owl-carousel">
                                        <c:forEach items="${requestScope.productsTopSellers}" var="t">
                                            <div class="col-lg-3">
                                                <article class="single_product">
                                                    <figure>
                                                        <div class="product_thumb">
                                                            <a href="#" class="primary_img">
                                                                <img src="${t.image1}" alt="">
                                                            </a>
                                                            <a href="#" class="secondary_img">
                                                                <img src="${t.image2}" alt="">
                                                            </a>

                                                            <div class="action_links">
                                                                <ul>
                                                                    <li class="add_to_cart">
                                                                        <a href="#" title="Add to Cart">
                                                                            <i class="fa fa-shopping-cart"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="wishlist">
                                                                        <a href="#" title="Add to Wishlist">
                                                                            <i class="fa fa-heart-o"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="compare">
                                                                        <a href="#" title="Add to Compare">
                                                                            <i class="fa fa-random"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="quick_button">
                                                                        <a href="#" data-toggle="modal" data-target="#modal_box"
                                                                           title="Quick View">
                                                                            <i class="fa fa-eye"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <figcaption class="product_content">
                                                            <h4 class="product_name">
                                                                <a href="#">${t.name} </a>
                                                            </h4>
                                                            <div class="${t.starRating}">
                                                                <ul style="display: flex">
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="old_price">Rs.
                                                                    <script>
                                                                        document.write((${t.price} * 1.2).toFixed(2));
                                                                    </script>
                                                                </span>
                                                                <span class="current_price">Rs.${t.price}</span>
                                                            </div>
                                                        </figcaption>
                                                    </figure>
                                                </article>
                                            </div>
                                        </c:forEach>


<!--                                        <div class="col-lg-3">
                                            <article class="single_product">
                                                <figure>
                                                    <div class="product_thumb">
                                                        <a href="#" class="primary_img">
                                                            <img src="images/new-product/N2-1.png" alt="">
                                                        </a>
                                                        <a href="#" class="secondary_img">
                                                            <img src="images/new-product/N2-2.png" alt="">
                                                        </a>

                                                        <div class="action_links">
                                                            <ul>
                                                                <li class="add_to_cart">
                                                                    <a href="#" title="Add to Cart">
                                                                        <i class="fa fa-shopping-cart"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="wishlist">
                                                                    <a href="#" title="Add to Wishlist">
                                                                        <i class="fa fa-heart-o"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="compare">
                                                                    <a href="#" title="Add to Compare">
                                                                        <i class="fa fa-random"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="quick_button">
                                                                    <a href="#" data-toggle="modal" data-target="#modal_box"
                                                                       title="Quick View">
                                                                        <i class="fa fa-eye"></i>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <figcaption class="product_content">
                                                        <h4 class="product_name">
                                                            <a href="#">Coach Women Floral Blush</a>
                                                        </h4>
                                                        <div class="product_rating">
                                                            <ul>
                                                                <li>
                                                                    <a href="#">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="price_box">
                                                            <span class="old_price">Rs. 6999</span>
                                                            <span class="current_price">Rs. 6350</span>
                                                        </div>
                                                    </figcaption>
                                                </figure>
                                            </article>
                                        </div>
                                        <div class="col-lg-3">
                                            <article class="single_product">
                                                <figure>
                                                    <div class="product_thumb">
                                                        <a href="#" class="primary_img">
                                                            <img src="images/new-product/N3.png" alt="">
                                                        </a>
                                                        <a href="#" class="secondary_img">
                                                            <img src="images/new-product/N3.png" alt="">
                                                        </a>

                                                        <div class="action_links">
                                                            <ul>
                                                                <li class="add_to_cart">
                                                                    <a href="#" title="Add to Cart">
                                                                        <i class="fa fa-shopping-cart"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="wishlist">
                                                                    <a href="#" title="Add to Wishlist">
                                                                        <i class="fa fa-heart-o"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="compare">
                                                                    <a href="#" title="Add to Compare">
                                                                        <i class="fa fa-random"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="quick_button">
                                                                    <a href="#" data-toggle="modal" data-target="#modal_box"
                                                                       title="Quick View">
                                                                        <i class="fa fa-eye"></i>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <figcaption class="product_content">
                                                        <h4 class="product_name">
                                                            <a href="#">Versace Women Eros</a>
                                                        </h4>
                                                        <div class="product_rating">
                                                            <ul>
                                                                <li>
                                                                    <a href="#">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="price_box">
                                                            <span class="old_price">Rs. 6500</span>
                                                            <span class="current_price">Rs. 6200</span>
                                                        </div>
                                                    </figcaption>
                                                </figure>
                                            </article>
                                        </div>
                                        <div class="col-lg-3">
                                            <article class="single_product">
                                                <figure>
                                                    <div class="product_thumb">
                                                        <a href="#" class="primary_img">
                                                            <img src="images/new-product/N4-1.png" alt="">
                                                        </a>
                                                        <a href="#" class="secondary_img">
                                                            <img src="images/new-product/N4-2.png" alt="">
                                                        </a>

                                                        <div class="action_links">
                                                            <ul>
                                                                <li class="add_to_cart">
                                                                    <a href="#" title="Add to Cart">
                                                                        <i class="fa fa-shopping-cart"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="wishlist">
                                                                    <a href="#" title="Add to Wishlist">
                                                                        <i class="fa fa-heart-o"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="compare">
                                                                    <a href="#" title="Add to Compare">
                                                                        <i class="fa fa-random"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="quick_button">
                                                                    <a href="#" data-toggle="modal" data-target="#modal_box"
                                                                       title="Quick View">
                                                                        <i class="fa fa-eye"></i>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <figcaption class="product_content">
                                                        <h4 class="product_name">
                                                            <a href="#">Salvatore Ferragamo Women Signorina</a>
                                                        </h4>
                                                        <div class="product_rating">
                                                            <ul>
                                                                <li>
                                                                    <a href="#">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="price_box">
                                                            <span class="old_price">Rs. 7500</span>
                                                            <span class="current_price">Rs. 6150</span>
                                                        </div>
                                                    </figcaption>
                                                </figure>
                                            </article>
                                        </div>
                                        <div class="col-lg-3">
                                            <article class="single_product">
                                                <figure>
                                                    <div class="product_thumb">
                                                        <a href="#" class="primary_img">
                                                            <img src="images/new-product/N5-1.png" alt="">
                                                        </a>
                                                        <a href="#" class="secondary_img">
                                                            <img src="images/new-product/N5-2.png" alt="">
                                                        </a>

                                                        <div class="action_links">
                                                            <ul>
                                                                <li class="add_to_cart">
                                                                    <a href="#" title="Add to Cart">
                                                                        <i class="fa fa-shopping-cart"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="wishlist">
                                                                    <a href="#" title="Add to Wishlist">
                                                                        <i class="fa fa-heart-o"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="compare">
                                                                    <a href="#" title="Add to Compare">
                                                                        <i class="fa fa-random"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="quick_button">
                                                                    <a href="#" data-toggle="modal" data-target="#modal_box"
                                                                       title="Quick View">
                                                                        <i class="fa fa-eye"></i>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <figcaption class="product_content">
                                                        <h4 class="product_name">
                                                            <a href="#">Kenzo Women World</a>
                                                        </h4>
                                                        <div class="product_rating">
                                                            <ul>
                                                                <li>
                                                                    <a href="#">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="price_box">
                                                            <span class="old_price">Rs. 5999</span>
                                                            <span class="current_price">Rs. 5900</span>
                                                        </div>
                                                    </figcaption>
                                                </figure>
                                            </article>
                                        </div>
                                        <div class="col-lg-3">
                                            <article class="single_product">
                                                <figure>
                                                    <div class="product_thumb">
                                                        <a href="#" class="primary_img">
                                                            <img src="images/new-product/N6-1.png" alt="">
                                                        </a>
                                                        <a href="#" class="secondary_img">
                                                            <img src="images/new-product/N6-2.png" alt="">
                                                        </a>

                                                        <div class="action_links">
                                                            <ul>
                                                                <li class="add_to_cart">
                                                                    <a href="#" title="Add to Cart">
                                                                        <i class="fa fa-shopping-cart"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="wishlist">
                                                                    <a href="#" title="Add to Wishlist">
                                                                        <i class="fa fa-heart-o"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="compare">
                                                                    <a href="#" title="Add to Compare">
                                                                        <i class="fa fa-random"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="quick_button">
                                                                    <a href="#" data-toggle="modal" data-target="#modal_box"
                                                                       title="Quick View">
                                                                        <i class="fa fa-eye"></i>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <figcaption class="product_content">
                                                        <h4 class="product_name">
                                                            <a href="#">Kenzo Women World</a>
                                                        </h4>
                                                        <div class="product_rating">
                                                            <ul>
                                                                <li>
                                                                    <a href="#">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="price_box">
                                                            <span class="old_price">Rs. 5999</span>
                                                            <span class="current_price">Rs. 5900</span>
                                                        </div>
                                                    </figcaption>
                                                </figure>
                                            </article>
                                        </div>-->
                                    </div>
                                </div>
                            </div>

                            <!-- product area ends -->

                            <!-- Long banner area starts  -->
                            <div class="banner_area banner_style_two mb-58">
                                <div class="single_banner">
                                    <div class="banner_thumb">
                                        <a href="#">
                                            <img src="images/banner/banner4.png" alt="">

                                        </a>
                                        <div class="banner_content">
                                            <h3 style="color: tomato;">Sale up to </h3>
                                            <h2>45%</h2>
                                            <p>Versace</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Long Banner area ends -->

                            <!-- product section starts  -->
                            <div class="product_area">
                                <div class="section_title section_title_style2">
                                    <h2>On Sale</h2>
                                </div>
                                <div class="row">
                                    <div class="product_carousel product_column3 owl-carousel">
                                        <div class="col-lg-3">
                                            <div class="product_items">
                                                <article class="single_product">
                                                    <figure>
                                                        <div class="product_thumb">
                                                            <a href="#" class="primary_img">
                                                                <img src="images/onsale/D1-1.png" alt="">
                                                            </a>
                                                            <a href="#" class="secondary_img">
                                                                <img src="images/onsale/D1-2.png" alt="">
                                                            </a>

                                                            <div class="action_links">
                                                                <ul>
                                                                    <li class="add_to_cart">
                                                                        <a href="#" title="Add to Cart">
                                                                            <i class="fa fa-shopping-cart"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="wishlist">
                                                                        <a href="#" title="Add to Wishlist">
                                                                            <i class="fa fa-heart-o"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="compare">
                                                                        <a href="#" title="Add to Compare">
                                                                            <i class="fa fa-random"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="quick_button">
                                                                        <a href="#" data-toggle="modal"
                                                                           data-target="#modal_box" title="Quick View">
                                                                            <i class="fa fa-eye"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <figcaption class="product_content">
                                                            <h4 class="product_name">
                                                                <a href="#">Paco Rabbane Pure XS for Her</a>
                                                            </h4>
                                                            <div class="product_rating">
                                                                <ul>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="old_price">Rs. 6550</span>
                                                                <span class="current_price">Rs. 5240</span>
                                                            </div>
                                                        </figcaption>
                                                    </figure>
                                                </article>
                                                <article class="single_product">
                                                    <figure>
                                                        <div class="product_thumb">
                                                            <a href="#" class="primary_img">
                                                                <img src="images/onsale/D2-1.png" alt="">
                                                            </a>
                                                            <a href="#" class="secondary_img">
                                                                <img src="images/onsale/D2-2.png" alt="">
                                                            </a>

                                                            <div class="action_links">
                                                                <ul>
                                                                    <li class="add_to_cart">
                                                                        <a href="#" title="Add to Cart">
                                                                            <i class="fa fa-shopping-cart"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="wishlist">
                                                                        <a href="#" title="Add to Wishlist">
                                                                            <i class="fa fa-heart-o"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="compare">
                                                                        <a href="#" title="Add to Compare">
                                                                            <i class="fa fa-random"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="quick_button">
                                                                        <a href="#" data-toggle="modal"
                                                                           data-target="#modal_box" title="Quick View">
                                                                            <i class="fa fa-eye"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <figcaption class="product_content">
                                                            <h4 class="product_name">
                                                                <a href="#">Paco Rabanne Women Olympea</a>
                                                            </h4>
                                                            <div class="product_rating">
                                                                <ul>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="old_price">Rs. 5999</span>
                                                                <span class="current_price">Rs. 5100</span>
                                                            </div>
                                                        </figcaption>
                                                    </figure>
                                                </article>
                                            </div>
                                        </div>

                                        <div class="col-lg-3">
                                            <div class="product_items">
                                                <article class="single_product">
                                                    <figure>
                                                        <div class="product_thumb">
                                                            <a href="#" class="primary_img">
                                                                <img src="images/onsale/D3-1.png" alt="">
                                                            </a>
                                                            <a href="#" class="secondary_img">
                                                                <img src="images/onsale/D3-2.png" alt="">
                                                            </a>

                                                            <div class="action_links">
                                                                <ul>
                                                                    <li class="add_to_cart">
                                                                        <a href="#" title="Add to Cart">
                                                                            <i class="fa fa-shopping-cart"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="wishlist">
                                                                        <a href="#" title="Add to Wishlist">
                                                                            <i class="fa fa-heart-o"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="compare">
                                                                        <a href="#" title="Add to Compare">
                                                                            <i class="fa fa-random"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="quick_button">
                                                                        <a href="#" data-toggle="modal"
                                                                           data-target="#modal_box" title="Quick View">
                                                                            <i class="fa fa-eye"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <figcaption class="product_content">
                                                            <h4 class="product_name">
                                                                <a href="#">Issey Miyake Women L'Eau</a>
                                                                <div class="product_rating">
                                                                    <ul>
                                                                        <li>
                                                                            <a href="#">
                                                                                <i class="fa fa-star"
                                                                                   aria-hidden="true"></i>
                                                                            </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <i class="fa fa-star"
                                                                                   aria-hidden="true"></i>
                                                                            </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <i class="fa fa-star"
                                                                                   aria-hidden="true"></i>
                                                                            </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <i class="fa fa-star"
                                                                                   aria-hidden="true"></i>
                                                                            </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <i class="fa fa-star"
                                                                                   aria-hidden="true"></i>
                                                                            </a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                                <div class="price_box">
                                                                    <span class="old_price">Rs. 5999</span>
                                                                    <span class="current_price">Rs. 5100</span>
                                                                </div>
                                                        </figcaption>
                                                    </figure>
                                                </article>
                                                <article class="single_product">
                                                    <figure>
                                                        <div class="product_thumb">
                                                            <a href="#" class="primary_img">
                                                                <img src="images/onsale/D4-1.png" alt="">
                                                            </a>
                                                            <a href="#" class="secondary_img">
                                                                <img src="images/onsale/D4-2.png" alt="">
                                                            </a>

                                                            <div class="action_links">
                                                                <ul>
                                                                    <li class="add_to_cart">
                                                                        <a href="#" title="Add to Cart">
                                                                            <i class="fa fa-shopping-cart"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="wishlist">
                                                                        <a href="#" title="Add to Wishlist">
                                                                            <i class="fa fa-heart-o"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="compare">
                                                                        <a href="#" title="Add to Compare">
                                                                            <i class="fa fa-random"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="quick_button">
                                                                        <a href="#" data-toggle="modal"
                                                                           data-target="#modal_box" title="Quick View">
                                                                            <i class="fa fa-eye"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <figcaption class="product_content">
                                                            <h4 class="product_name">
                                                                <a href="#">Paco Rabanne Million</a>
                                                            </h4>
                                                            <div class="product_rating">
                                                                <ul>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="old_price">Rs. 5999</span>
                                                                <span class="current_price">Rs. 5100</span>
                                                            </div>
                                                        </figcaption>
                                                    </figure>
                                                </article>
                                            </div>
                                        </div>

                                        <div class="col-lg-3">
                                            <div class="product_items">
                                                <article class="single_product">
                                                    <figure>
                                                        <div class="product_thumb">
                                                            <a href="#" class="primary_img">
                                                                <img src="images/onsale/D5-1.png" alt="">
                                                            </a>
                                                            <a href="#" class="secondary_img">
                                                                <img src="images/onsale/D5-2.png" alt="">
                                                            </a>

                                                            <div class="action_links">
                                                                <ul>
                                                                    <li class="add_to_cart">
                                                                        <a href="#" title="Add to Cart">
                                                                            <i class="fa fa-shopping-cart"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="wishlist">
                                                                        <a href="#" title="Add to Wishlist">
                                                                            <i class="fa fa-heart-o"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="compare">
                                                                        <a href="#" title="Add to Compare">
                                                                            <i class="fa fa-random"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="quick_button">
                                                                        <a href="#" data-toggle="modal"
                                                                           data-target="#modal_box" title="Quick View">
                                                                            <i class="fa fa-eye"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <figcaption class="product_content">
                                                            <h4 class="product_name">
                                                                <a href="#">Lacoste Women </a> 
                                                            </h4>
                                                            <div class="product_rating">
                                                                <ul>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star"
                                                                               aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star"
                                                                               aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star"
                                                                               aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star"
                                                                               aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star"
                                                                               aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="old_price">Rs. 6000</span>
                                                                <span class="current_price">Rs. 5000</span>
                                                            </div>
                                                        </figcaption>
                                                    </figure>
                                                </article>
                                                <article class="single_product">
                                                    <figure>
                                                        <div class="product_thumb">
                                                            <a href="#" class="primary_img">
                                                                <img src="images/onsale/D6-1.png" alt="">
                                                            </a>
                                                            <a href="#" class="secondary_img">
                                                                <img src="images/onsale/D6-2.png" alt="">
                                                            </a>

                                                            <div class="action_links">
                                                                <ul>
                                                                    <li class="add_to_cart">
                                                                        <a href="#" title="Add to Cart">
                                                                            <i class="fa fa-shopping-cart"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="wishlist">
                                                                        <a href="#" title="Add to Wishlist">
                                                                            <i class="fa fa-heart-o"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="compare">
                                                                        <a href="#" title="Add to Compare">
                                                                            <i class="fa fa-random"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="quick_button">
                                                                        <a href="#" data-toggle="modal"
                                                                           data-target="#modal_box" title="Quick View">
                                                                            <i class="fa fa-eye"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <figcaption class="product_content">
                                                            <h4 class="product_name">
                                                                <a href="#">Narciso Rodiguez For Him</a>
                                                            </h4>
                                                            <div class="product_rating">
                                                                <ul>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="old_price">Rs. 5500</span>
                                                                <span class="current_price">Rs. 5000</span>
                                                            </div>
                                                        </figcaption>
                                                    </figure>
                                                </article>
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                            <div class="product_items">
                                                <article class="single_product">
                                                    <figure>
                                                        <div class="product_thumb">
                                                            <a href="#" class="primary_img">
                                                                <img src="images/onsale/D7-1.png" alt="">
                                                            </a>
                                                            <a href="#" class="secondary_img">
                                                                <img src="images/onsale/D7-2.png" alt="">
                                                            </a>

                                                            <div class="action_links">
                                                                <ul>
                                                                    <li class="add_to_cart">
                                                                        <a href="#" title="Add to Cart">
                                                                            <i class="fa fa-shopping-cart"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="wishlist">
                                                                        <a href="#" title="Add to Wishlist">
                                                                            <i class="fa fa-heart-o"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="compare">
                                                                        <a href="#" title="Add to Compare">
                                                                            <i class="fa fa-random"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="quick_button">
                                                                        <a href="#" data-toggle="modal"
                                                                           data-target="#modal_box" title="Quick View">
                                                                            <i class="fa fa-eye"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <figcaption class="product_content">
                                                            <h4 class="product_name">
                                                                <a href="#">Nina Ricci Women </a>
                                                            </h4>
                                                            <div class="product_rating">
                                                                <ul>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star"
                                                                               aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star"
                                                                               aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star"
                                                                               aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star"
                                                                               aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star"
                                                                               aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="old_price">Rs. 5500</span>
                                                                <span class="current_price">Rs. 5000</span>
                                                            </div>
                                                        </figcaption>
                                                    </figure>
                                                </article>
                                                <article class="single_product">
                                                    <figure>
                                                        <div class="product_thumb">
                                                            <a href="#" class="primary_img">
                                                                <img src="images/onsale/D8-1.png" alt="">
                                                            </a>
                                                            <a href="#" class="secondary_img">
                                                                <img src="images/onsale/D8-2.png" alt="">
                                                            </a>

                                                            <div class="action_links">
                                                                <ul>
                                                                    <li class="add_to_cart">
                                                                        <a href="#" title="Add to Cart">
                                                                            <i class="fa fa-shopping-cart"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="wishlist">
                                                                        <a href="#" title="Add to Wishlist">
                                                                            <i class="fa fa-heart-o"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="compare">
                                                                        <a href="#" title="Add to Compare">
                                                                            <i class="fa fa-random"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="quick_button">
                                                                        <a href="#" data-toggle="modal"
                                                                           data-target="#modal_box" title="Quick View">
                                                                            <i class="fa fa-eye"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <figcaption class="product_content">
                                                            <h4 class="product_name">
                                                                <a href="#">Mercedes Benz Women</a>
                                                            </h4>
                                                            <div class="product_rating">
                                                                <ul>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="old_price">Rs. 5900</span>
                                                                <span class="current_price">Rs. 4838</span>
                                                            </div>
                                                        </figcaption>
                                                    </figure>
                                                </article>
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                            <div class="product_items">
                                                <article class="single_product">
                                                    <figure>
                                                        <div class="product_thumb">
                                                            <a href="#" class="primary_img">
                                                                <img src="images/onsale/D9-1.png" alt="">
                                                            </a>
                                                            <a href="#" class="secondary_img">
                                                                <img src="images/onsale/D9-2.png" alt="">
                                                            </a>

                                                            <div class="action_links">
                                                                <ul>
                                                                    <li class="add_to_cart">
                                                                        <a href="#" title="Add to Cart">
                                                                            <i class="fa fa-shopping-cart"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="wishlist">
                                                                        <a href="#" title="Add to Wishlist">
                                                                            <i class="fa fa-heart-o"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="compare">
                                                                        <a href="#" title="Add to Compare">
                                                                            <i class="fa fa-random"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="quick_button">
                                                                        <a href="#" data-toggle="modal"
                                                                           data-target="#modal_box" title="Quick View">
                                                                            <i class="fa fa-eye"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <figcaption class="product_content">
                                                            <h4 class="product_name">
                                                                <a href="#">Chopard Women Wish</a>
                                                                <div class="product_rating">
                                                                    <ul>
                                                                        <li>
                                                                            <a href="#">
                                                                                <i class="fa fa-star"
                                                                                   aria-hidden="true"></i>
                                                                            </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <i class="fa fa-star"
                                                                                   aria-hidden="true"></i>
                                                                            </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <i class="fa fa-star"
                                                                                   aria-hidden="true"></i>
                                                                            </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <i class="fa fa-star"
                                                                                   aria-hidden="true"></i>
                                                                            </a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <i class="fa fa-star"
                                                                                   aria-hidden="true"></i>
                                                                            </a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                                <div class="price_box">
                                                                    <span class="old_price">Rs. 5500</span>
                                                                    <span class="current_price">Rs. 4950</span>
                                                                </div>
                                                        </figcaption>
                                                    </figure>
                                                </article>
                                                <article class="single_product">
                                                    <figure>
                                                        <div class="product_thumb">
                                                            <a href="#" class="primary_img">
                                                                <img src="images/onsale/D10-1.png" alt="">
                                                            </a>
                                                            <a href="#" class="secondary_img">
                                                                <img src="images/onsale/D10-2.png" alt="">
                                                            </a>

                                                            <div class="action_links">
                                                                <ul>
                                                                    <li class="add_to_cart">
                                                                        <a href="#" title="Add to Cart">
                                                                            <i class="fa fa-shopping-cart"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="wishlist">
                                                                        <a href="#" title="Add to Wishlist">
                                                                            <i class="fa fa-heart-o"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="compare">
                                                                        <a href="#" title="Add to Compare">
                                                                            <i class="fa fa-random"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="quick_button">
                                                                        <a href="#" data-toggle="modal"
                                                                           data-target="#modal_box" title="Quick View">
                                                                            <i class="fa fa-eye"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <figcaption class="product_content">
                                                            <h4 class="product_name">
                                                                <a href="#">Mont Blanc Lady Emblem</a>
                                                            </h4>
                                                            <div class="product_rating">
                                                                <ul>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="old_price">Rs. 4999</span>
                                                                <span class="current_price">Rs. 4500</span>
                                                            </div>
                                                        </figcaption>
                                                    </figure>
                                                </article>
                                            </div>
                                        </div>

                                        <div class="col-lg-3">
                                            <div class="product_items">
                                                <article class="single_product">
                                                    <figure>
                                                        <div class="product_thumb">
                                                            <a href="#" class="primary_img">
                                                                <img src="images/onsale/D11-1.png" alt="">
                                                            </a>
                                                            <a href="#" class="secondary_img">
                                                                <img src="images/onsale/D11-2.png" alt="">
                                                            </a>

                                                            <div class="action_links">
                                                                <ul>
                                                                    <li class="add_to_cart">
                                                                        <a href="#" title="Add to Cart">
                                                                            <i class="fa fa-shopping-cart"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="wishlist">
                                                                        <a href="#" title="Add to Wishlist">
                                                                            <i class="fa fa-heart-o"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="compare">
                                                                        <a href="#" title="Add to Compare">
                                                                            <i class="fa fa-random"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="quick_button">
                                                                        <a href="#" data-toggle="modal"
                                                                           data-target="#modal_box" title="Quick View">
                                                                            <i class="fa fa-eye"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <figcaption class="product_content">
                                                            <h4 class="product_name">
                                                                <a href="#">Jimmy Choo Illicit Flower</a>
                                                            </h4>
                                                            <div class="product_rating">
                                                                <ul>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star"
                                                                               aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star"
                                                                               aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star"
                                                                               aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star"
                                                                               aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star"
                                                                               aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="old_price">Rs. 4999</span>
                                                                <span class="current_price">Rs. 4200</span>
                                                            </div>
                                                        </figcaption>
                                                    </figure>
                                                </article>
                                                <article class="single_product">
                                                    <figure>
                                                        <div class="product_thumb">
                                                            <a href="#" class="primary_img">
                                                                <img src="images/onsale/D12-1.png" alt="">
                                                            </a>
                                                            <a href="#" class="secondary_img">
                                                                <img src="images/onsale/D12-2.png" alt="">
                                                            </a>

                                                            <div class="action_links">
                                                                <ul>
                                                                    <li class="add_to_cart">
                                                                        <a href="#" title="Add to Cart">
                                                                            <i class="fa fa-shopping-cart"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="wishlist">
                                                                        <a href="#" title="Add to Wishlist">
                                                                            <i class="fa fa-heart-o"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="compare">
                                                                        <a href="#" title="Add to Compare">
                                                                            <i class="fa fa-random"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="quick_button">
                                                                        <a href="#" data-toggle="modal"
                                                                           data-target="#modal_box" title="Quick View">
                                                                            <i class="fa fa-eye"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <figcaption class="product_content">
                                                            <h4 class="product_name">
                                                                <a href="#">Bvlgari Women Goldea</a>
                                                            </h4>
                                                            <div class="product_rating">
                                                                <ul>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fa fa-star" aria-hidden="true"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="old_price">Rs. 3999</span>
                                                                <span class="current_price">Rs. 3700</span>
                                                            </div>
                                                        </figcaption>
                                                    </figure>
                                                </article>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="left-right"></div>
                                </div>
                            </div>

                            <!-- product section ends -->
                        </div>
                    </div>

                </div>
            </div>
        </div>


        <!-- home section area ends -->

        <!-- blog section ends -->

        <footer class="footer_widgets color_two">
            <div class="footer_top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-sm-7">
                            <div class="widgets_container contact_us">
                                <div class="footer_logo">
                                    <a href="#"><img src="images/logo.png" alt="Logo"></a>
                                </div>
                                <div class="footer_desc">
                                    <p>Get all types of perfume from us within 2 day delivery. We can even order the
                                        perfumes which are not in our database. To do that kindly send a E-mail to the
                                        company's mail id.</p>
                                </div>
                                <p>
                                    <span>Address :</span> International Business Center, Vesu, Surat, Gujarat
                                </p>
                                <p><span>Email :</span> <a href="#">deo@gmail.com</a></p>
                                <p><span>Phone :</span> <a href="tel: +91 8888884444">+91 8888884444</a> </p>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6 col-sm-5">
                            <div class="widgets_container widget_menu">
                                <h3>Information</h3>
                                <div class="footer_menu">
                                    <ul>
                                        <li><a href="#">About Us</a></li>
                                        <li><a href="#">Prices Drop</a></li>
                                        <li><a href="#">New Products</a></li>
                                        <li><a href="#">Best Sales</a></li>
                                        <li><a href="#">Terms & Conditions</a></li>
                                        <li><a href="#">Gift Certificate</a></li>
                                        <li><a href="#">My Account</a></li>
                                        <li><a href="#">Order History</a></li>
                                        <li><a href="#">Wish List</a></li>
                                        <li><a href="#">Specials</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="widgets_container widgets_p_product">
                                <h3>Featured Products</h3>
                                <div class="small_product_container small_product_column1 owl-carousel">
                                    <div class="small_product_list">
                                        <article class="single_product">
                                            <figure>
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img">
                                                        <img src="images/onsale/D12-1.png" alt="">
                                                    </a>
                                                    <a href="#" class="secondary_img">
                                                        <img src="images/onsale/D12-2.png" alt="">
                                                    </a>


                                                </div>
                                                <figcaption class="product_content">
                                                    <h4 class="product_name">
                                                        <a href="#" style="color: white;">Bvlgari Women Goldea</a>
                                                    </h4>

                                                    <div class="price_box">
                                                        <span class="old_price">Rs. 3999</span>
                                                        <span class="current_price" style="color: white;">Rs. 3700</span>
                                                    </div>
                                                </figcaption>
                                            </figure>
                                        </article>
                                        <article class="single_product">
                                            <figure>
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img">
                                                        <img src="images/onsale/D11-1.png" alt="">
                                                    </a>
                                                    <a href="#" class="secondary_img">
                                                        <img src="images/onsale/D11-2.png" alt="">
                                                    </a>


                                                </div>
                                                <figcaption class="product_content">
                                                    <h4 class="product_name">
                                                        <a href="#" style="color: white;">Jimmy Choo Illicit Flower
                                                        </a>
                                                    </h4>
                                                    <div class="price_box">
                                                        <span class="old_price">Rs. 4999</span>
                                                        <span class="current_price" style="color: white;">Rs.
                                                            4200</span>
                                                    </div>
                                                </figcaption>
                                            </figure>
                                        </article>
                                        <article class="single_product">
                                            <figure>
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img">
                                                        <img src="images/best-product/B5-1.png" alt="">
                                                    </a>
                                                    <a href="#" class="secondary_img">
                                                        <img src="images/best-product/B5-2.png" alt="">
                                                    </a>

                                                </div>
                                                <figcaption class="product_content">
                                                    <h4 class="product_name">
                                                        <a href="#" style="color: white;">Jimmy Choo Women Fever</a>
                                                    </h4>

                                                    <div class="price_box">
                                                        <span class="old_price">Rs. 7499</span>
                                                        <span class="current_price" style="color: white;">Rs. 7200</span>
                                                    </div>
                                                </figcaption>
                                            </figure>
                                        </article>
                                    </div>
                                    <div class="small_product_list">
                                        <article class="single_product">
                                            <figure>
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img">
                                                        <img src="images/best-product/B4-1.png" alt="">
                                                    </a>
                                                    <a href="#" class="secondary_img">
                                                        <img src="images/best-product/B4-2.png" alt="">
                                                    </a>


                                                </div>
                                                <figcaption class="product_content">
                                                    <h4 class="product_name">
                                                        <a href="#" style="color: white;">Mugler Aura Women</a>
                                                    </h4>

                                                    <div class="price_box">
                                                        <span class="old_price">Rs. 7999</span>
                                                        <span class="current_price" style="color: white;">Rs. 7550</span>
                                                    </div>
                                                </figcaption>
                                            </figure>
                                        </article>
                                        <article class="single_product">
                                            <figure>
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img">
                                                        <img src="images/onsale/D1-1.png" alt="">
                                                    </a>
                                                    <a href="#" class="secondary_img">
                                                        <img src="images/onsale/D1-2.png" alt="">
                                                    </a>


                                                </div>
                                                <figcaption class="product_content">
                                                    <h4 class="product_name">
                                                        <a href="#" style="color: white;">Paco Rabbane Pure XS for her
                                                        </a>
                                                    </h4>
                                                    <div class="price_box">
                                                        <span class="old_price">Rs. 6550</span>
                                                        <span class="current_price" style="color: white;">Rs.
                                                            4250</span>
                                                    </div>
                                                </figcaption>
                                            </figure>
                                        </article>
                                        <article class="single_product">
                                            <figure>
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img">
                                                        <img src="images/new-product/N5-1.png" alt="">
                                                    </a>
                                                    <a href="#" class="secondary_img">
                                                        <img src="images/new-product/N5-2.png" alt="">
                                                    </a>


                                                </div>
                                                <figcaption class="product_content">
                                                    <h4 class="product_name">
                                                        <a href="#" style="color: white;">Kenzo Women World</a>
                                                    </h4>

                                                    <div class="price_box">
                                                        <span class="old_price">Rs. 5999</span>
                                                        <span class="current_price" style="color: white;">Rs. 5900</span>
                                                    </div>
                                                </figcaption>
                                            </figure>
                                        </article>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="widgets_container widgets_p_product">
                                <h3>Most Viewed Products</h3>
                                <div class="small_product_container small_product_column1 owl-carousel">
                                    <div class="small_product_list">
                                        <article class="single_product">
                                            <figure>
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img">
                                                        <img src="images/onsale/D12-1.png" alt="">
                                                    </a>
                                                    <a href="#" class="secondary_img">
                                                        <img src="images/onsale/D12-2.png" alt="">
                                                    </a>


                                                </div>
                                                <figcaption class="product_content">
                                                    <h4 class="product_name">
                                                        <a href="#" style="color: white;">Bvlgari Women Goldea</a>
                                                    </h4>

                                                    <div class="price_box">
                                                        <span class="old_price">Rs. 3999</span>
                                                        <span class="current_price" style="color: white;">Rs. 3700</span>
                                                    </div>
                                                </figcaption>
                                            </figure>
                                        </article>
                                        <article class="single_product">
                                            <figure>
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img">
                                                        <img src="images/onsale/D11-1.png" alt="">
                                                    </a>
                                                    <a href="#" class="secondary_img">
                                                        <img src="images/onsale/D11-2.png" alt="">
                                                    </a>


                                                </div>
                                                <figcaption class="product_content">
                                                    <h4 class="product_name">
                                                        <a href="#" style="color: white;">Jimmy Choo Illicit Flower
                                                        </a>
                                                    </h4>
                                                    <div class="price_box">
                                                        <span class="old_price">Rs. 4999</span>
                                                        <span class="current_price" style="color: white;">Rs.
                                                            4200</span>
                                                    </div>
                                                </figcaption>
                                            </figure>
                                        </article>
                                        <article class="single_product">
                                            <figure>
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img">
                                                        <img src="images/best-product/B5-1.png" alt="">
                                                    </a>
                                                    <a href="#" class="secondary_img">
                                                        <img src="images/best-product/B5-2.png" alt="">
                                                    </a>

                                                </div>
                                                <figcaption class="product_content">
                                                    <h4 class="product_name">
                                                        <a href="#" style="color: white;">Jimmy Choo Women Fever</a>
                                                    </h4>

                                                    <div class="price_box">
                                                        <span class="old_price">Rs. 7499</span>
                                                        <span class="current_price" style="color: white;">Rs. 7200</span>
                                                    </div>
                                                </figcaption>
                                            </figure>
                                        </article>
                                    </div>
                                    <div class="small_product_list">
                                        <article class="single_product">


                                            <figure>
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img">
                                                        <img src="images/best-product/B4-1.png" alt="">
                                                    </a>
                                                    <a href="#" class="secondary_img"><img
                                                            src="images/best-product/B4-2.png" alt=""></a>
                                                </div>
                                                <figcaption class="product_content">
                                                    <h4 class="product_name">
                                                        <a href="#" style="color: white;">Mugler Aura Women</a>
                                                    </h4>

                                                    <div class="price_box">
                                                        <span class="old_price">Rs. 7999</span>
                                                        <span class="current_price" style="color: white;">Rs. 7550</span>
                                                    </div>
                                                </figcaption>
                                            </figure>
                                        </article>
                                        <article class="single_product">


                                            <figure>
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img">
                                                        <img src="images/best-product/B5-1.png" alt="">
                                                    </a>
                                                    <a href="#" class="secondary_img"><img
                                                            src="images/best-product/B5-2.png" alt=""></a>
                                                </div>
                                                <figcaption class="product_content">
                                                    <h4 class="product_name">
                                                        <a href="#" style="color: white;">Jimmy Choo Women Fever</a>
                                                    </h4>

                                                    <div class="price_box">
                                                        <span class="old_price">Rs. 7499</span>
                                                        <span class="current_price" style="color: white;">Rs. 7200</span>
                                                    </div>
                                                </figcaption>
                                            </figure>
                                        </article>
                                        <article class="single_product">


                                            <figure>
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img">
                                                        <img src="images/best-product/B6-1.png" alt="">
                                                    </a>
                                                    <a href="#" class="secondary_img"><img
                                                            src="images/best-product/B6-2.png" alt=""></a>
                                                </div>
                                                <figcaption class="product_content">
                                                    <h4 class="product_name">
                                                        <a href="#" style="color: white;">Dloce & Gabbana Women </a>
                                                    </h4>

                                                    <div class="price_box">
                                                        <span class="old_price">Rs. 7499</span>
                                                        <span class="current_price" style="color: white;">Rs. 7200</span>
                                                    </div>
                                                </figcaption>
                                            </figure>
                                        </article>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <!-- footer section starts  -->

            <div class="footer_bottom">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-12 col-md-12">
                            <div class="copyright_area">
                                <p>Copyright &copy; 2021 <a href="#">Perfume Store </a>All right Reserved.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

        <!-- footer section ends -->

        <!-- modal section starts  -->


        <div class="modal fade" id="modal_box" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <button type="button" data-dismiss="modal" aria-label="close" class="close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <div class="modal_body">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-5 col-md-5 col-sm-12">
                                    <div class="modal_tab">
                                        <div class="tab-content product-details-large">
                                            <div class="tab-pane fade show active" id="tab1" role="tabpanel">
                                                <div class="modal_tab_img">
                                                    <a href="#"><img src="images/new-product/N1-1.png" alt=""></a>
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="tab2" role="tabpanel">
                                                <div class="modal_tab_img">
                                                    <a href="#"><img src="images/new-product/N2-1.png" alt=""></a>
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="tab3" role="tabpanel">
                                                <div class="modal_tab_img">
                                                    <a href="#"><img src="images/new-product/N3.png" alt=""></a>
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="tab4" role="tabpanel">
                                                <div class="modal_tab_img">
                                                    <a href="#"><img src="images/new-product/N4-1.png" alt=""></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal_tab_button">
                                            <ul class="nav product_navactive owl-carousel" role="tablist">
                                                <li>
                                                    <a href="#tab1" class="nav-link active" data-toggle="tab" role="tab"
                                                       aria-controls="tab1" aria-selected="false">
                                                        <img src="images/new-product/N1-1.png" alt="">
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#tab2" class="nav-link" data-toggle="tab" role="tab"
                                                       aria-controls="tab2" aria-selected="false">
                                                        <img src="images/new-product/N2-1.png" alt="">
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#tab3" class="nav-link" data-toggle="tab" role="tab"
                                                       aria-controls="tab3" aria-selected="false">
                                                        <img src="images/new-product/N3.png" alt="">
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#tab4" class="nav-link" data-toggle="tab" role="tab"
                                                       aria-controls="tab4" aria-selected="false">
                                                        <img src="images/new-product/N4-1.png" alt="">
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-7 col-md-7 col-sm-12">
                                    <div class="modal_right">
                                        <div class="modal_title mb-10">
                                            <h2>Paco Rabbane Men Invictus</h2>
                                        </div>
                                        <div class="modal_price mb-10">
                                            <span class="new_price">Rs. 7600</span>
                                            <span class="old_price">Rs. 8100</span>
                                        </div>
                                        <div class="modal_description mb-15">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis earum
                                                nesciunt consequatur deleniti nam dicta eligendi iusto quaerat dolores
                                                debitis, est natus omnis consequuntur sequi. Ipsam sint rerum minus eos?</p>
                                        </div>
                                        <div class="variants_selects">
                                            <div class="variants_size">
                                                <h2>Size</h2>
                                                <select class="select_option">
                                                    <option value="1" selected>10ml</option>
                                                    <option value="1">25ml</option>
                                                    <option value="1">50ml</option>
                                                    <option value="1">100ml</option>
                                                    <option value="1">250ml</option>
                                                </select>
                                            </div>
                                            <div class="variants_fragrance">
                                                <h2>Fragrance</h2>
                                                <select class="select_option">
                                                    <option value="1" selected>Rose</option>
                                                    <option value="1">Chocolate</option>
                                                    <option value="1">Sweet</option>
                                                    <option value="1">Fruit</option>
                                                    <option value="1">Intense</option>
                                                </select>
                                            </div>
                                            <div class="modal_add_to_cart">
                                                <form action="#">
                                                    <input type="number" min="1" max="100" step="1" value="1">
                                                    <button type="submit">Add to cart</button>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="modal_social">
                                            <h2>Follow us on</h2>
                                            <ul>
                                                <li class="facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li class="twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li class="pinterest"><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                                <li class="google-plus"><a href="#"><i class="fa fa-google-plus"></i></a>
                                                </li>
                                                <li class="linkedin"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>


        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>
        <script src="js/countdown.js"></script>
        <script src="js/main.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js"></script>
        <script>
                                                                function checkLogout() {
                                                                    confirm('You want to logout?');
                                                                }
        </script>
    </body>

</html>