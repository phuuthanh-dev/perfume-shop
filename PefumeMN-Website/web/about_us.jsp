<%-- 
    Document   : about_us
    Created on : Dec 28, 2023, 7:30:34 PM
    Author     : lvhho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="//bizweb.dktcdn.net/100/048/087/themes/776353/assets/favicon.png?1671122359380"
              type="image/x-icon" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>
            About us
        </title>


        <link rel="canonical" href="https://landing-page.mysapo.net/" />
        <meta content='width=device-width, initial-scale=1.0, maximum-scale=2.0, user-scalable=0' name='viewport' />
        <meta name='revisit-after' content='1 days' />

        <meta property="og:type" content="website" />
        <meta property="og:title" content="Landing Page" />

        <meta property="og:image"
              content="http://bizweb.dktcdn.net/100/048/087/themes/776353/assets/logo.png?1671122359380" />
        <meta property="og:image"
              content="https://bizweb.dktcdn.net/100/048/087/themes/776353/assets/logo.png?1671122359380" />




        <meta property="og:description"
              content="Mẫu Website Chuy&#234;n d&#249;ng cho mặt h&#224;ng thời trang, giỏ x&#225;ch, gi&#224;y d&#233;p, &#225;o quần." />

        <meta property="og:url" content="https://landing-page.mysapo.net/" />
        <meta property="og:site_name" content="" />

        <script>
            var Bizweb = Bizweb || {};
            Bizweb.store = 'landing-page.mysapo.net';
            Bizweb.id = 48087;
            Bizweb.theme = {"id": 776353, "name": "Ega-Landing-Page_v.1.0.2_20200710", "role": "main"};
            Bizweb.template = 'index';
            if (!Bizweb.fbEventId)
                Bizweb.fbEventId = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function (c) {
                    var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
                    return v.toString(16);
                });
        </script>
        <script>
            (function () {
                function asyncLoad() {
                    var urls = [];
                    for (var i = 0; i < urls.length; i++) {
                        var s = document.createElement('script');
                        s.type = 'text/javascript';
                        s.async = true;
                        s.src = urls[i];
                        var x = document.getElementsByTagName('script')[0];
                        x.parentNode.insertBefore(s, x);
                    }
                }
                ;
                window.attachEvent ? window.attachEvent('onload', asyncLoad) : window.addEventListener('load', asyncLoad, false);
            })();
        </script>


        <script>
            window.BizwebAnalytics = window.BizwebAnalytics || {};
            window.BizwebAnalytics.meta = window.BizwebAnalytics.meta || {};
            window.BizwebAnalytics.meta.currency = 'VND';
            window.BizwebAnalytics.tracking_url = '/s';

            var meta = {};


            for (var attr in meta) {
                window.BizwebAnalytics.meta[attr] = meta[attr];
            }
        </script>
        <script src="/dist/js/stats.min.js?v=8177d93"></script>

    </head>
    <body class="stretched no-transition">
        <style>
            /* Preloader Screen
            ========================================================================== */

            .l-preloader {
                position: fixed;
                top: 0;
                left: 0;
                right: 0;
                height: 100%;
                z-index: 11111;
                overflow: hidden;
                transition: height 0.45s;
                background: #fff;
            }

            .l-preloader.done {
                height: 0;
            }

            .l-preloader-spinner {
                position: absolute;
                top: 50%;
                left: 50%;
                text-align: center;
                background-color: inherit;
                color: inherit;
                opacity: 1;
                transition: opacity 0.3s;
                transform: translate3d(-50%, -50%, 0);
            }

            .l-preloader.done .l-preloader-spinner {
                opacity: 0;
            }

            .l-preloader .g-preloader {
                width: 60px;
                height: 60px;
            }

            .l-preloader .g-preloader.type_custom {
                max-width: 300px;
                width: auto;
                height: auto;
            }

            /* Preloader
            ========================================================================== */

            .g-preloader {
                display: inline-block;
                vertical-align: top;
                position: relative;
                width: 40px;
                height: 40px;
            }

            /* TYPE 1 */
            .g-preloader.type_1:before,
            .g-preloader.type_1:after {
                content: '';
                display: block;
                position: absolute;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                border-radius: 50%;
                border: 2px solid;
            }

            .g-preloader.type_1:before {
                opacity: 0.2;
            }

            .g-preloader.type_1:after {
                border-top-color: transparent;
                -webkit-animation: rotation 0.8s infinite cubic-bezier(.6, .3, .3, .6);
                animation: rotation 0.8s infinite cubic-bezier(.6, .3, .3, .6);
            }

            @-webkit-keyframes rotation {
                0% {
                    -webkit-transform: rotate(0deg);
                }

                100% {
                    -webkit-transform: rotate(360deg);
                }
            }

            @keyframes rotation {
                0% {
                    transform: rotate(0deg);
                }

                100% {
                    transform: rotate(360deg);
                }
            }

            /* TYPE 2 */
            .g-preloader.type_2:before,
            .g-preloader.type_2:after {
                content: '';
                display: block;
                position: absolute;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                border-radius: 50%;
                border: 2px solid;
            }

            .g-preloader.type_2:before {
                opacity: 0.2;
            }

            .g-preloader.type_2:after {
                border-color: transparent;
                border-top-color: inherit;
                -webkit-animation: rotation 0.8s infinite linear;
                animation: rotation 0.8s infinite linear;
            }

            /* TYPE 3 */
            .g-preloader.type_3 .g-preloader-h {
                width: 60px;
                height: 60px;
                border: 30px solid;
                border-radius: 50%;
                -webkit-animation: scale 1s infinite cubic-bezier(.6, .3, .3, .6);
                animation: scale 1s infinite cubic-bezier(.6, .3, .3, .6);
            }

            @-webkit-keyframes scale {
                0% {
                    -webkit-transform: scale(0);
                }

                50% {
                    -webkit-transform: scale(1);
                }

                100% {
                    -webkit-transform: scale(0);
                }
            }

            @keyframes scale {
                0% {
                    transform: scale(0);
                    opacity: 1;
                }

                100% {
                    transform: scale(1);
                    opacity: 0;
                }
            }

            /* TYPE 4 */
            .g-preloader.type_4 .g-preloader-h {
                width: 60px;
                height: 60px;
                border: 1px solid;
                border-radius: 50%;
                -webkit-animation: scale2 1.5s infinite ease;
                animation: scale2 1.5s infinite ease;
            }

            @-webkit-keyframes scale2 {
                0% {
                    -webkit-transform: scale(0.05);
                    border-width: 30px;
                }

                50% {
                    -webkit-transform: scale(1);
                    border-width: 1px;
                }

                100% {
                    -webkit-transform: scale(0.05);
                    border-width: 30px;
                }
            }

            @keyframes scale2 {
                0% {
                    transform: scale(0.05);
                    border-width: 30px;
                }

                50% {
                    transform: scale(1);
                    border-width: 1px;
                }

                100% {
                    transform: scale(0.05);
                    border-width: 30px;
                }
            }

            /* TYPE 5 */
            .g-preloader.type_5,
            .g-preloader.type_5 {
                transform: rotate(45deg);
            }

            .g-preloader.type_5:before,
            .g-preloader.type_5:after,
            .g-preloader.type_5 .g-preloader-h:before,
            .g-preloader.type_5 .g-preloader-h:after {
                content: '';
                display: block;
                position: absolute;
                width: 0;
                height: 0;
                border: 10px solid;
            }

            .g-preloader.type_5:before {
                top: 0;
                left: 0;
                -webkit-animation: cubes-tl 1.2s infinite ease;
                animation: cubes-tl 1.2s infinite ease;
            }

            .g-preloader.type_5:after {
                top: 19px;
                left: 19px;
                -webkit-animation: cubes-tr 1.2s infinite ease;
                animation: cubes-tr 1.2s infinite ease;
            }

            .g-preloader.type_5 .g-preloader-h:before {
                top: 0;
                left: 19px;
                -webkit-animation: cubes-br 1.2s infinite ease;
                animation: cubes-br 1.2s infinite ease;
            }

            .g-preloader.type_5 .g-preloader-h:after {
                top: 19px;
                left: 0;
                -webkit-animation: cubes-bl 1.2s infinite ease;
                animation: cubes-bl 1.2s infinite ease;
            }

            @keyframes cubes-tl {
                0% {
                    transform: translate(0px, 0px);
                }

                20% {
                    transform: translate(0px, 0px);
                }

                60% {
                    transform: translate(-12px, -12px) rotate(90deg);
                }

                100% {
                    transform: translate(0px, 0px) rotate(180deg);
                }
            }

            @keyframes cubes-tr {
                0% {
                    transform: translate(0px, 0px);
                }

                20% {
                    transform: translate(0px, 0px);
                }

                60% {
                    transform: translate(12px, 12px) rotate(90deg);
                }

                100% {
                    transform: translate(0px, 0px) rotate(180deg);
                }
            }

            @keyframes cubes-br {
                0% {
                    transform: translate(0px, 0px);
                }

                20% {
                    transform: translate(0px, 0px);
                }

                60% {
                    transform: translate(12px, -12px) rotate(90deg);
                }

                100% {
                    transform: translate(0px, 0px) rotate(180deg);
                }
            }

            @keyframes cubes-bl {
                0% {
                    transform: translate(0px, 0px);
                }

                20% {
                    transform: translate(0px, 0px);
                }

                60% {
                    transform: translate(-12px, 12px) rotate(90deg);
                }

                100% {
                    transform: translate(0px, 0px) rotate(180deg);
                }
            }
        </style>
        <div class='l-preloader'>
            <div class='l-preloader-spinner'>
                <div class='g-preloader  type_custom'>
                    <div class='g-preloader-h'><img
                            src="//bizweb.dktcdn.net/100/048/087/themes/776353/assets/logo.png?1671122359380" width="300"
                            height="113" alt="" /></div>
                </div>
            </div>
        </div>
        <div id="fb-root"></div>
        <script>(function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id))
                    return;
                js = d.createElement(s);
                js.id = id;
                js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.8&appId=744227642329965";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));</script>
        <div id='body_overlay'></div>

        <!-- Document Wrapper
    ============================================= -->
        <div id="wrapper" class="clearfix"> <!-- style="animation-duration: 1.5s; opacity: 1;"-->

            <!-- Header
    ============================================= -->
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
                                                <li><a href="#">Contact Us</a></li>
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
            <!-- #header end -->

            <!-- Content
    ============================================= -->
            <section id="content">

                <div class="content-wrap notoppadding nobottompadding">



                    <!-- group 1 -->
                    <section id="section_about" class="corner clearfix">
                        <div class="container">
                            <h2 style="font-family: Roboto;font-size: 48px">Store
                                <span style="font-family: Roboto;color: #ff5722;">
                                    PERFUME PARADISE
                                </span>
                            </h2>
                            <h3 style="font-weight: 400;">
                                Cửa hàng phân phối nước hoa chính hãng tại Việt Nam
                            </h3>
                            <div class="section_about_content col-md-12" style="margin-top: 30px;">
                                <div class="col-md-4" style="text-align: center;">
                                    <img src="images/products/Women/20-2.png"
                                         alt="heading_image">
                                </div>
                                <div class="col-md-8">
                                    <div class="section_about_content_text">
                                        <p><i class="fa fa-check" aria-hidden="true"></i><span>Cam kết</span>
                                            chính hãng.</p>
                                        <p><i class="fa fa-check" aria-hidden="true"></i>Chính xách bảo hành cho tất cả các sản phẩm
                                            <span>10 năm.</span></p>
                                        <p><i class="fa fa-check" aria-hidden="true"></i>Giao hàng
                                            <span>nhanh chóng</span> nhận hàng sau 3 ngày.</p>
                                    </div>
                                    <a class="button-click" href="#section_detail" data-href="#section_detail">
                                        <button>CHỌN MUA NGAY </button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- end group 1 -->





                    <!-- group 2 -->
                    <section id="section_inspiration" class="marbtm10 clearfix">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="col-sm-12 col-md-9 col-md-offset-3 pad0">
                                    <div class="section_content">
                                        <h2 class="section_inspiration_title">Cam Kết Chính Hãng</h2>
                                        <div class="section_inspiration_content">
                                            <p>
                                                Tại Perfume Paradise, chúng tôi tự hào mang đến cho quý khách hàng những sản phẩm nước hoa chính hãng, đảm bảo về chất 
                                                lượng và nguồn gốc xuất xứ. Chúng tôi hợp tác chặt chẽ với các nhãn hiệu nổi tiếng trên thị
                                                trường để đảm bảo rằng mọi sản phẩm mà quý khách chọn lựa đều là sự kết hợp tinh tế giữa nghệ thuật và chất lượng.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 pad0">
                                <a href="">
                                    <picture>
                                        <img src="images/banner/banner2.jpg"
                                             alt="section_inspiration_small" itemprop="image"
                                             title="section_inspiration_small">
                                    </picture>
                                </a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 pad0">
                                <a href="">
                                    <picture>

                                        <img src="images/banner/banner13.jpg"
                                             alt="section_inspiration_large" itemprop="image"
                                             title="section_inspiration_large">
                                    </picture>
                                </a>
                            </div>
                        </div>
                    </section>
                    <!-- end group 2 -->





                    <!-- group 3 -->
                    <section id="section_material" class="clearfix">
                        <div class="row marbtm10">
                            <div class="col-sm-6 col-sm-push-6 pad0">
                                <div class="col-sm-12 col-md-9">
                                    <div class="section_content">
                                        <h3 class="section_material_1_title">Mẫu Mã Đa Dạng</h3>

                                        <blockquote class="section_material_1_quote"><i>Chúng tôi hiểu rằng mỗi người đều có cái 
                                                tôi riêng biệt, vì vậy chúng tôi không chỉ cung cấp những hương thơm phổ biến mà còn 
                                                mang đến những dòng nước hoa độc đáo và nổi bật</i></blockquote>

                                        <div class="section_material_1_content">
                                            Perfume Paradise tự hào mang đến cho quý khách hàng một bộ sưu tập nước hoa đa dạng và phong phú,
                                            từ những hương thơm tinh tế và quyến rũ cho đến những lựa chọn tươi mới và tràn đầy năng lượng.
                                            Chúng tôi liên tục cập nhật danh mục sản phẩm để đáp ứng mọi sở thích và phong cách cá nhân của quý khách.
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-sm-pull-6 pad0">
                                <picture>
                                    <img src="images/banner/banner8.jpg"
                                         alt="section_material_1_image" itemprop="image" title="section_material_1_image">
                                </picture>
                            </div>
                        </div>
                        <div class="row marbtm10">
                            <div class="col-sm-6 pad0">
                                <div class="col-sm-12 col-md-9 col-md-offset-3">
                                    <div class="section_content">
                                        <h3 class="section_material_2_title">Hỗ Trợ Khách Hàng Nhanh Chóng</h3>

                                        <div class="section_material_2_content">
                                            Tại Perfume Paradise, đội ngũ hỗ trợ khách hàng của chúng tôi luôn sẵn sàng lắng
                                            nghe và giải đáp mọi thắc mắc của quý khách. Bạn có thể liên hệ với chúng tôi thông 
                                            qua điện thoại, email hoặc trực tiếp tại cửa hàng để nhận được sự tư vấn chuyên nghiệp 
                                            và nhanh chóng. Chúng tôi tin rằng sự hài lòng của khách hàng là chìa khóa mở cửa cho sự 
                                            thành công của chúng tôi.
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 pad0">
                                <picture>
                                    <img src="images/banner/banner14.jpg"
                                         alt="section_material_2_image" itemprop="image" title="section_material_2_image">
                                </picture>
                            </div>
                        </div>
                    </section>
                    <!-- end group 3 -->






                    <!-- group 5 -->
                    <div class="clear"></div>

                    <div id="section_contact" class="page-section nobottompadding notoppadding">
                        <div class="row noleftmargin norightmargin common-height">
                            <!--		
    <div id="headquarters-map" class="col-md-8 col-sm-6 gmap hidden-xs"></div>
                            -->

                            <!-- Google Map
    ============================================= -->
                            <div class='index_map col-md-8 col-sm-6 hidden-xs nopadding'>
                                <iframe
                                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.60994153052!2d106.80730807586922!3d10.841132857995166!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752731176b07b1%3A0xb752b24b379bae5e!2sFPT%20University%20HCMC!5e0!3m2!1sen!2s!4v1703229023591!5m2!1sen!2s"
                                    width="100%" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>

                            </div>

                            <!-- Google Map End -->

                            <div class="col-md-4 col-sm-6" style="background-color: #383c44">
                                <div class="max-height" style='padding: 60px 30px'>
                                    <h3 class="" style='color: #ffffff; font-size: 24px; '>Văn phòng chính</h3>

                                    <div style="line-height: 1.7;">






                                        <address style="line-height: 1.7; font-size: 16px; color: #dbdbdb ;">
                                            <strong style='color: #fff'>North America:</strong><br>
                                            795 Folsom Ave, Suite 600<br>
                                            San Francisco, CA 94107<br>

                                        </address>







                                        <address style="line-height: 1.7; font-size: 16px; color: #dbdbdb ;">
                                            <strong style='color: #fff'>Miền Nam:</strong><br>
                                            61/2 Quang Trung, Ward 10<br>
                                            Go Vap District, Ho Chi Minh city<br>
                                            Hotline: 123456789<br />
                                            Email: hello@egany.com
                                        </address>







                                        <address style="line-height: 1.7; font-size: px; color: #ffffff ;">

                                        </address>







                                        <address style="line-height: 1.7; font-size: px; color: #ffffff ;">

                                        </address>







                                        <address style="line-height: 1.7; font-size: px; color: #ffffff ;">

                                        </address>


                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <style>
                        #section_contact {
                            position: relative;
                        }

                        .modal-body {
                            padding: 30px 15px;
                        }

                        button.close {
                            margin: 5px 10px;
                            z-index: 99;
                            position: absolute;
                            right: 0;
                        }

                        .contact-form {
                            background: #fff;
                            height: 356px
                        }

                        .flip-box-part {
                            padding: 38px 40px 34px;
                            width: 100%;
                            margin: 0;
                            top: 0;
                            left: 0;
                            -webkit-backface-visibility: hidden;
                            backface-visibility: hidden;
                            -webkit-transition: 0.6s;
                            -webkit-transform-style: preserve-3d;
                            -webkit-transform: rotateY(0deg);
                            -moz-transition: 0.6s;
                            -moz-transform-style: preserve-3d;
                            -moz-transform: rotateY(0deg);
                            -o-transition: 0.6s;
                            -o-transform-style: preserve-3d;
                            -o-transform: rotateY(0deg);
                            -ms-transition: 0.6s;
                            -ms-transform-style: preserve-3d;
                            -ms-transform: rotateY(0deg);
                            transition: 0.6s;
                            -webkit-transform-style: preserve-3d;
                            transform-style: preserve-3d;
                            -webkit-transform: rotateY(0deg);
                            transform: rotateY(0deg);
                        }

                        .btn-block {
                            font: 600 19px/63px "Poppins", sans-serif;
                            text-transform: uppercase;
                            border: none;
                            transition: all 300ms linear 0s;
                            border-radius: 0;
                            background: #0084ff;
                            color: #FFF;
                            white-space: nowrap;
                            overflow: hidden;
                            text-overflow: ellipsis;
                        }

                        .form-control {
                            border-radius: 0;
                            box-shadow: none;
                            font: 300 17px/24px "Poppins", sans-serif;
                            padding: 12px 18px;
                            height: 50px;
                            border-color: #e0e8ee;
                            background: #f8fbfd;
                        }

                        .contact-form .js-close-flip {
                            position: absolute;
                            right: 0;
                            top: 0;
                            padding: 5px 10px;
                            font-size: 23px;
                            text-decoration: none;
                            color: #c0cad0;
                        }

                        .form-group {
                            margin-bottom: 20px;
                        }

                        .row-15 {
                            margin-left: -15px;
                            margin-right: -15px;
                        }

                        .contact-box h2 {
                            color: #374048;
                            margin: 0;
                            font-weight: bold;
                            text-transform: uppercase;
                        }

                        .contact-box ul li {
                            color: #777;
                            font-size: 16px;
                            padding-left: 30px;
                        }

                        .contact-box ul li i {
                            width: 30px;
                            float: left;
                            margin-left: -30px;
                            line-height: 32px;
                        }

                        .contact-box ul {
                            margin: 25px 0 30px;
                        }

                        .contact-box ul li+li {
                            margin-top: 10px;
                        }
                    </style>
                </div>
            </section>

            <!-- #content end -->
            <jsp:include page="footer.jsp"/>
        </div><!-- #wrapper end -->

    </script>
    <link href="//bizweb.dktcdn.net/100/048/087/themes/776353/assets/bootstrap.min.scss.css?1671122359380"
          rel="stylesheet" type="text/css" media="all" />
    <link href="//bizweb.dktcdn.net/100/048/087/themes/776353/assets/style.css?1671122359380" rel="stylesheet"
          type="text/css" media="all" />
    <link rel="stylesheet" type="text/css"
          href="//hstatic.net/0/global/design/member/fonts/svn-gotham-book,sans-serif.css">

    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="//bizweb.dktcdn.net/100/048/087/themes/776353/assets/scripts.js?1671122359380"
    type="text/javascript"></script>
    <script>
                !function ($)
                {
                    "use strict";
                    if ($('.l-preloader').length) {
                        $('document').ready(function () {
                            setTimeout(function () {
                                $('.l-preloader').addClass('done');
                            }, 500);
                            setTimeout(function () {
                                $('.l-preloader').addClass('hidden');
                            }, 1000); // 500 ms after 'done' class is added
                        });
                    }
                }(jQuery);
    </script>-->

</body>
</html>
