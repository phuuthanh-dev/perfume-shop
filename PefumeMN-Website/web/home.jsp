<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Perfume Shop</title>
        <link rel="icon" href="images/logo1.png"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css">
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
        <link rel="stylesheet" href="css/style.css">
        <style>

            .responsiveFacets_sectionItemLabel:hover {
                cursor: pointer;
                background-color: rgba(28, 29, 24, 0.2);
            }

            .responsiveFacets_sectionItem:hover {
                cursor: pointer;
            }

        </style>
    </head>

    <body>
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
                                <li><a href="profile">My Account</a></li>
                                <li><a href="#">Shopping Cart</a></li>
                                <li><a href="#">Wishlist</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

                <div class="header_right_info">
                    <ul>
                        <li class="search_box">
                            <a href="javascript:void(0)"><i class="fa-solid fa-magnifying-glass"></i></a>
                            <div class="search_widget">
                                <form action="refine" method="get">
                                    <input id="searchId" name="nameSearch" type="text" placeholder="Search Your Perfume">
                                    <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
                                </form>
                            </div>
                        </li>
                        <li class="header_wishlist">
                            <a href="#"><i class="fa fa-heart-o"></i>
                            </a>
                        </li>
                        <li class="mini_cart_wrapper">
                            <a href="javascript:void">
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
                                        <a href="viewcart">View Cart</a>
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
                            <a href="profile">My Account</a>
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
                                                <a href="home" class="active">Home</a>
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
                                                <c:if test="${sessionScope.account==null}">
                                                <li>
                                                    <a href="#">User <i class="fa fa-angle-down"></i></a>
                                                    <ul class="sub_menu pages">
                                                        <li><a href="login">Login In</a></li>
                                                        <li><a href="register   ">Sign Up</a></li>
                                                    </ul>
                                                </li>
                                            </c:if>
                                            <c:if test="${sessionScope.account!=null}">
                                                <li>
                                                    <a href="profile">Profile</a> 
                                                </li>
                                            </c:if>
                                        </ul>
                                    </nav>
                                </div>
                                <!-- main menu ends -->
                            </div>
                            <div class="col-lg-4">
                                <%@ include file="header_right.jsp"%>
                            </div>
                        </div>

                        <div class="row" style="justify-content: center; padding: 10px 0"">
                            <ul style="display: flex">
                                <li style="color: white; margin-left:50px; font-size: 16px">

                                    <a href="refine?cid_refine=${0}">ALL</a>
                                </li>
                                <c:forEach items="${requestScope.category}" var="c">
                                    <li style="color: white; margin-left: 50px; font-size: 16px">
                                        <a href="refine?cid_refine=${c.id}">${c.name}</a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </header>


        <!-- slider section starts  -->
        <section class="slider_section slider_section mb-66" style="margin-bottom: 0px">
            <div class="slider_area owl-carousel">
                <div class="single_slider d-flex align-items-center" style="background: url('images/slider/slider1.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center center;">

                </div>
                <div class="single_slider d-flex align-items-center" style="background: url('images/slider/slider2.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center center;">

                </div>
                <div class="single_slider d-flex align-items-center" style="background: url('images/slider/slider3.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center center;">

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
                                        <a href="home1?cid=${0}" class="${chid[0]==true?"active":""}">
                                            ALL
                                        </a>
                                    </li>
                                    <c:forEach items="${requestScope.category}" var="c">
                                        <li value="${c.id}" >
                                            <a href="home1?cidYear=${c.id}" class="${c.id==cidYear?"active":""}">
                                                ${c.name}
                                            </a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div  class="tab-content">
                    <div class="tab-pane fade show active" id="Men" role="tabpanel">
                        <div class="row">
                            <div  class="product_carousel product_column4 owl-carousel">
                                <c:forEach items="${requestScope.productsYear}" var="p">
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
                                                            <li class="add_to_cart" 
                                                                onclick="openModal('modal_box',${p.id}, '${p.image1}', '${p.image2}',
                                                                                '${p.name}',${p.salePrice},${p.price}, '${p.describe}', '${p.classifyStr}',
                                                                                '${p.supplier.getCompanyName()}')"">
                                                                <a href="#" data-toggle="modal" data-target="#modal_box" title="Add to Cart">
                                                                    <i class="fa fa-shopping-cart"></i>
                                                                </a>
                                                            </li>
                                                            <li class="wishlist">
                                                                <a href="wishlist?wishId=${p.id}" title="Add to Wishlist">
                                                                    <i class="fa fa-heart-o"></i>
                                                                </a>
                                                            </li>
                                                            <li class="quick_button" 
                                                                onclick="openModal('modal_box',${p.id}, '${p.image1}', '${p.image2}',
                                                                                '${p.name}',${p.salePrice},${p.price}, '${p.describe}', '${p.classifyStr}',
                                                                                '${p.supplier.getCompanyName()}')" >
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
                                                        <c:if test="${p.price != p.salePrice}">
                                                            <span class="old_price" id="oldprice">Rs. ${p.price}</span>
                                                        </c:if>
                                                        <span class="current_price">Rs. ${p.salePrice}
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
                                                                <li class="add_to_cart"
                                                                    onclick="openModal('modal_box', ${hotDeal.id}, '${hotDeal.image1}', '${hotDeal.image2}',
                                                                                    '${hotDeal.name}',${hotDeal.salePrice},${hotDeal.price}, '${hotDeal.describe}', '${hotDeal.classifyStr}',
                                                                                    '${hotDeal.supplier.getCompanyName()}')"
                                                                    >
                                                                    <a href="#" data-toggle="modal" data-target="#modal_box" title="Add to Cart">
                                                                        <i class="fa fa-shopping-cart"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="wishlist">
                                                                    <a href="wishlist?wishId=${hotDeal.id}" title="Add to Wishlist">
                                                                        <i class="fa fa-heart-o"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="quick_button" >

                                                                    <a href="#" data-toggle="modal" data-target="#modal_box"
                                                                       onclick="openModal('modal_box', ${hotDeal.id}, '${hotDeal.image1}', '${hotDeal.image2}',
                                                                                       '${hotDeal.name}',${hotDeal.salePrice},${hotDeal.price}, '${hotDeal.describe}', '${hotDeal.classifyStr}',
                                                                                       '${hotDeal.supplier.getCompanyName()}')" 
                                                                       title="Quick view">
                                                                        <i class="fa fa-eye" ></i>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <figcaption class="product_content">
                                                        <!-- for deals timing -->
                                                        <div class="product_timing">
                                                            <div id="" data-countdown="2021/1/15">
                                                                <div class="countdown_area">
                                                                    <div class="single_countdown">
                                                                        <div id="day" class="countdown_number"></div>
                                                                        <div class="countdown_title">days</div>
                                                                    </div>
                                                                    <div class="single_countdown">
                                                                        <div id="hour" class="countdown_number"></div>
                                                                        <div class="countdown_title">Hours</div>
                                                                    </div>
                                                                    <div class="single_countdown">
                                                                        <div id="minutes" class="countdown_number"></div>
                                                                        <div class="countdown_title">mins</div>
                                                                    </div>
                                                                    <div class="single_countdown">
                                                                        <div id="sec" class="countdown_number"></div>
                                                                        <div class="countdown_title">secs</div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <h4 class="product_name">
                                                            <a href="#">${hotDeal.name}</a>
                                                        </h4>

                                                        <div class="price_box">
                                                            <span class="old_price">Rs.${hotDeal.price}
                                                            </span>
                                                            <span class="current_price">Rs.${hotDeal.salePrice}</span>
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
                                    <h2>Giftset</h2>
                                </div>
                                <div class="small_product_container sidebar_product_column1 owl-carousel">
                                    <c:set var="breakLoop" value="false" />
                                    <c:forEach var= "j" begin="1" end="2" step="1" >
                                        <c:set var="count" value="0" />
                                        <div class="small_product_list">
                                            <c:if test="${breakLoop == true}">
                                                <c:set var="count" value="4"/>
                                            </c:if>
                                            <c:forEach items="${requestScope.giftSets}" var="giftSet" varStatus="status" >
                                                <c:if test="${(not breakLoop && count < 3) || (breakLoop && 3 < count && count < 7)}">
                                                    <c:if test="${count == status.index}">
                                                        <article class="single_product" data-toggle="modal" data-target="#modal_box">
                                                            <figure 
                                                                onclick="openModal('modal_box', ${giftSet.id}, '${giftSet.image1}', '${giftSet.image2}',
                                                                                '${giftSet.name}',${giftSet.salePrice},${giftSet.price}, '${giftSet.describe}', '${giftSet.classifyStr}',
                                                                                '${giftSet.supplier.getCompanyName()}')">
                                                                <div class="product_thumb">
                                                                    <a href="#" class="primary_img">
                                                                        <img src="${giftSet.image1}" alt="">
                                                                    </a>
                                                                    <a href="#" class="secondary_img"><img
                                                                            src="${giftSet.image2}" alt=""></a>
                                                                </div>
                                                                <figcaption class="product_content">
                                                                    <h4 class="product_name">
                                                                        <a href="#">${giftSet.name}</a>
                                                                    </h4>
                                                                    <div class="product_rating">
                                                                        <ul>
                                                                            <c:set var="numstar" value="${giftSet.starRating}"/>
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
                                                                    <div class="price_box">
                                                                        <c:if test="${i.price != i.salePrice}">
                                                                            <span class="old_price">Rs. ${i.price}</span>
                                                                        </c:if>
                                                                        <span class="current_price">Rs. ${giftSet.salePrice}</span>
                                                                    </div>
                                                                </figcaption>
                                                            </figure>
                                                        </article>
                                                        <c:set var="count" value="${count + 1}" />
                                                    </c:if>
                                                    <c:if test="${count == 3}">
                                                        <c:set var="breakLoop" value="true" />
                                                    </c:if>
                                                </c:if>

                                            </c:forEach>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>

                            <!-- small product area ends -->

                            <!-- testimonial section starts  -->
                            <c:set var="cat" value="${requestScope.category}"/>
                            <div class="testimonial_style_two mb-60 rightleft">
                                <div class="testimonial_container">
                                    <div class="section_title section_title_style2">
                                        <h2 style="font-size: 20px">Brand</h2>
                                    </div>
                                    <form id="f3" action="refine" method="get">
                                        <div class="" style="margin: 0">
                                            <h2 style="font-size: 16px;"></h2>
                                            <fieldset class="responsiveFacets_sectionContent " aria-hidden="false">
                                                <div href="#" class="responsiveFacets_sectionItemLabel" onclick="pageRefine(0)">
                                                    <label class="responsiveFacets_sectionItem" for="brand">
                                                        ALL (${productsYear.size()})
                                                    </label>
                                                </div>
                                                <c:forEach begin="0" end="${cat.size()-1}" var="i">
                                                    <div class="responsiveFacets_sectionItemLabel" onclick="pageRefine(${i + 1})">
                                                        <label href="#" class="responsiveFacets_sectionItem" for="brand" >
                                                            ${cat.get(i).name} (${cat.get(i).getTotalProduct()})
                                                        </label>
                                                    </div>
                                                </c:forEach>
                                            </fieldset>
                                        </div>
                                        <input type="hidden" value="" name="cid_refine" id="submitt">
                                    </form>
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
                                                                    <li class="add_to_cart"
                                                                        onclick="openModal('modal_box',${t.id}, '${t.image1}', '${t.image2}',
                                                                                        '${t.name}',${t.salePrice},${t.price}, '${t.describe}', '${t.classifyStr}',
                                                                                        '${t.supplier.getCompanyName()}')">
                                                                        <a href="#" data-toggle="modal" data-target="#modal_box" title="Add to Cart">
                                                                            <i class="fa fa-shopping-cart"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="wishlist">
                                                                        <a href="wishlist?wishId=${t.id}" title="Add to Wishlist">
                                                                            <i class="fa fa-heart-o"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="quick_button" 
                                                                        onclick="openModal('modal_box',${t.id}, '${t.image1}', '${t.image2}',
                                                                                        '${t.name}',${t.salePrice},${t.price}, '${t.describe}', '${t.classifyStr}',
                                                                                        '${t.supplier.getCompanyName()}')" >
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
                                                                    <c:set var="numstar" value="${t.starRating}"/>
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
                                                            <div class="price_box">
                                                                <span class="old_price">Rs. ${t.price}</span>
                                                                <span class="current_price">Rs.${t.salePrice}</span>
                                                            </div>
                                                        </figcaption>
                                                    </figure>
                                                </article>
                                            </div>
                                        </c:forEach>
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
                            <div class="product_area" >
                                <div class="section_title section_title_style2">
                                    <h2>On Sale</h2>
                                </div>

                                <c:set var="page" value="${requestScope.page}"/>
                                <div class="pagination">
                                    <c:forEach begin="${1}" end="${requestScope.numberpage}" var="i">
                                        <a class="linkLoad ${i==1?"active":""}" id="numberPage" onclick="loadMore(this)" >${i}</a>
                                    </c:forEach>
                                </div>

                                <div id="contentt" class="row">
                                    <c:set var="proA" value=""/>
                                    <c:forEach items="${requestScope.productPage}" var="i">
                                        <div class="product_items col-lg-4" style="margin: 30px 0">
                                            <article class="single_product">
                                                <figure>
                                                    <div class="product_thumb">
                                                        <a href="#" class="primary_img">
                                                            <img src="${i.image1}" alt="">
                                                        </a>
                                                        <a href="#" class="secondary_img">
                                                            <img src="${i.image2}" alt="">
                                                        </a>

                                                        <div class="action_links">
                                                            <ul>
                                                                <li class="add_to_cart"
                                                                    onclick="openModal('modal_box',${i.id}, '${i.image1}', '${i.image2}',
                                                                                    '${i.name}',${i.salePrice},${i.price}, '${i.describe}', '${i.classifyStr}',
                                                                                    '${i.supplier.getCompanyName()}')">
                                                                    <a href="#" data-toggle="modal" data-target="#modal_box" title="Add to Cart">
                                                                        <i class="fa fa-shopping-cart"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="wishlist">
                                                                    <a href="wishlist?wishId=${i.id}" title="Add to Wishlist">
                                                                        <i class="fa fa-heart-o"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="quick_button" 
                                                                    onclick="openModal('modal_box',${i.id}, '${i.image1}', '${i.image2}',
                                                                                    '${i.name}',${i.salePrice},${i.price}, '${i.describe}', '${i.classifyStr}',
                                                                                    '${i.supplier.getCompanyName()}')" >
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
                                                            <a href="#">${i.name}</a>
                                                        </h4>
                                                        <div class="product_rating">
                                                            <ul>
                                                                <c:set var="numstar" value="${i.starRating}"/>
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
                                                        <div class="price_box">
                                                            <c:if test="${i.price != i.salePrice}">
                                                                <span class="old_price">Rs. ${i.price}</span>
                                                            </c:if>
                                                            <span class="current_price">Rs. ${i.salePrice}</span>
                                                        </div>
                                                    </figcaption>
                                                </figure>
                                            </article>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- product section ends -->
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
                                    <span>Address :</span> Address: 100 To Hien Thanh, District 10, HCMC
                                </p>
                                <p><span>Email :</span> <a href="#">deo@gmail.com</a></p>
                                <p><span>Phone :</span> <a href="tel: +91 8888884444">+91 8888884444</a> </p>
                                <p style="margin-top: 20px">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.60994153052!2d106.80730807586922!3d10.841132857995166!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752731176b07b1%3A0xb752b24b379bae5e!2sFPT%20University%20HCMC!5e0!3m2!1sen!2s!4v1703229023591!5m2!1sen!2s" width="330" height="200" style="border:1px;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">

                                    </iframe>
                                </p>
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
                                        <c:forEach items="${requestScope.productFooter1}" var="p">
                                            <article class="single_product">
                                                <figure>
                                                    <div class="product_thumb">
                                                        <a href="#" class="primary_img">
                                                            <img src="${p.image1}" alt="">
                                                        </a>
                                                        <a href="#" class="secondary_img">
                                                            <img src="${p.image2}" alt="">
                                                        </a>


                                                    </div>
                                                    <figcaption class="product_content">
                                                        <h4 class="product_name">
                                                            <a href="#" style="color: white;">${p.name}</a>
                                                        </h4>

                                                        <div class="price_box">
                                                            <c:if test="${i.price != i.salePrice}">
                                                                <span class="old_price" style="color: white;">Rs. ${p.price}</span>
                                                            </c:if>
                                                            <span class="current_price" style="color: white;">Rs. ${p.salePrice}</span>
                                                        </div>
                                                    </figcaption>
                                                </figure>
                                            </article>
                                        </c:forEach>
                                    </div>
                                    <div class="small_product_list">
                                        <c:forEach items="${requestScope.productFooter2}" var="p">
                                            <article class="single_product">
                                                <figure>
                                                    <div class="product_thumb">
                                                        <a href="#" class="primary_img">
                                                            <img src="${p.image1}" alt="">
                                                        </a>
                                                        <a href="#" class="secondary_img">
                                                            <img src="${p.image2}" alt="">
                                                        </a>
                                                    </div>
                                                    <figcaption class="product_content">
                                                        <h4 class="product_name">
                                                            <a href="#" style="color: white;">${p.name}</a>
                                                        </h4>

                                                        <div class="price_box">
                                                            <c:if test="${i.price != i.salePrice}">
                                                                <span class="old_price" style="color: white;">Rs. ${p.price}</span>
                                                            </c:if>
                                                            <span class="current_price" style="color: white;">Rs. ${p.salePrice}</span>
                                                        </div>
                                                    </figcaption>
                                                </figure>
                                            </article>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="widgets_container widgets_p_product">
                                <h3>Most Viewed Products</h3>
                                <div class="small_product_container small_product_column1 owl-carousel">
                                    <div class="small_product_list">
                                        <c:forEach items="${requestScope.productFooter2}" var="p">
                                            <article class="single_product">
                                                <figure>
                                                    <div class="product_thumb">
                                                        <a href="#" class="primary_img">
                                                            <img src="${p.image1}" alt="">
                                                        </a>
                                                        <a href="#" class="secondary_img">
                                                            <img src="${p.image2}" alt="">
                                                        </a>
                                                    </div>
                                                    <figcaption class="product_content">
                                                        <h4 class="product_name">
                                                            <a href="#" style="color: white;">${p.name}</a>
                                                        </h4>

                                                        <div class="price_box">
                                                            <c:if test="${i.price != i.salePrice}">
                                                                <span class="old_price" style="color: white;">Rs. ${p.price}</span>
                                                            </c:if>
                                                            <span class="current_price" style="color: white;">Rs. ${p.salePrice}</span>
                                                        </div>
                                                    </figcaption>
                                                </figure>
                                            </article>
                                        </c:forEach>
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

            <jsp:include page="footer.jsp"/>
        </footer>


        <div class="modal fade" id="modal_box" role="dialog"></div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>   
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>
        <script src="js/countdown.js"></script>
        <script src="js/clickevents.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js"></script>
        <script src="js/main.js"></script>
        <script type="text/javascript">
                                                                        function loadMore(obj) {
                                                                            var amount = document.getElementsByClassName("product_items").length;
                                                                            var numPage = ((parseInt(obj.textContent) - 1) * 9);
                                                                            $(".linkLoad").removeClass("active");
                                                                            $(obj).addClass("active");

                                                                            $.ajax({
                                                                                url: "/PefumeMN-Website/load",
                                                                                type: "get",
                                                                                data: {
                                                                                    exits: numPage
                                                                                },
                                                                                success: function (data) {
                                                                                    var row = document.getElementById("contentt");
                                                                                    row.innerHTML = data;
                                                                                },
                                                                                error: function (xhr) {
                                                                                }
                                                                            });
                                                                        }

        </script>
    </body>

</html>