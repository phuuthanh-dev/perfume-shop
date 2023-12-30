<%-- 
    Document   : newsletter_ajax
    Created on : Dec 30, 2023, 9:17:04 AM
    Author     : lvhho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="newsletter_container">
            <div class="section_title section_title_style2">
                <h2>Newsletter</h2>
            </div>
            <div class="subscribe_form">
                <c:if test="${requestScope.emailUser!=null}">
                    <div class="newsletter_content" >
                        <p style="color: green">Thank you, we will email you as soon as possible.</p>
                    </div>
                </c:if>
                <form action="email">
                    <input name="email" type="email" autocomplete="off" placeholder="example@gmail.com" value="${requestScope.emailUser}">
                    <button type="submit">
                        <i class="fa fa-envelope-o"></i>
                    </button>
                </form>
            </div>
            <div class="newsletter_content">
                <p>Sign up to get news and get 25% off instantly.</p>
            </div>
        </div>
    </body>
</html>
