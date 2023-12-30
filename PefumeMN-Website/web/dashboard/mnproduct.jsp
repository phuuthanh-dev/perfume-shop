<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Quản lý sản phẩm</title>
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

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css">
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/bootstrap.min.css">
        <!-- Material Design Bootstrap -->
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb-pro.min.css">
        <!-- Material Design Bootstrap Ecommerce -->
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb.ecommerce.min.css">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ------>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/> 
        <style>
            td img {
                width: 200px;
                height: 120px;
            }
            body {
                margin: 0;
                padding: 0;
            }

            .alert.alert-success {
                margin: 20px 10px;
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
            .text_page_head{
                font-size: 18px;
                font-weight: 600;
            }
            .text_page {
                font-size: 14px;
                font-weight: 600;
            }
            .buttonadd{
                position: absolute;
                right: 100px;
                top: 30px;
            }
            .sidebar-sticky {
                position: relative;
                top: 0;
                height: calc(100vh - 48px);
                padding-top: 0.5rem;
                overflow-x: hidden;
                overflow-y: auto; /* Scrollable contents if viewport is shorter than content. */
            }
            select {
                width: 32.3%;
                margin: 0;
                font-size: 100%;
                padding: 5px 10px 5px 10px;
                font-family: Segoe UI, Helvetica, sans-serif;
                border: 1px solid #D0D0D0;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
                border-radius: 20px;
                outline: none;
            }
        </style>
    </head>
    <body>

        <!--Main Navigation-->
        <header>
            <jsp:include page="leftadmin.jsp"></jsp:include>
            </header>
        <jsp:include page="header_right.jsp"></jsp:include>
            <!--Main layout-->
            <main>
                <div class="container pt-4">
                    <!--Section: Quan Ly tai Khoan-->
                    <section class="mb-4">
                        <div class="card">
                            <div class="row" style="">
                                <div class="col-sm-4" style="text-align: center; margin-top: 20px; padding-top: 20px">
                                    <h3 class="mb-0" id="">
                                        <strong>Manage Products</strong>
                                    </h3>
                                </div>
                                <div class="col-lg-6" style="text-align: center; margin-top: 20px; margin-bottom: 20px;padding-top: 20px"F>
                                    <form action="manager" method="post" style="display: flex; justify-content: center">
                                        <input name="valueSearch" value="${requestScope.searchValue != null ? requestScope.searchValue : ""}" id="searchId" type="text" oninput="searchByName()" placeholder="Search product name" style="width: 60%; padding: 4px 10px; border-radius: 15px">
                                    <button type="submit" style="border-radius: 50%; width: 40px; font-size: 18px; margin-left: 10px"><i class="fa fa-search"></i></button>
                                </form>
                            </div>
                            <div class="col-lg-2">
                                <a href="#addEmployeeModal" style="height: 40px" class="buttonadd btn btn-success" data-toggle="modal"><i class="fa-solid fa-plus"></i></a>

                            </div>

                        </div>

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

                        <div class="card-body">
                            <div class="table-responsive"  id="contentt">
                                <table  class="table table-hover text-nowrap">
                                    <thead>
                                        <tr>
                                            <th class="text_page_head" scope="col">ID</th>
                                            <th class="text_page_head" scope="col">Name</th>
                                            <th class="text_page_head" style="text-align: center" scope="col">Image</th>
                                            <th class="text_page_head" scope="col">Price</th>
                                            <th class="text_page_head" scope="col">Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody >
                                        <c:forEach items="${listByPage}" var="o">
                                            <tr class="product_items">
                                                <td class="text_page">${o.id}</td>
                                                <td style="max-width: 280px;" class="text_page">${o.name}</td>
                                                <td style="text-align: center">
                                                    <img style="width: 170px; height:180px" src="${o.image[0]}">
                                                </td>
                                                <td class="text_page">${o.price}$</td>
                                                <td class="text_page">
                                                    <a href="updateproduct?pid=${o.id}"><button type="button" class="btn btn-warning"><i class="fa-solid fa-pen"></i></button></a>
                                                    <a href="deleteproduct?pid=${o.id}"><button type="button" class="btn btn-danger"><i class="fa-solid fa-trash"></i></button></a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>

                                <div class="clearfix" style="text-align: center">
                                    <ul class="pagination">
                                        <c:if test="${page != 1}">
                                            <a class="page-item" href="manager?page=${page-1}">Previous</a>
                                        </c:if> 	
                                        <c:forEach begin="1" end="${numberpage}" var="i">
                                            <a class="${page==i?"page-item activee":""}" style="${page==i?"background-color:black; color: white; font-size: 22px; float: left; padding: 8px 16px; text-decoration: none;":""}" 
                                               href="manager?page=${i}" class="page-link">${i}</a>  
                                        </c:forEach>
                                        <c:if test="${page < numberpage}">
                                            <a class="page-item" href="manager?page=${page+1 }" class="page-link">Next</a>
                                        </c:if> 
                                    </ul>
                                </div>

                            </div>
                        </div>
                    </div>
                </section>
                <!--Section: Quan Ly tai Khoan-->
            </div>


        </main>
        <div class="modal fade" id="modal_box" role="dialog"></div>
        <!-- Edit Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog" style="margin: 28px 500px">
                <div class="modal-content" style="width: 1000px; max-height: 900px; overflow: scroll">
                    <form action="addproduct" method="get" enctype="multipart/form-data">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add Product</h4>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Product Name</label>
                                <input name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <input multiple name="image" type="file">
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input name="price" type="number" step="0.01" min="0" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Describe</label>
                                <textarea name="describe" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Quantity</label>
                                <input name="quantity" type="text" class="form-control" >
                            </div>
                            <div class="form-group">
                                <label>Quantity Per Unit</label>
                                <input name="quantityunit" type="text" class="form-control" >
                            </div>
                            <div class="form-group">
                                <input type="hidden" id="stringdateolb" value="${detail.date}">
                                <div style="margin-bottom: 10px">Release Date</div>
                                <input type="hidden" name="date" value="" id="here"/>
                                <select class="bear-dates" id="dobDay" ></select>
                                <select class="bear-months" id="dobMonth"></select>
                                <select class="bear-years" id="dobYear"></select>
                            </div>
                            <div class="form-group">
                                <label>Discount</label>
                                <input name="discount" type="text" class="form-control" >
                            </div>
                            <div class="form-group">
                                <label>Supplier</label>
                                <select style="padding: 5px 0" name="supplier" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${list}" var="sup">
                                        <option value="${sup.id}">${sup.companyName}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Category</label>
                                <select style="padding: 5px 0" name="category" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${listCC}" var="o">
                                        <option value="${o.id}">${o.name}</option>
                                    </c:forEach>
                                </select>
                            </div>

                        </div>
                        <div class="modal-footer">  
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" onclick="submitForm()" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>


        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>   
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>
        <script src="js/calender.js"></script>
        <script src="js/main.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js"></script>
        <script src="js/clickevents.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://mdbootstrap.com/previews/ecommerce-demo/js/jquery-3.4.1.min.js"></script>
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/popper.min.js"></script>
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/bootstrap.js"></script>
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.min.js"></script>
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.ecommerce.min.js"></script>
        <script type="text/javascript" src="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/js/plugins/mdb-plugins-gathered.min.js"></script>

        <script src="js/countdown.js"></script>
        <script type="text/javascript">
                                function addOption(selectElement, value, text) {
                                    var option = document.createElement("option");
                                    option.value = value;
                                    option.text = text;
                                    selectElement.add(option);
                                }

                                var defaultReleaseDate = document.getElementById("stringdateolb").value;
                                var defaultDateArray = defaultReleaseDate.split('-');
                                var defaultDay = parseInt(defaultDateArray[2]);
                                var defaultMonth = parseInt(defaultDateArray[1]);
                                var defaultYear = parseInt(defaultDateArray[0]);

                                var daysSelect = document.getElementById('dobDay');
                                var monthsSelect = document.getElementById('dobMonth');
                                var yearsSelect = document.getElementById('dobYear');

                                for (var day = 1; day <= 31; day++) {
                                    addOption(daysSelect, day, day);
                                }

                                for (var month = 1; month <= 12; month++) {
                                    addOption(monthsSelect, month, month);
                                }

                                var currentYear = new Date().getFullYear();
                                for (var year = currentYear; year >= 1900; year--) {
                                    addOption(yearsSelect, year, year);
                                }

                                daysSelect.value = defaultDay;
                                monthsSelect.value = defaultMonth;
                                yearsSelect.value = defaultYear;


        </script>
    </body>


</html>