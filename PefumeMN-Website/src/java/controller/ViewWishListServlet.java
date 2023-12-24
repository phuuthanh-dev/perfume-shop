/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Cart;
import model.Item;
import model.Product;

/**
 *

 */
@WebServlet(name = "ViewWishListServlet", urlPatterns = {"/viewwishlist"})
public class ViewWishListServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ViewWishListServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ViewWishListServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        // Phan wishlist
        Cart wishList = null;
        ProductDAO pd = new ProductDAO();
        Object w = session.getAttribute("wishList");
        // Check
        if (w != null) {
            wishList = (Cart) w;
        } else {
            wishList = new Cart();
        }
        String tRid = request.getParameter("rid");
        int rid;
        try {
            rid = Integer.parseInt(tRid);
            wishList.removeItem(rid);
        } catch (Exception e) {
        }
        List<Item> listItemsInWishList = wishList.getListItems();
        session.setAttribute("wishList", wishList);
        session.setAttribute("listItemsInWishList", listItemsInWishList);
        session.setAttribute("wishListSize", listItemsInWishList.size());

        request.getRequestDispatcher("viewwishlist.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        // Phan cart
        Cart cart = null;
        Object o = session.getAttribute("cart");
        // Check
        if (o != null) {
            cart = (Cart) o;
        } else {
            cart = new Cart();
        }

        ProductDAO pd = new ProductDAO();
        String role = request.getParameter("role");
        switch (role) {
            case "add": {
                String tnum = request.getParameter("quantity");
                String tid = request.getParameter("id");
                int num, id;
                try {
                    num = Integer.parseInt(tnum);
                    id = Integer.parseInt(tid);
                    Product p = pd.getProductByID(id);
                    Item t = new Item(p, num);
                    cart.addItem(t);
                } catch (Exception e) {
                }
                List<Item> list = cart.getListItems();
                session.setAttribute("cart", cart);
                session.setAttribute("listItemsInCart", list);
                session.setAttribute("cartSize", list.size());
                //
                Cart wishList = null;
                Object w = session.getAttribute("wishList");
                // Check
                if (w != null) {
                    wishList = (Cart) w;
                } else {
                    wishList = new Cart();
                }
                String tRid = request.getParameter("id");
                int rid;
                try {
                    rid = Integer.parseInt(tRid);
                    wishList.removeItem(rid);
                } catch (Exception e) {
                }
                List<Item> listItemsInWishList = wishList.getListItems();
                session.setAttribute("wishList", wishList);
                session.setAttribute("listItemsInWishList", listItemsInWishList);
                session.setAttribute("wishListSize", listItemsInWishList.size());

                request.getRequestDispatcher("viewwishlist.jsp").forward(request, response);
                break;
            }
            case "remove": {
                String tRid = request.getParameter("rid");
                int rid;
                try {
                    rid = Integer.parseInt(tRid);
                    cart.removeItem(rid);
                } catch (Exception e) {
                }
                List<Item> list = cart.getListItems();
                session.setAttribute("cart", cart);
                session.setAttribute("listItemsInCart", list);
                session.setAttribute("cartSize", list.size());
                request.getRequestDispatcher("viewwishlist.jsp").forward(request, response);
            }
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
