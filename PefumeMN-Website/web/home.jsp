<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Perfume Paradise Store</title>
        <link rel="icon" href="images/logo1.png"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css">
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://cdn.tailwindcss.com/3.3.2"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js"/>
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
                                            <li class="mega_items">
                                                <a href="#">Collections <i class="fa fa-angle-down"></i></a>
                                                <div class="mega_menu">
                                                    <ul class="mega_menu_inner">
                                                        <li style="color: black; font-size: 16px">

                                                            <a href="refine?cid_refine=${0}">ALL</a>
                                                        </li>
                                                        <c:forEach items="${requestScope.category}" var="c">
                                                            <li style="color: black; font-size: 16px">
                                                                <a href="refine?cid_refine=${c.id}">${c.name}</a>
                                                            </li>
                                                        </c:forEach>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li><a href="aboutus">About Us</a></li>
                                            <li><a href="contact">Contact Us</a></li>
                                                <c:if test="${sessionScope.account==null}">
                                                <li>
                                                    <a href="#">User <i class="fa fa-angle-down"></i></a>
                                                    <ul class="sub_menu pages">
                                                        <li><a href="login">Login In</a></li>
                                                        <li><a href="register">Sign Up</a></li>
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
                            <h2 class=text-shadow" style="font-size: 20px;"><span class="ani-fire">New Products 2023</span></h2>
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
                                                        <img src="${p.image[0]}" alt="">
                                                    </a>
                                                    <a href="#" class="secondary_img"  height="270px">
                                                        <img src="${p.image[1]}" alt="">
                                                    </a>
                                                    <div class="action_links">
                                                        <ul>
                                                            <li class="add_to_cart" 
                                                                onclick="openModal('modal_box',${p.id}, '${p.image[0]}', '${p.image[1]}',
                                                                                '${p.name}',${p.salePrice},${p.price}, '${p.describe}', '${p.classifyStr}',
                                                                                '${p.supplier.getCompanyName()}')"">
                                                                <a href="#" data-toggle="modal" data-target="#modal_box" title="Add to Cart">
                                                                    <i class="fa fa-shopping-cart"></i>
                                                                </a>
                                                            </li>
                                                            <li class="wishlist">
                                                                <a href="#" onclick="toggleWishlist(${p.id})" title="Add to Wishlist">
                                                                    <i style="color: #f6692a" class="fa-solid fa-heart"></i>
                                                                </a>
                                                            </li>
                                                            <li class="quick_button" 
                                                                onclick="openModal('modal_box',${p.id}, '${p.image[0]}', '${p.image[1]}',
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
                                                    <h4 class="product_name ani-fire" style="">
                                                        <a href="#">${p.name}</a>
                                                    </h4>

                                                    <div class="price_box">
                                                        <c:if test="${p.price != p.salePrice}">
                                                            <span class="old_price" id="oldprice">Rs. ${p.price}</span>
                                                        </c:if>
                                                        <span class="current_price ani-fire">Rs. ${p.salePrice}
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
                                    <h2><span class="ani-fire">Hot Deals</span></h2>
                                    <i style="color: orangered; font-size: 22px; margin-left:5px" class="fa-solid fa-fire"></i>
                                </div>
                                <div class="row">
                                    <div class="deals_carousel product_column1 owl-carousel">
                                        <c:set var="hotDeal" value="${requestScope.hotDeal}"/>
                                        <div class="col-lg-3">
                                            <article class="single_product">
                                                <figure>
                                                    <div class="product_thumb">
                                                        <a href="#" class="primary_img">
                                                            <img src="${hotDeal.image[0]}" alt="">
                                                        </a>
                                                        <a href="#" class="secondary_img">
                                                            <img src="${hotDeal.image[1]}" alt="">
                                                        </a>
                                                        <div class="action_links">
                                                            <ul>
                                                                <li class="add_to_cart"
                                                                    onclick="openModal('modal_box', ${hotDeal.id}, '${hotDeal.image[0]}', '${hotDeal.image[1]}',
                                                                                    '${hotDeal.name}',${hotDeal.salePrice},${hotDeal.price}, '${hotDeal.describe}', '${hotDeal.classifyStr}',
                                                                                    '${hotDeal.supplier.getCompanyName()}')"
                                                                    >
                                                                    <a href="#" data-toggle="modal" data-target="#modal_box" title="Add to Cart">
                                                                        <i class="fa fa-shopping-cart"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="wishlist">
                                                                    <a href="#" onclick="toggleWishlist(${hotDeal.id})" title="Add to Wishlist">
                                                                        <i style="color: #f6692a" class="fa-solid fa-heart"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="quick_button" >

                                                                    <a href="#" data-toggle="modal" data-target="#modal_box"
                                                                       onclick="openModal('modal_box', ${hotDeal.id}, '${hotDeal.image[0]}', '${hotDeal.image[1]}',
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
                                                                    <div class="single_countdown ani-fire">
                                                                        <div id="day" class="countdown_number"></div>
                                                                        <div class="countdown_title">days</div>
                                                                    </div>
                                                                    <div class="single_countdown ani-fire">
                                                                        <div id="hour" class="countdown_number"></div>
                                                                        <div class="countdown_title">Hours</div>
                                                                    </div>
                                                                    <div class="single_countdown ani-fire">
                                                                        <div id="minutes" class="countdown_number"></div>
                                                                        <div class="countdown_title">mins</div>
                                                                    </div>
                                                                    <div class="single_countdown ani-fire">
                                                                        <div id="sec" class="countdown_number"></div>
                                                                        <div class="countdown_title">secs</div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <h4 class="product_name ani-fire">
                                                            <a href="#">${hotDeal.name}</a>
                                                        </h4>

                                                        <div class="price_box">
                                                            <span class="old_price">Rs.${hotDeal.price}
                                                            </span>
                                                            <span class="current_price ani-fire">Rs.${hotDeal.salePrice}</span>
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
                                                                onclick="openModal('modal_box', ${giftSet.id}, '${giftSet.image[0]}', '${giftSet.image[1]}',
                                                                                '${giftSet.name}',${giftSet.salePrice},${giftSet.price}, '${giftSet.describe}', '${giftSet.classifyStr}',
                                                                                '${giftSet.supplier.getCompanyName()}')">
                                                                <div class="product_thumb">
                                                                    <a href="#" class="primary_img">
                                                                        <img src="${giftSet.image[0]}" alt="">
                                                                    </a>
                                                                    <a href="#" class="secondary_img"><img
                                                                            src="${giftSet.image[1]}" alt=""></a>
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
                                                        ALL (${listAll.size()})
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

                            <div class="newsletter_style2" id="newsletter">
                                <div class="newsletter_container">
                                    <div class="section_title section_title_style2">
                                        <h2>Newsletter</h2>
                                    </div>
                                    <div class="subscribe_form">
                                        <form action="">
                                            <input id="emailDiscount" type="email" autocomplete="off" placeholder="example@gmail.com">
                                            <button type="button" onclick="submitEmail()">
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
                                                                <img src="${t.image[0]}" alt="">
                                                            </a>
                                                            <a href="#" class="secondary_img">
                                                                <img src="${t.image[1]}" alt="">
                                                            </a>

                                                            <div class="action_links">
                                                                <ul>
                                                                    <li class="add_to_cart"
                                                                        onclick="openModal('modal_box',${t.id}, '${t.image[0]}', '${t.image[1]}',
                                                                                        '${t.name}',${t.salePrice},${t.price}, '${t.describe}', '${t.classifyStr}',
                                                                                        '${t.supplier.getCompanyName()}')">
                                                                        <a href="#" data-toggle="modal" data-target="#modal_box" title="Add to Cart">
                                                                            <i class="fa fa-shopping-cart"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="wishlist">
                                                                        <a href="#" onclick="toggleWishlist(${t.id})" title="Add to Wishlist">
                                                                            <i style="color: #f6692a" class="fa-solid fa-heart"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="quick_button" 
                                                                        onclick="openModal('modal_box',${t.id}, '${t.image[0]}', '${t.image[1]}',
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
                                                            <img src="${i.image[0]}" alt="">
                                                        </a>
                                                        <a href="#" class="secondary_img">
                                                            <img src="${i.image[1]}" alt="">
                                                        </a>

                                                        <div class="action_links">
                                                            <ul>
                                                                <li class="add_to_cart"
                                                                    onclick="openModal('modal_box',${i.id}, '${i.image[0]}', '${i.image[1]}',
                                                                                    '${i.name}',${i.salePrice},${i.price}, '${i.describe}', '${i.classifyStr}',
                                                                                    '${i.supplier.getCompanyName()}')">
                                                                    <a href="#" data-toggle="modal" data-target="#modal_box" title="Add to Cart">
                                                                        <i class="fa fa-shopping-cart"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="wishlist">
                                                                    <a href="#" onclick="toggleWishlist(${i.id})" title="Add to Wishlist">
                                                                        <i style="color: #f6692a" class="fa-solid fa-heart"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="quick_button" 
                                                                    onclick="openModal('modal_box', ${i.id}, '${i.image[0]}', '${i.image[1]}',
                                                                                    '${i.name}', ${i.salePrice}, ${i.price}, '${i.describe}', '${i.classifyStr}',
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
                                    <span>Address :</span> Address: 61/2 Quang Trung, Ward 10
                                    Go Vap District, Ho Chi Minh city
                                </p>
                                <p><span>Email :</span> <a href="#">perfumeparadisevn@gmail.com</a></p>
                                <p><span>Phone :</span> <a href="tel: +91 8888884444">1900 9090</a> </p>
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
                                        <li><a href="home">Home</a></li>
                                        <li><a href="aboutus">About Us</a></li>
                                        <li><a href="refine?cid_refine=0">Shopping</a></li>
                                        <li><a href="refine?cid_refine=5">Gift set</a></li>
                                        <li><a href="profile">My Account</a></li>
                                        <li><a href="viewcart">Order</a></li>
                                        <li><a href="viewwishlist">Wish List</a></li>
                                        <li><a href="contact">Contact Us</a></li>
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
                                                            <img src="${p.image[0]}" alt="">
                                                        </a>
                                                        <a href="#" class="secondary_img">
                                                            <img src="${p.image[1]}" alt="">
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
                                                            <img src="${p.image[0]}" alt="">
                                                        </a>
                                                        <a href="#" class="secondary_img">
                                                            <img src="${p.image[1]}" alt="">
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
                                                            <img src="${p.image[0]}" alt="">
                                                        </a>
                                                        <a href="#" class="secondary_img">
                                                            <img src="${p.image[1]}" alt="">
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
                                                                        function submitEmail() {
                                                                            var text = document.querySelector("#emailDiscount").value;
                                                                            $.ajax({
                                                                                url: "/PefumeMN-Website/email",
                                                                                type: "get",
                                                                                data: {
                                                                                    txt: text
                                                                                },
                                                                                success: function (data) {
                                                                                    var row = document.getElementById("newsletter");
                                                                                    row.innerHTML = data;
                                                                                },
                                                                                error: function (xhr) {
                                                                                }
                                                                            });
                                                                        }
        </script>
    </body>

</html>