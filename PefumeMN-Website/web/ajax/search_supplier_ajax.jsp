<%-- 
    Document   : search_supplier_ajax
    Created on : Dec 30, 2023, 1:48:52 AM
    Author     : lvhho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:forEach items="${listAllSupplier}" var="o">
        <tr>
            <td class="text_page">${o.id}</td>
            <td class="text_page">${o.companyName}</td>
            <td class="text_page">${o.phone}</td>
            <td class="text_page">${o.contactName}</td>
            <td class="text_page">${o.country}</td> 
            <td class="text_page" style="padding: 0 12px 16px">
                <a href="updatesupplier?sid=${o.id}"><button type="button" class="btn btn-warning"><i class="fa-solid fa-pen"></i></button></a>
                <a href="deletesupplier?sid=${o.id}"><button type="button" class="btn btn-danger">
                        <i class="fa-solid fa-trash" data-toggle="tooltip" title="Delete"></i>
                    </button>
                </a>
            </td> 
        </tr>
    </c:forEach>
</body>
</html>
