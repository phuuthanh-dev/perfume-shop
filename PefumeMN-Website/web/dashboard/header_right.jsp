<%-- 
    Document   : header_right
    Created on : Dec 23, 2023, 5:17:02 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="width: 100%; background-color: black; padding: 21px; margin-bottom: 20px">
            <div style="">
                <ul style="color: black; display: flex; justify-content: flex-end; align-items: center">
                    <li style="color: black; margin-right: 30px" class="header_wishlist">
                        <a href="#">
                            <i style="font-size: 20px; color: white" class="fa-solid fa-bell"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#"> <img src="${sessionScope.account.image}" width="45px" style="color: white; border-radius: 50%"></a>
                    </li>
                    <li style="margin-left: 20px">
                        <a id="logout" href="#" onclick="checkLogout()" style="color: white; text-decoration: underline">${sessionScope.account==null ? "": "LOGOUT"}</a>
                    </li>
                </ul>
            </div>
        </div>
    </body>
</html>
