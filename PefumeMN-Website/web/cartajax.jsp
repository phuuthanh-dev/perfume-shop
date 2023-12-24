<%-- 
    Document   : cartajax
    Created on : Dec 24, 2023, 7:49:46 PM
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
        <a href="javascript:void(0)">
            <i class="fa fa-shopping-cart"></i>
            <c:if test="${sessionScope.cart != null && sessionScope.cartSize != 0}" >
                <span class="item_count">
                    ${sessionScope.cartSize}
                </span>
            </c:if>
        </a>

        <div class="mini_cart mini_cart2">
            <c:set var="subTotal" value="0"/>
            <c:set var="subPrice" value="0"/>
            <div class="cart_gallery" style="max-height: 250px; overflow-y: auto;">
                <div id="productsCart">
                    <c:if test="${sessionScope.cart != null && sessionScope.cartSize != 0}">
                        <c:forEach items="${sessionScope.listItemsInCart}" var="p">
                            <div class="cart_item">
                                <div class="cart_img">
                                    <a href="#"><img src="${p.product.image1}"
                                                     alt="Perfume"></a>
                                </div>
                                <div class="cart_info">
                                    <a href="#">${p.product.name}</a>
                                    <p><span>Rs.${p.price}</span> X ${p.quantity}</p>
                                </div>
                                <div class="cart_remove">
                                    <a href="cart?rid=${p.product.id}"><i class="fa fa-times"></i></a>
                                </div>
                            </div>
                            <c:set var="subTotal" value="${subTotal + (p.product.price*p.quantity)}"/>
                            <c:set var="subPrice" value="${subPrice + (p.price * p.quantity)}"/>
                        </c:forEach>
                    </c:if>
                </div>
                <c:if test="${sessionScope.cart == null || sessionScope.cartSize == 0}">
                    <span class="header__cart-list--no-cart-msg">Nothing now!</span>
                    <img src="images/emptycart.png" alt="Emptycart" style=" width: 60%;">
                </c:if>
            </div>
            <div class="mini_cart_table">
                <div class="cart_table_border">
                    <div class="cart_total">
                        <span>Sub Total :</span>
                        <span class="price" style="color:grey">Rs. ${subTotal}</span>
                    </div>

                    <div class="cart_total mt-10">
                        <span>Total :</span>
                        <span class="price">Rs. ${subPrice}</span>
                    </div>

                </div>
            </div>
            <div class="mini_cart_footer">
                <div class="cart_button">
                    <a href="${sessionScope.account == null ? 'login' : 'viewcart'}">View Cart</a>
                </div>
            </div>
        </div>
    </body>
</html>
