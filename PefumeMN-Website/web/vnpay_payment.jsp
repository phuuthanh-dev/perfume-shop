<%-- 
    VNPay Payment Page - Fake Implementation
    Created on : Dec 2024
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VNPay Payment Gateway</title>
        <link rel="icon" href="images/logo1.png"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
        <style>
            body {
                background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                min-height: 100vh;
                font-family: 'Arial', sans-serif;
            }
            .payment-container {
                background: white;
                border-radius: 20px;
                box-shadow: 0 15px 35px rgba(0,0,0,0.1);
                padding: 40px;
                margin: 50px auto;
                max-width: 500px;
            }
            .vnpay-logo {
                width: 120px;
                height: 40px;
                background: #1a73e8;
                color: white;
                display: flex;
                align-items: center;
                justify-content: center;
                border-radius: 8px;
                font-weight: bold;
                margin: 0 auto 30px;
            }
            .countdown-circle {
                width: 100px;
                height: 100px;
                border: 4px solid #e9ecef;
                border-top: 4px solid #1a73e8;
                border-radius: 50%;
                margin: 20px auto;
                display: flex;
                align-items: center;
                justify-content: center;
                font-size: 24px;
                font-weight: bold;
                color: #1a73e8;
                position: relative;
            }
            .payment-info {
                background: #f8f9fa;
                border-radius: 10px;
                padding: 20px;
                margin: 20px 0;
            }
            .btn-pay {
                background: #1a73e8;
                color: white;
                border: none;
                padding: 15px 30px;
                border-radius: 10px;
                font-size: 16px;
                font-weight: bold;
                width: 100%;
                margin: 10px 0;
                transition: all 0.3s;
            }
            .btn-pay:hover {
                background: #1557b0;
                transform: translateY(-2px);
            }
            .btn-cancel {
                background: #dc3545;
                color: white;
                border: none;
                padding: 12px 30px;
                border-radius: 10px;
                font-size: 14px;
                width: 100%;
                transition: all 0.3s;
            }
            .btn-cancel:hover {
                background: #c82333;
            }
            .security-info {
                font-size: 12px;
                color: #6c757d;
                text-align: center;
                margin-top: 20px;
            }
            .loading {
                display: none;
            }
            .spinner {
                border: 3px solid #f3f3f3;
                border-top: 3px solid #1a73e8;
                border-radius: 50%;
                width: 30px;
                height: 30px;
                animation: spin 1s linear infinite;
                margin: 0 auto;
            }
            @keyframes spin {
                0% { transform: rotate(0deg); }
                100% { transform: rotate(360deg); }
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="payment-container">
                <div class="text-center">
                    <div class="vnpay-logo">VNPay</div>
                    <h4>Secure Payment Gateway</h4>
                    <p class="text-muted">Complete your payment within the time limit</p>
                </div>

                <div class="countdown-circle" id="countdown">
                    <span id="timer">30</span>
                </div>

                <div class="payment-info">
                    <div class="row">
                        <div class="col-6"><strong>Merchant:</strong></div>
                        <div class="col-6">Perfume Shop</div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-6"><strong>Amount:</strong></div>
                        <div class="col-6 text-primary"><strong>$${sessionScope.vnpay_amount}</strong></div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-6"><strong>Order ID:</strong></div>
                        <div class="col-6">#${sessionScope.account.userName}_${sessionScope.vnpay_start_time}</div>
                    </div>
                </div>

                <div id="payment-buttons">
                    <form id="paymentForm" action="vnpay" method="post">
                        <input type="hidden" name="action" value="pay">
                        <input type="hidden" name="result" id="paymentResult" value="">
                        
                        <button type="button" class="btn-pay" onclick="simulatePayment()">
                            <i class="fa fa-credit-card"></i> Pay Now
                        </button>
                        
                        <button type="button" class="btn-cancel" onclick="cancelPayment()">
                            <i class="fa fa-times"></i> Cancel Payment
                        </button>
                    </form>
                </div>

                <div id="loading" class="loading text-center">
                    <div class="spinner"></div>
                    <p class="mt-3">Processing your payment...</p>
                </div>

                <div class="security-info">
                    <i class="fa fa-lock"></i> Your payment is secured with 256-bit SSL encryption
                    <br>This is a demo payment gateway for testing purposes only
                </div>
            </div>
        </div>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
            let timeLeft = 30;
            let countdownTimer;
            let paymentProcessing = false;

            // Start countdown
            function startCountdown() {
                countdownTimer = setInterval(function() {
                    timeLeft--;
                    document.getElementById('timer').textContent = timeLeft;
                    
                    // Update circle color based on time left
                    const circle = document.querySelector('.countdown-circle');
                    if (timeLeft <= 10) {
                        circle.style.borderTopColor = '#dc3545';
                        document.getElementById('timer').style.color = '#dc3545';
                    } else if (timeLeft <= 20) {
                        circle.style.borderTopColor = '#ffc107';
                        document.getElementById('timer').style.color = '#ffc107';
                    }
                    
                    if (timeLeft <= 0) {
                        clearInterval(countdownTimer);
                        timeoutPayment();
                    }
                }, 1000);
            }

            // Timeout payment
            function timeoutPayment() {
                if (!paymentProcessing) {
                    alert('Payment timeout! Redirecting back to cart...');
                    document.getElementById('paymentResult').value = 'timeout';
                    document.getElementById('paymentForm').submit();
                }
            }

            // Simulate payment processing
            function simulatePayment() {
                if (paymentProcessing) return;
                
                paymentProcessing = true;
                clearInterval(countdownTimer);
                
                document.getElementById('payment-buttons').style.display = 'none';
                document.getElementById('loading').style.display = 'block';
                
                // Simulate payment processing time (2-3 seconds)
                setTimeout(function() {
                    // 90% success rate for demo
                    const success = Math.random() > 0.1;
                    
                    if (success) {
                        document.getElementById('paymentResult').value = 'success';
                        alert('Payment successful! Redirecting...');
                    } else {
                        document.getElementById('paymentResult').value = 'failed';
                        alert('Payment failed! Please try again.');
                    }
                    
                    document.getElementById('paymentForm').submit();
                }, 2500);
            }

            // Cancel payment
            function cancelPayment() {
                if (paymentProcessing) return;
                
                clearInterval(countdownTimer);
                if (confirm('Are you sure you want to cancel this payment?')) {
                    document.getElementById('paymentResult').value = 'cancelled';
                    document.getElementById('paymentForm').submit();
                }
            }

            // Start countdown when page loads
            window.onload = function() {
                startCountdown();
            };

            // Handle page unload
            window.onbeforeunload = function() {
                if (!paymentProcessing && timeLeft > 0) {
                    return 'Are you sure you want to leave? Your payment session will be cancelled.';
                }
            };
        </script>
    </body>
</html>
