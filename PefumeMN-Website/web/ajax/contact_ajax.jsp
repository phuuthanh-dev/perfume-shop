<%-- 
    Document   : contact_ajax
    Created on : Dec 30, 2023, 9:52:20 AM
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
        <div class="row group_contact">
            <fieldset class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <label>Họ và tên </label>
                <input placeholder="Họ và tên*" type="text"
                       class="form-control  form-control-lg" required value="${requestScope.fullName}"
                       id="fullNameContact">
            </fieldset>
            <fieldset class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <label>Email </label>
                <input placeholder="Email*" type="email"
                       pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required
                       id="emailContact" class="form-control form-control-lg" value="${requestScope.email}"
                       >
            </fieldset>
            <fieldset class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <label>Nội dung </label>
                <textarea placeholder="Nội dung*"  id="commentContact" value="${requestScope.comment}"
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
    </body>
</html>
