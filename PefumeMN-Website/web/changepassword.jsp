<%-- 
    Document   : changepassword
    Created on : Dec 30, 2023, 4:37:44 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css">
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css">
        <style type="text/css">
            body{
                margin-top:20px;
                background-color:#f2f6fc;
                color:#69707a;
            }
            .img-account-profile {
                height: 10rem;
            }
            .rounded-circle {
                border-radius: 50% !important;
            }
            .card {
                box-shadow: 0 0.15rem 1.75rem 0 rgb(33 40 50 / 15%);
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

            .btn-danger-soft {
                color: #000;
                background-color: #f1e0e3;
                border-color: #f1e0e3;
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

            i[id='iconsee']:hover {
                color: rgba(0, 0, 0, 0.5);
            }

            i#iconsee {
                position: absolute;
                right: 13px;
                top: 40px;
            }
            
            label {
                font-size: 14px;
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
                                <li>
                                    <a href="profile">Profile</a>
                                </li>
                                <li>
                                    <a href="changepass" class="active" >Security</a>
                                </li>
                                <li><a href="aboutus">About Us</a></li>
                                <li><a href="contact">Contact Us</a></li>
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
            <hr class="mt-0 mb-4">
            <div class="row">
                <div class="col-lg-8">
                    <!-- Change password card-->
                    <div class="card mb-4">
                        <div class="card-header" style="font-weight: 600">Change Password</div>
                        <div class="card-body">
                            <h4 style="color: red">${error}</h4>
                            <h4 style="color: green">${msg}</h4>
                            <h4 style="color: green">${mess}</h4>
                            <form action="changepass" method="post">
                                <div class="mb-3" style="position: relative">
                                    <label class="mb-1" for="currentPassword">Current Password</label>
                                    <input name="oldpass" class="form-control" id="pass" required type="password" placeholder="Enter current password">
                                    <i id="iconsee" style="cursor: pointer" onclick="changeIcon(this)" class="fa-solid fa-eye-slash"></i>
                                </div>
                                <div class="mb-3" style="position: relative">
                                    <label class="mb-1" for="newPassword">New Password</label>
                                    <input oninput="checkNumberCharacter(this)" name="newpass" value="" class="form-control" id="pass1" required type="password" placeholder="Enter new password">
                                    <i id="iconsee" style="cursor: pointer" onclick="changeIcon(this)" class="fa-solid fa-eye-slash"></i>
                                    <label style="color: red; display:none" class="mb-1" id="text1"></label>
                                </div>
                                <div class="mb-3" style="position: relative">
                                    <label class="mb-1" for="confirmPassword">Confirm Password</label>
                                    <input oninput="checkSame(this)" name="cfnewpass" class="form-control" id="pass2" required type="password" placeholder="Confirm new password">
                                    <i id="iconsee" style="cursor: pointer" onclick="changeIcon(this)" class="fa-solid fa-eye-slash"></i>
                                    <label style="color: red; display:none" class="mb-1" id="text"></label>
                                </div>
                                <input name="username" value="${user.userName}" id="confirmPassword" type="hidden">
                                <button style="margin-top: 10px" class="btn btn-primary" type="submit">Save</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <!-- Delete account card-->
                    <div class="card mb-4">
                        <h4 class="card-header">Delete Account</h4>
                        <div class="card-body">
                            <p>Deleting your account is a permanent action and cannot be undone. If you are sure you want to delete your account, select the button below.</p>
                            <a href="deleteaccount?username=${user.userName}" class="btn btn-danger-soft text-danger" type="button">I understand, delete my account</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="modal_box" role="dialog"></div>
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="js/clickevents.js" type="text/javascript"></script>
        <script src="js/main.js" type="text/javascript"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <script type="text/javascript">
                                        function changeIcon(obj) {
                                            var id = obj.previousSibling.previousSibling.id;
                                            var inputP = document.getElementById(id);
                                            if (obj.className == 'fa-solid fa-eye-slash') {
                                                obj.className = 'fa-solid fa-eye';
                                                inputP.type = 'text';
                                            } else {
                                                obj.className = 'fa-solid fa-eye-slash';
                                                inputP.type = 'password';
                                            }
                                        }

                                        function checkSame(obj) {
                                            var text = document.getElementById("text1");
                                            if (text.style.display == 'none') {
                                                var a = document.getElementById("pass1");
                                                if (obj.value !== a.value) {
                                                    var text = document.getElementById("text");
                                                    text.style.display = "block";
                                                    text.textContent = "New password does not match. Please re-enter your new password here.";
                                                } else {
                                                    var text = document.getElementById("text");
                                                    text.style.display = "none";
                                                }
                                            }
                                        }

                                        function checkNumberCharacter(obj) {
                                            var a = document.getElementById("pass1");
                                            if (obj.value.length <= 5) {
                                                var text = document.getElementById("text1");
                                                text.style.display = "block";
                                                text.textContent = "This password should have more than 6 characters and be difficult for others to guess.";
                                            } else {
                                                var text = document.getElementById("text1");
                                                text.style.display = "none";
                                            }
                                        }


        </script>
    </body>
</html>
