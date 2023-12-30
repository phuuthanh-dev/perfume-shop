<%-- 
    Document   : checkout_viewcart_ajax
    Created on : Dec 27, 2023, 10:04:54 AM
    Author     : lvhho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View cart</title>
        <link rel="icon" href="images/logo1.png"/>

    </head>
    <body>
        <div class="container px-4 py-5 mx-auto text-center">
            <c:if test="${requestScope.message1 == 'Order Success'}">
                <h2 style="color: green; text-align: center">${requestScope.message1}</h2>
            </c:if>
            <c:if test="${requestScope.message1 == 'Order Fail'}">
                <h2 style="color: red; text-align: center">${requestScope.message1}</h2>
                <h4 style="color: red; text-align: center">${requestScope.message2}</h4>
            </c:if>
            <c:if test="${sessionScope.listItemsInCart == null || sessionScope.cartSize == 0}">
                <<img src="images/emptycart1.png" width="400px"  alt="Emptycart"/>
            </c:if>
            <c:if test="${sessionScope.cartSize != 0}">
                <div class="row d-flex justify-content-center">
                    <div class="col-4">
                        <h4 class="heading">Shopping Bag</h4>
                    </div>
                    <div class="col-8">
                        <div class="row text-right">
                            <div class="col-3">
                                <h6 class="mt-2">Supplier</h6>
                            </div>
                            <div class="col-3">
                                <h6 class="mt-2">Quantity</h6>
                            </div>
                            <div class="col-3">
                                <h6 class="mt-2">Price</h6>
                            </div>
                            <div class="col-3" style="padding-right: 30px">
                                <h6 class="mt-2">Delete</h6>
                            </div>
                        </div>
                    </div>
                </div>
                <c:forEach items="${sessionScope.listItemsInCart}" var="item">
                    <div class="row d-flex justify-content-center border-top">
                        <div class="col-4">
                            <div class="row">
                                <div class="book col-7" style="margin-right: 30px; flex: 1">
                                    <img src="${item.product.image[0]}" style="width: 170px; height: 150px" class="book-img">
                                </div>
                                <div class="my-auto flex-column d-flex pad-left col-5">
                                    <h6 class="mob-text">${item.product.name}</h6>
                                </div>
                            </div>
                        </div>
                        <div class="my-auto col-8 ">
                            <div class="row text-right">
                                <div class="col-3">
                                    <p class="mob-text">${item.product.supplier.companyName}</p>
                                </div>
                                <div class="col-3">
                                    <!--                                    <div class="">
                                                                            <input style="width: 100px"
                                                                                   name="quantity" type="number" min="1" max="100" step="1" value="${item.quantity}">
                                                                        </div>-->
                                    <h6>${item.quantity}</h6>
                                </div>
                                <div class="col-3">
                                    <h6 class="mob-text">${item.price}</h6>
                                </div>
                                <div class="col-3">
                                    <a  href="viewcart?rid=${item.product.id}"
                                        style="padding: 8px 15px; border: none; border-radius: 5px; background-color: #1763c7; color: white">
                                        Delete
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </c:if>

            <div id="checkout_viewcart" class="row justify-content-center">
                <div class="col-lg-12" style="padding: 0">
                    <div class="card">
                        <div class="row">
                            <div class="col-lg-12 mt-2">
                                <div class="row d-flex justify-content-between px-4">
                                    <p class="mb-1 text-left">Subtotal</p>
                                    <h6 class="mb-1 text-right">$${sessionScope.cart.getTotalMoney()}</h6>
                                </div>
                                <div class="row d-flex justify-content-between px-4">

                                    <p class="mb-1 text-left">Shipping</p>
                                    <h6 class="mb-1 text-right">$${sessionScope.cart == null || sessionScope.cartSize == 0 ? '0' : '3'}</h6>
                                </div>
                                <div class="row d-flex justify-content-between px-4" id="tax">
                                    <p class="mb-1 text-left">Total (tax included)</p>
                                    <h6 class="mb-1 text-right" style="font-size: 18px; font-weight: bold;">
                                        $${sessionScope.cart == null || sessionScope.cartSize == 0 ? '0' : sessionScope.cart.getTotalMoney() + 3}
                                    </h6>
                                </div>
                                <span>
                                    <form action="viewcart" method="post">
                                        <input class="btn-block btn-blue" type="submit" value="CHECKOUT" id="checkout"
                                               style="color: white; font-weight: bold; background-color: orange"/>
                                    </form>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
