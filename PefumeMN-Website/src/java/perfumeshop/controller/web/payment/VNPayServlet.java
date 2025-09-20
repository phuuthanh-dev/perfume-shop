/*
 * VNPay Payment Integration - Fake Implementation
 */
package perfumeshop.controller.web.payment;

import perfumeshop.dal.OrderDAO;
import perfumeshop.dal.ProductDAO;
import perfumeshop.dal.WalletDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.time.LocalDateTime;
import java.util.List;
import perfumeshop.model.Cart;
import perfumeshop.model.Email;
import perfumeshop.model.Item;
import perfumeshop.model.Order;
import perfumeshop.model.User;
import perfumeshop.model.Wallet;

/**
 * VNPay Payment Servlet - Fake Implementation
 * @author Admin
 */
@WebServlet(name = "VNPayServlet", urlPatterns = {"/vnpay"})
public class VNPayServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        User user = (User) session.getAttribute("account");
        
        if (cart == null || user == null) {
            response.sendRedirect("viewcart");
            return;
        }
        
        // Create payment session
        double totalAmount = cart.getTotalMoney() + 3; // Including shipping
        session.setAttribute("vnpay_amount", totalAmount);
        session.setAttribute("vnpay_start_time", System.currentTimeMillis());
        
        // Forward to VNPay payment page
        request.getRequestDispatcher("vnpay_payment.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String action = request.getParameter("action");
        
        if ("pay".equals(action)) {
            // Simulate payment processing
            String result = request.getParameter("result");
            
            if ("success".equals(result)) {
                // Process successful payment
                processSuccessfulPayment(request, response, session);
            } else {
                // Payment failed or cancelled
                session.removeAttribute("vnpay_amount");
                session.removeAttribute("vnpay_start_time");
                request.setAttribute("message1", "Payment Cancelled");
                request.setAttribute("message2", "Your payment has been cancelled. Please try again.");
                request.getRequestDispatcher("viewcart.jsp").forward(request, response);
            }
        }
    }
    
    private void processSuccessfulPayment(HttpServletRequest request, HttpServletResponse response, HttpSession session) 
            throws ServletException, IOException {
        Cart cart = (Cart) session.getAttribute("cart");
        User user = (User) session.getAttribute("account");
        OrderDAO od = new OrderDAO();
        
        try {
            // Create order
            int pre = od.getNumberOrders();
            od.addOrder(user, cart);
            int after = od.getNumberOrders();
            
            if (pre < after) {
                // Send confirmation email
                Email handleEmail = new Email();
                LocalDateTime currentDateTime = LocalDateTime.now();
                double totalCart = cart.getTotalMoney() + 3;
                String sub = handleEmail.subjectOrder(user.getFullName());
                String msg = handleEmail.messageOrder(currentDateTime, totalCart, user.getAddress());
                handleEmail.sendEmail(sub, msg, user.getEmail());
                
                // Clear cart and payment session
                session.removeAttribute("cart");
                session.removeAttribute("vnpay_amount");
                session.removeAttribute("vnpay_start_time");
                
                request.setAttribute("message1", "Payment Successful");
                request.setAttribute("message2", "Your order has been placed successfully via VNPay!");
            } else {
                request.setAttribute("message1", "Payment Failed");
                request.setAttribute("message2", "There was an error processing your order. Please try again.");
            }
        } catch (Exception e) {
            request.setAttribute("message1", "Payment Error");
            request.setAttribute("message2", "An unexpected error occurred. Please contact support.");
        }
        
        request.getRequestDispatcher("viewcart.jsp").forward(request, response);
    }
}
