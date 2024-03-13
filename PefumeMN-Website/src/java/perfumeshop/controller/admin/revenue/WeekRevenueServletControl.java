/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package perfumeshop.controller.admin.revenue;

import perfumeshop.dal.OrderDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.time.DayOfWeek;
import java.time.LocalDate;

@WebServlet(name = "WeekRevenueServletControl", urlPatterns = {"/weekrevenue"})
public class WeekRevenueServletControl extends HttpServlet {

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

        String year_raw = request.getParameter("year");
        String month_raw = request.getParameter("month");
        String from_raw = request.getParameter("from");
        String to_raw = request.getParameter("to");

        LocalDate currentDate = LocalDate.now();
        LocalDate startOfWeek = currentDate.with(DayOfWeek.MONDAY);
        LocalDate endOfWeek = startOfWeek.plusDays(6);
        int startDay = startOfWeek.getDayOfMonth();
        int endDay = endOfWeek.getDayOfMonth();
        int monthValue = startOfWeek.getMonthValue();

        int year = (year_raw == null ? 2023 : Integer.parseInt(year_raw));
        int month = (month_raw == null ? monthValue : Integer.parseInt(month_raw));
        int from = (from_raw == null ? startDay : Integer.parseInt(from_raw));
        int to = (to_raw == null ? endDay : Integer.parseInt(to_raw));

        OrderDAO dao = new OrderDAO();
        double totalMoney1 = dao.totalMoneyWeek(1, from, to , year, month);
        double totalMoney2 = dao.totalMoneyWeek(2, from, to , year, month);
        double totalMoney3 = dao.totalMoneyWeek(3, from, to , year, month);
        double totalMoney4 = dao.totalMoneyWeek(4, from, to , year, month);
        double totalMoney5 = dao.totalMoneyWeek(5, from, to , year, month);
        double totalMoney6 = dao.totalMoneyWeek(6, from, to , year, month);
        double totalMoney7 = dao.totalMoneyWeek(7, from, to , year, month);

        request.setAttribute("totalMoney1", totalMoney1);
        request.setAttribute("totalMoney2", totalMoney2);
        request.setAttribute("totalMoney3", totalMoney3);
        request.setAttribute("totalMoney4", totalMoney4);
        request.setAttribute("totalMoney5", totalMoney5);
        request.setAttribute("totalMoney6", totalMoney6);
        request.setAttribute("totalMoney7", totalMoney7);
        request.setAttribute("year", year);

        request.getRequestDispatcher("dashboard/weekrevenue.jsp").forward(request, response);
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
        processRequest(request, response);
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
