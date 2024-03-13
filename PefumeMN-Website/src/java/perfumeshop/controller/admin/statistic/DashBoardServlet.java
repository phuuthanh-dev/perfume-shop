/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package perfumeshop.controller.admin.statistic;

import perfumeshop.dal.ProductDAO;
import perfumeshop.dal.OrderDAO;
import perfumeshop.dal.SupplierDAO;
import perfumeshop.dal.UserDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "DashBoardServlet", urlPatterns = {"/admin"})
public class DashBoardServlet extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");

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
        ProductDAO dao = new ProductDAO();
        UserDAO udao = new UserDAO();
        OrderDAO odao = new OrderDAO();
       SupplierDAO sdao = new SupplierDAO();
        int count = dao.countAllProduct();
        int countS = dao.countAllTypeProduct();
        int countu = udao.countAllUser();
        int countSupplier = sdao.countAllSupplier();
        int sumquantitySold = dao.getSumQuantitySold();
        double totalmoneyAll = odao.sumAllMoneyOrder();
        request.setAttribute("countProduct", count);
        request.setAttribute("countSupplier", countSupplier);
        request.setAttribute("countTypeProduct", countS);
        request.setAttribute("sumquantitySold", sumquantitySold);
        request.setAttribute("countUser", countu);
        request.setAttribute("totalmoneyAll", totalmoneyAll);
        request.getRequestDispatcher("dashboard/dashboard.jsp").forward(request, response);
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
        processRequest(request, response);
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
