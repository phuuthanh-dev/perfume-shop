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

        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">


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
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>

        <!--           <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round"> -->
        <!--         <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"> -->
        <!--       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> -->
        <!--     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">  -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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

            .text_page_head{
                font-size: 18px;
                font-weight: 600;
            }
            .text_page {
                font-size: 14px;
                font-weight: 600;
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
            }</style>
    </head>
    <body>

        <!--Main Navigation-->
        <header>
            <jsp:include page="leftadmin.jsp"></jsp:include>
            </header>
        <jsp:include page="header_right.jsp"></jsp:include>
            <!--Main Navigation-->

            <!--Main layout-->
            <main>
                <div class="container pt-4">          
                    <section class="mb-4">
                        <div class="card">
                            <div class="row" style="">
                                <div class="col-lg-4" style="text-align: center; margin-top: 20px; margin-bottom: 20px;padding-top: 20px">
                                    <h3 class="mb-0" id="">
                                        <strong>Manage Account</strong>
                                    </h3>
                                </div>
                                <div class="col-lg-2"></div>
                                <div class="col-lg-6" style="text-align: center; margin-top: 20px; margin-bottom: 20px;padding-top: 20px"F>
                                    <form action="managersupplier" method="post" style="display: flex; justify-content: center">
                                        <input name="valueSearch" value="${requestScope.searchValue != null ? requestScope.searchValue : ""}" id="searchId" type="text" oninput="searchByName()" placeholder="Search company name" style="width: 60%; padding: 4px 10px; border-radius: 15px">
                                    <button type="submit" style="border-radius: 50%; width: 40px; font-size: 18px; margin-left: 10px"><i class="fa fa-search"></i></button>
                                </form>
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
                            <div class="table-responsive">
                                <table class="table table-hover text-nowrap">
                                    <thead>
                                        <tr>
                                            <th class="text_page_head" scope="col">ID</th>
                                            <th class="text_page_head" scope="col">Company name</th>
                                            <th class="text_page_head" scope="col">Phone</th>
                                            <th class="text_page_head" scope="col">Contact name</th> 
                                            <th class="text_page_head" scope="col">Country</th> 
                                            <th class="text_page_head" scope="col">
                                                <a  style="margin-left: 30px" href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"><i class="fa-solid fa-plus"></i></a>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody id="contentt">
                                        <c:forEach items="${listAllSupplier}" var="o">
                                            <tr>
                                                <td class="text_page">${o.id}</td>
                                                <td class="text_page">${o.companyName}</td>
                                                <td class="text_page">${o.phone}</td>
                                                <td class="text_page">${o.contactName}</td>
                                                <td class="text_page">${o.country}</td> 
                                                <td class="text_page" style="padding: 0 12px 16px">
                                                    <a href="updatesupplier?sid=${o.id}"><button type="button" class="btn btn-warning"><i class="fa-solid fa-pen"></i></button></a>
                                                    <a href="deletesupplier?sid=${o.id}">
                                                        <button type="button" class="btn btn-danger">
                                                            <i class="fa-solid fa-trash" data-toggle="tooltip" title="Delete"></i>
                                                        </button>
                                                    </a>
                                                </td> 
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </section>
                <!--Section: Quan Ly tai Khoan-->
            </div>


        </main>
        <!-- Edit Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="addsupplier" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add Supplier</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Company Name</label>
                                <input name="CompanyName" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Contact Name</label>
                                <input name="ContactName" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Country</label>
                                <input name="Country" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Phone</label>
                                <input name="Phone" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Home Page</label>
                                <input name="HomePage" type="text" class="form-control" required>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <script src="js/manager.js" type="text/javascript"></script>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!--Main layout-->
        <!-- SCRIPTS -->
        <!-- JQuery -->
        <script src="https://mdbootstrap.com/previews/ecommerce-demo/js/jquery-3.4.1.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/bootstrap.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.min.js"></script>
        <!-- MDB Ecommerce JavaScript -->
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.ecommerce.min.js"></script>
        <!-- MDB -->
        <script type="text/javascript" src="js/mdb.min.js"></script>
        <!-- Custom scripts -->
        <script type="text/javascript" src="js/script.js"></script>

        <script type="text/javascript" src="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/js/plugins/mdb-plugins-gathered.min.js"></script>
        <!-- MDB -->
        <script type="text/javascript" src="js/mdb.min.js"></script>
        <!-- Custom scripts -->
        <script type="text/javascript" src="js/script.js"></script>
        <script type="text/javascript">
            function searchByName() {
                var text = document.querySelector("#searchId").value;
                $.ajax({
                    url: "/PefumeMN-Website/searchSupplier",
                    type: "get",
                    data: {
                        txt: text
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