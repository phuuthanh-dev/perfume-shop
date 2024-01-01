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
        <title>Profile</title>
        <link rel="icon" href="images/logo1.png"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
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
                width: 150px;
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

            #buttonVip2{
                display: none;
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

            body {
                justify-content: center;
                align-items: center;
                min-height: 100vh;
                width: 100%;
                font-family: "Nunito", sans-serif;
                background-image: url(images/magic.gif);
                background-repeat: no-repeat;
                background-position: center;
                background-size: cover;
            }

            .card{
                border: none;
                border-radius: 10px;
                width: 100%;
                margin-top: 10%;
            }

            .fa-ellipsis-v{
                font-size: 10px;
                color: #C2C2C4;
                margin-top: 6px;
                cursor: pointer;
            }
            .text-dark{
                font-weight: bold;
                margin-top: 8px;
                font-size: 13px;
                letter-spacing: 0.5px;
            }
            .card-bottom{
                background: #3E454D;
                border-radius: 6px;
            }
            .flex-column{
                color: #adb5bd;
                font-size: 13px;
            }
            .flex-column p{
                letter-spacing: 1px;
                font-size: 18px;
            }
            .btn-secondary{
                height: 40px!important;
                margin-top: 3px;
            }
            .btn-secondary:focus{
                box-shadow: none;
            }
        </style>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <c:set var="user" value="${sessionScope.account}"/>
        <c:set var="imageSession" value="${sessionScope.imageUser}"/>
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
                                <li><a href="aboutus">About Us</a></li>
                                <li><a href="contact">Contact Us</a></li>
                                <li>
                                    <a href="profile" class="active">Profile</a>
                                </li>
                                <li>
                                    <a href="changepass">Security</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-lg-6" style="padding: 0px; display: flex; justify-content: flex-end; align-items: center">
                    <%@ include file="header_right.jsp"%>
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
                        <div class="card-body text-center box_info">
                            <c:if test="${imageSession!=null}">
                                <div class="avatar">
                                    <img class="user_image" src="${imageSession}" alt="" id="iUser" style="border: 1px solid #0D6EFD"/>
                                    <input type="file" name="" id="form_file" value=""/>
                                </div>
                            </c:if>
                            <c:if test="${imageSession==null}">
                                <div class="avatar">
                                    <img class="user_image" style="width: 150px" src="images/users/user.PNG" alt="" id="iUser"/>
                                    <input type="file" name="" id="form_file" value=""/>
                                </div>
                            </c:if>
                            <form id="fima">
                                <label for="form_file" class="edit" value="aa">
                                    <div style="color: #0D6EFD;font-size: 16px">JPG or PNG no larger than 5 MB
                                        <i class="fa-solid fa-pen-to-square" style="font-size: 20px; padding: 0 0 0 10px"></i>
                                    </div>
                                </label>
                                <input type="hidden" id="sub" name="imagelink" value=""/>
                                <input type="hidden" id="userid" name="uid" value="${user.userName}"/>
                            </form>
                        </div>
                    </div>
                    <div class="card mb-4 mb-xl-0">
                        <div class="container d-flex justify-content-center">
                            <div class="card p-3" style="margin: 10px 0">
                                <div class="d-flex flex-row justify-content-center text-align-center">
                                    <img src="images/logo.png">
                                    <p class="text-dark">Shopping wallet</p>
                                </div>
                                <div class="card-bottom pt-3 px-3 mb-2" style="padding: 10px">
                                    <div class="d-flex flex-row justify-content-between text-align-center">
                                        <div class="d-flex flex-column"><span>Balance amount</span><p>&euro; <span class="text-white">${sessionScope.wallet.balance}</span></p></div>
                                        <button class="btn btn-secondary" data-toggle="modal" data-target="#modal_box" onclick="modalOpen2('modal_box', '${user.userName}',
                                                        '${imageSession}',${sessionScope.wallet.balance})">
                                            <i class="fas fa-plus text-white"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-8" style="margin-top: -37px">

                    <div class="card mb-4">
                        <div class="card-header" style="font-weight: 700">YOUR PROFILE</div>
                        <div class="card-body">
                            <form method="post" action="profile">
                                <div class="mb-3">  
                                    <label class="mb-1" for="inputUsername">Username</label>
                                    <input class="form-control" id="inputUsername" name="username" readonly type="text" placeholder="Enter your username" value="${user.userName}">
                                </div>
                                <div class="gx-3 mb-3">
                                    <label class="mb-1" for="inputFirstName">Full name</label>
                                    <c:if test="${sessionScope.name!=null}">
                                        <input class="form-control acceptEdit" readonly  name="name" id="inputFirstName" type="text" placeholder="Full Name" value="${sessionScope.name}">
                                    </c:if>
                                </div>

                                <div class="row gx-3 mb-3">

                                    <div class="col-md-6">
                                        <label class="mb-1" for="inputOrgName">Role</label>
                                        <c:if test="${user.roleID == 2}">
                                            <input class="form-control" id="inputOrgName" readonly type="text" placeholder="Enter your organization name" value="Customer">
                                        </c:if>
                                        <c:if test="${user.roleID == 1}">
                                            <input class="form-control" id="inputOrgName" readonly type="text" placeholder="Enter your organization name" value="Admin">
                                        </c:if>
                                    </div>

                                    <div class="col-md-6">
                                        <label class="mb-1" for="inputLocation">Address</label>
                                        <c:if test="${sessionScope.address!=null}">
                                            <input class="form-control acceptEdit" readonly name="address" id="inputFirstName"  type="text" placeholder="Address" value="${sessionScope.address}">
                                        </c:if>
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label class="mb-1" for="inputEmailAddress">Email address</label>
                                    <c:if test="${sessionScope.email!=null}">
                                        <input class="form-control acceptEdit" readonly  name="email" id="inputFirstName"  type="text" placeholder="Email" value="${sessionScope.email}">
                                    </c:if>
                                </div>

                                <div class="row gx-3 mb-3">

                                    <div class="col-md-6">
                                        <label class="mb-1" for="inputPhone">Phone number</label>
                                        <c:if test="${sessionScope.phone!=null}">
                                            <input class="form-control acceptEdit" readonly name="phone" id="inputFirstName"  type="text" placeholder="Phone" value="${sessionScope.phone}">
                                        </c:if>
                                    </div>

                                    <div class="col-md-6">
                                        <label class="mb-1" for="inputBirthday">Birthdate</label>
                                        <c:if test="${sessionScope.birthdate!=null}">
                                            <input class="form-control acceptEdit" readonly name="birthday" id="inputFirstName"  type="text" placeholder="Birthdate" value="${sessionScope.birthdate}">
                                        </c:if>
                                    </div>
                                </div>
                                <button style="" class="btn btn-primary" onclick="acceptRead()" id="buttonVip" type="button">Edit Profile</button>
                                <button style="margin-top: 15px;padding-right: 20px ;padding-left: 20px" class="btn btn-primary"  onclick="notAccept()" id="buttonVip2" type="submit">Save</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="modal_box" role="dialog"></div>
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>   
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>
        <script src="js/countdown.js"></script>
        <script src="js/clickevents.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js"></script>
        <script src="js/main.js"></script>
        <script type="text/javascript">
                                    const $ = document.querySelector.bind(document);

                                    function getImg() {
                                        const input = $('.box_info .avatar input[type="file"]');
                                        const img = $('.box_info .avatar img');

                                        input.addEventListener('change', function (event) {
                                            if (this.files && this.files[0]) {
                                                const newImageLink = 'images_users_' + event.target.files[0].name;
                                                const newImageLink1 = 'images/users/' + event.target.files[0].name;
                                                img.src = newImageLink1;
                                                console.log(newImageLink1);

                                                var form = document.querySelector("#fima");

                                                document.getElementById("sub").value = newImageLink;
                                                form.submit();
                                                console.log(form);
                                            }
                                        });
                                    }
                                    getImg();
        </script>
    </body>
</html>