<%-- 
    Document   : contact
    Created on : Dec 29, 2023, 9:12:47 AM
    Author     : lvhho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">

    <head>
        <meta charset="UTF-8" />
        <meta name="theme-color" content="#f02b2b" />
        <link rel="canonical" href="images/logo1.png" />
        <meta name='revisit-after' content='2 days' />
        <meta name="robots" content="noodp,index,follow" />
        <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <meta name="description" content="Trang nội dung">
        <title>Contact </title>

        <link rel="icon" href="images/logo1.png"
              type="image/x-icon" />
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/font-roboto.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/main.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/index.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/bootstrap-4-3-min.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/responsive.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/quickviews_popup_cart.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/cartpage.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/blog_article_style.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/sidebar_style.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/product_style.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/contact_style.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/account_oder_style.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/collection_style.scss.css?1676259868191">
        <link rel="stylesheet"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/bootstrap-4-3-min.css?1676259868191">
        <link href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/font-roboto.scss.css?1676259868191"
              rel="stylesheet" type="text/css" media="all" />
        <link href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/main.scss.css?1676259868191" rel="stylesheet"
              type="text/css" media="all" />






        <link href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/contact_style.scss.css?1676259868191"
              rel="stylesheet" type="text/css" media="all" />


        <link rel="preload" as="script"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/jquery.min.js?1676259868191" />
        <script src="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/jquery.min.js?1676259868191"
        type="text/javascript"></script>


        <link rel="preload" as="script"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/swiper.min.js?1676259868191" />
        <script src="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/swiper.min.js?1676259868191"
        type="text/javascript"></script>
    </head>

    <body style="height: auto">
        <div class="page-body">
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
                                                <li><a href="contact" style="color:#f6692a ">Contact Us</a></li>
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
            <div id="menu-overlay" class=""></div>
            <div class="breadcrumb_background" style=" background-image: url('images/banner/banner11.png');">
                <div class="title_full">
                    <div class="container">
                        <h1 class="title_page">Liên hệ</h1>
                    </div>
                </div>

            </div>
            <div class="page_contact">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12 ">
                            <div class="left_contact">
                                <span class="des_contact">Bạn hãy điền nội dung tin nhắn vào form dưới đây và gửi cho chúng
                                    tôi</span>
                                <div id="pagelogin" >
                                    <form   accept-charset="UTF-8"><input
                                            name="FormType" type="hidden" value="contact" /><input name="utf8" type="hidden"
                                            value="true" /><input type="hidden" id="Token-a800b26a361b41a1ae87368c7335bdbe"
                                            name="Token" />
                                        <script
                                        src="https://www.google.com/recaptcha/api.js?render=6Ldtu4IUAAAAAMQzG1gCw3wFlx_GytlZyLrXcsuK"></script>
                                        <script>grecaptcha.ready(function () {
                                                grecaptcha.execute("6Ldtu4IUAAAAAMQzG1gCw3wFlx_GytlZyLrXcsuK", {action: "contact"}).then(function (token) {
                                                    document.getElementById("Token-a800b26a361b41a1ae87368c7335bdbe").value = token
                                                });
                                            });</script>


                                        <div class="form-signup clearfix" id="contact"F>
                                            <div class="row group_contact">
                                                <fieldset class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <label>Họ và tên </label>
                                                    <input placeholder="Họ và tên*" type="text"
                                                           class="form-control  form-control-lg" required value=""
                                                           id="fullNameContact">
                                                </fieldset>
                                                <fieldset class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <label>Email </label>
                                                    <input placeholder="Email*" type="email"
                                                           pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required
                                                           id="emailContact" class="form-control form-control-lg" value=""
                                                           >
                                                </fieldset>
                                                <fieldset class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <label>Nội dung </label>
                                                    <textarea placeholder="Nội dung*"  id="commentContact"
                                                              class="form-control content-area form-control-lg" rows="5"
                                                              Required></textarea>
                                                </fieldset>
                                                <c:if test="${requestScope.check == 'success'}">
                                                    <div>
                                                        <span class="des_contact" style='color: green;'>${requestScope.message}</span>
                                                    </div>
                                                </c:if>
                                                <c:if test="${requestScope.check == 'fail'}">
                                                    <div>
                                                        <span class="des_contact" style='color: red;'>${requestScope.message}</span>
                                                    </div>
                                                </c:if>
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <button type="button" onclick="submitForm()" class="btn btn-primary btn-lienhe">Gửi tin nhắn
                                                        cho chúng tôi</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-12">
                            <div class="right_contact">
                                <div class="single_contact">
                                    <div class="contact-icon">
                                        <i class="fa fa-phone"></i>
                                    </div>
                                    <div class="content-contact">
                                        <a href="tel:19006750">1900 9090</a>
                                    </div>
                                </div>
                                <div class="single_contact">
                                    <div class="contact-icon">
                                        <i class="fa fa-envelope"></i>
                                    </div>
                                    <div class="content-contact">
                                        <a href="mailto:support@sapo.vn">perfumeparadisevn@gmail.com</a>
                                    </div>
                                </div>
                                <div class="single_contact">
                                    <div class="contact-icon">
                                        <i class="fa fa-map-marker-alt"></i>
                                    </div>
                                    <div class="content-contact">
                                        <span>
                                            61/2 Quang Trung, Ward 10
                                            Go Vap District, Ho Chi Minh city
                                        </span>
                                    </div>
                                </div>

                                <div class="iFrameMap">
                                    <div id="contact_map" class="map">
                                        <iframe
                                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.60994153052!2d106.80730807586922!3d10.841132857995166!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752731176b07b1%3A0xb752b24b379bae5e!2sFPT%20University%20HCMC!5e0!3m2!1sen!2s!4v1703229023591!5m2!1sen!2s"
                                            width="600" height="450" style="border:0" allowfullscreen></iframe>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            function submitForm() {
                var fullName = document.getElementById('fullNameContact').value;
                var email = document.getElementById('emailContact').value;
                var cmt = document.getElementById('commentContact').value;
                $.ajax({
                    url: "/PefumeMN-Website/contact",
                    type: "post",
                    data: {
                        name: fullName,
                        email: email,
                        cmt: cmt
                    },
                    success: function (data) {
                        var row = document.getElementById("contact");
                        row.innerHTML = data;
                    },
                    error: function (xhr) {
                    }
                });
            }
        </script>
    </body>
    <jsp:include page="footer.jsp"/>
</html>
