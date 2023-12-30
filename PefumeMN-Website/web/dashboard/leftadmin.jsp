<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Sidebar -->
<nav id="sidebarMenu" class="collapse d-lg-block sidebar collapse bg-black" style="padding: 0px; width: 270px; background-color: black">
    <div class="position-sticky" >
        <div class="list-group list-group-flush mx-3 mt-4" style="margin: 0">
            <div class="footer_logo" style="text-align: center; margin-bottom: 0">
                <a href="home"><img src="images/logo.png" alt="Logo" style="height: 53px"></a>
            </div>
            <a href="admin" class="list-group-item list-group-item-action" aria-current="true" style="margin-top: 10px;">
                <i style="margin-right: 10px; font-size: 18px" class="fas fa-tachometer-alt fa-fw me-3"></i>
                <span style="font-size: 16px; font-weight: 600">Main dashboard</span>
            </a>
            <a href="weekrevenue" class="list-group-item list-group-item-action" style="margin-top: 10px">
                <i style="margin-right: 10px; font-size: 18px" class="fas fa-chart-pie fa-fw me-3"></i>
                <span style="font-size: 16px; font-weight: 600">Revenue by week</span>
            </a>
            <a href="mothlyrevenue" class="list-group-item list-group-item-action" style="margin-top: 10px">
                <i style="margin-right: 10px; font-size: 18px" class="fas fa-chart-bar fa-fw me-3"></i>
                <span style="font-size: 16px; font-weight: 600">Revenue by month</span>
            </a>
            <a href="invoice" class="list-group-item list-group-item-action" style="margin-top: 10px">
                <i style="margin-right: 10px; font-size: 18px" class="fas fa-file-invoice-dollar fa-fw me-3"></i>
                <span style="font-size: 16px; font-weight: 600">Invoice</span></a>
            <a href="managerAccount" class="list-group-item list-group-item-action" style="margin-top: 10px">
                <i style="margin-right: 10px; font-size: 18px" class="fas fa-user-circle fa-fw me-3"></i>
                <span style="font-size: 16px; font-weight: 600">Accounts</span>
            </a>
            <a href="walletmanager" class="list-group-item list-group-item-action" style="margin-top: 10px">
                <i style="margin-right: 10px; font-size: 18px" class="fa-solid fa-wallet"></i>
                <span style="font-size: 16px; font-weight: 600">Wallets</span>
            </a>
            <a href="manager" class="list-group-item list-group-item-action" style="margin-top: 10px">
                <i style="margin-right: 10px; font-size: 18px" <i class="fa-solid fa-cart-shopping"></i>
                <span style="font-size: 16px; font-weight: 600">Products</span>
            </a>
            <a href="top10" class="list-group-item list-group-item-action" style="margin-top: 10px">
                <i style="margin-right: 10px; font-size: 18px" class="fas fa-shoe-prints fa-fw me-3"></i>
                <span style="font-size: 16px; font-weight: 600">Top 10 Products</span>
            </a>
            <a href="top5khachhang" class="list-group-item list-group-item-action" style="margin-top: 10px">
                <i style="margin-right: 10px; font-size: 18px" class="fas fa-user-circle fa-fw me-3"></i>
                <span style="font-size: 16px; font-weight: 600">Top 5 Customer</span>
            </a>
            <a href="managersupplier" class="list-group-item list-group-item-action" style="margin-top: 10px">
                <i style="margin-right: 10px; font-size: 18px" class="fas fa-parachute-box fa-fw me-3"></i>
                <span style="font-size: 16px; font-weight: 600">Supplier</span>
            </a>
        </div>
    </div>
</nav>