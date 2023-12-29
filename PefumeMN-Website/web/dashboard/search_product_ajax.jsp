<%-- 
    Document   : search_product_ajax
    Created on : Dec 30, 2023, 1:31:01 AM
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
</body>
</html>
