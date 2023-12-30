<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Statistic</title>
        <link rel="icon" href="images/logo1.png"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <!------ Include the above in your HEAD tag ------>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/> 



        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/bootstrap.min.css">
        <!-- Material Design Bootstrap -->
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb-pro.min.css">
        <!-- Material Design Bootstrap Ecommerce -->
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb.ecommerce.min.css">
        <!-- Your custom styles (optional) -->
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ------>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/> 
        <style>
            body {
                margin: 0;
                padding: 0;
            }
        </style>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"><link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&amp;display=swap"><link rel="stylesheet" type="text/css" href="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/css/mdb5/3.8.1/compiled.min.css"><link rel="stylesheet" type="text/css" href="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/css/mdb-plugins-gathered.min.css"><style>body {
                background-color: #fbfbfb;
            }
            @media (min-width: 991.98px) {
                main {
                    padding-left: 240px;
                }
            }

            /* Sidebar */
            .sidebar {
                position: fixed;
                top: 0;
                bottom: 0;
                left: 0;
                padding: 58px 0 0; /* Height of navbar */
                box-shadow: 0 2px 5px 0 rgb(0 0 0 / 5%), 0 2px 10px 0 rgb(0 0 0 / 5%);
                width: 240px;
                z-index: 600;
            }

            @media (max-width: 991.98px) {
                .sidebar {
                    width: 100%;
                }
            }
            .sidebar .active {
                border-radius: 5px;
                box-shadow: 0 2px 5px 0 rgb(0 0 0 / 16%), 0 2px 10px 0 rgb(0 0 0 / 12%);
            }

            .sidebar-sticky {
                position: relative;
                top: 0;
                height: calc(100vh - 48px);
                padding-top: 0.5rem;
                overflow-x: hidden;
                overflow-y: auto; /* Scrollable contents if viewport is shorter than content. */
            }
            .text_page_head{
                font-size: 18px;
                font-weight: 600;
            }
            .text_page {
                font-size: 14px;
                font-weight: 600;
            }
        </style>
    </head>
    <body>
        <!--Main Navigation-->
        <header>
            <jsp:include page="leftadmin.jsp"></jsp:include>
            </header>
            <!--Main Navigation-->
        <jsp:include page="header_right.jsp"></jsp:include>
            <!--Main layout-->
            <main>
                <div class="container pt-4"><!--Section: Sales Performance KPIs-->
                    <section class="mb-4">
                    <c:if test="${error!=null }">
                        <div class="alert alert-danger" role="alert">
                            ${error}
                        </div>
                    </c:if>
                    <c:if test="${mess!=null }">
                        <div class="alert alert-success" role="alert">
                            ${mess}
                        </div>
                    </c:if>

                    <div class="card">
                        <div class="py-3 row">
                            <div class="col-sm-12" style="padding:15px 0">
                                <h3 class="mb-0 text-center" id="">
                                    <strong>Invoice</strong>
                                </h3>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-hover text-nowrap">
                                    <thead>
                                        <tr>
                                            <th class="text_page_head" scope="col"></th>
                                            <th  class="text_page_head" scope="col">Order Id</th>
                                            <th class="text_page_head" scope="col">Username</th>
                                            <th class="text_page_head" scope="col">Total money($)</th>
                                            <th class="text_page_head" scope="col">Order date</th>
                                            <th class="text_page_head" scope="col">Status</th>
                                        </tr>
                                    </thead>
                                    <tbody id="content">
                                        <c:forEach items="${listAllInvoice}" var="i">
                                            <tr>
                                                <th scope="row"></th>
                                                <td  class="text_page">${i.orderId}</td>
                                                <td class="text_page">${i.userName}</td>
                                                <td class="text_page">${String.format("%.02f",i.total)}</td>
                                                <td class="text_page">${i.date}</td> 
                                                <td id="status" class="text_page">
                                                    ${i.status?"Delivered":"Not delivery"}
                                                    <c:if test="${!i.status}">
                                                        <button style="margin-left: 20px" onclick="changeStatus(this, ${i.orderId})">
                                                            <i style="color: green" class="fa-solid fa-check"></i>
                                                        </button>
                                                    </c:if>
                                                </td> 
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table> 
                            </div>
                        </div>
                    </div>
                </section>
                <!--Section: Sales Performance KPIs-->
            </div>
        </main>
        <div class="modal fade" id="modal_box" role="dialog"></div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>   
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>
        <script src="js/countdown.js"></script>
        <script src="js/clickevents.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js"></script>
        <script src="js/main.js"></script>
        <script>
                                                            function searchByDate(param) {
                                                                var txtSearchDate = param.value;
                                                                $.ajax({
                                                                    url: "/WebsiteBanGiay/searchAjaxHoaDon",
                                                                    type: "get", //send it through get method
                                                                    data: {
                                                                        ngayXuat: txtSearchDate
                                                                    },
                                                                    success: function (responseData) {
                                                                        document.getElementById("content").innerHTML = responseData;
                                                                    }

                                                                });
                                                            }

                                                            function changeStatus(obj1, obj2) {
                                                                var id = obj2;
                                                                $.ajax({
                                                                    url: "/PefumeMN-Website/orderstatus",
                                                                    type: "post",
                                                                    data: {
                                                                        id: id
                                                                    },
                                                                    success: function () {
                                                                        var row = obj1.parentElement;
                                                                        row.innerHTML = 'Delivered';
                                                                    },
                                                                    error: function (xhr) {
                                                                    }
                                                                });
                                                            }
        </script>
    </body>
</html>