<%-- 
    Document   : load
    Created on : Dec 22, 2023, 3:28:44 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:forEach items="${requestScope.productPage}" var="i">
            <div class="product_items col-lg-4" style="margin: 30px 0">
                <article class="single_product">
                    <figure>
                        <div class="product_thumb">
                            <a href="#" class="primary_img">
                                <img src="${i.image1}" alt="">
                            </a>
                            <a href="#" class="secondary_img">
                                <img src="${i.image2}" alt="">
                            </a>

                            <div class="action_links">
                                <ul>
                                    <li class="add_to_cart"
                                        onclick="openModal('modal_box', '${i.image1}', '${i.image2}',
                                                        '${i.name}',${i.salePrice},${i.price}, '${i.describe}', '${i.classifyStr}',
                                                        '${i.supplier.getCompanyName()}')">
                                        <a href="#" data-toggle="modal" data-target="#modal_box" title="Add to Cart">
                                            <i class="fa fa-shopping-cart"></i>
                                        </a>
                                    </li>
                                    <li class="wishlist">
                                        <a href="#" data-toggle="modal" data-target="#modal_box" title="Add to Wishlist">
                                            <i class="fa fa-heart-o"></i>
                                        </a>
                                    </li>
                                    <li class="quick_button" 
                                        onclick="openModal('modal_box', '${i.image1}', '${i.image2}',
                                                        '${i.name}',${i.salePrice},${i.price}, '${i.describe}', '${i.classifyStr}',
                                                        '${i.supplier.getCompanyName()}')" >
                                        <a href="#" data-toggle="modal"
                                           data-target="#modal_box" title="Quick View">
                                            <i class="fa fa-eye"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <figcaption class="product_content">
                            <h4 class="product_name">
                                <a href="#">${i.name}</a>
                            </h4>
                            <div class="product_rating">
                                <ul>
                                    <c:set var="numstar" value="${i.starRating}"/>
                                    <c:forEach begin="1" end="${numstar}" step="1">
                                        <li>
                                            <a href="#" style="color: orange">
                                                <i class="fa fa-star"></i>
                                            </a>
                                        </li>
                                    </c:forEach>
                                    <c:if test="${numstar != 5}">
                                        <c:forEach begin="${numstar + 1}" end="5" step="1">
                                            <li>
                                                <a href="#" style="color: black">
                                                    <i class="fa fa-star"></i>
                                                </a>
                                            </li>
                                        </c:forEach>
                                    </c:if>
                                </ul>
                            </div>
                            <div class="price_box">
                                <c:if test="${i.price != i.salePrice}">
                                    <span class="old_price">Rs. ${i.price}</span>
                                </c:if>
                                <span class="current_price">Rs. ${i.salePrice}</span>
                            </div>
                        </figcaption>
                    </figure>
                </article>
            </div>
        </c:forEach>
    </body>
</html>
