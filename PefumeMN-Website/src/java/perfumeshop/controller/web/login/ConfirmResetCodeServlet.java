/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package perfumeshop.controller.web.login;

import perfumeshop.dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author lvhho
 */
@WebServlet(name = "ConfirmResetCodeServlet", urlPatterns = {"/confirmresetcode"})
public class ConfirmResetCodeServlet extends HttpServlet {

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
            out.println("<title>Servlet ConfirmResetCodeServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ConfirmResetCodeServlet at " + request.getContextPath() + "</h1>");
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
        UserDAO ud = new UserDAO();
        String resetCode = request.getParameter("resetcode");
        String code = (String) session.getAttribute("code");
        String email = request.getParameter("email");
        String message = (String) request.getAttribute("message");
        String check = (String) request.getAttribute("check");
        if (code.equalsIgnoreCase(resetCode)) {
            check = "true";
            String userName = ud.getUserNameByEmail(email);

            request.removeAttribute("code");
            request.setAttribute("uName", userName);
            request.setAttribute("check", check);
            request.getRequestDispatcher("newpassword.jsp").forward(request, response);
        } else {
            check = "true";
            message = "Sorry, reset code incorrect";
            session.setAttribute("code", code);
            request.setAttribute("email", email);
            request.setAttribute("check", check);
            request.setAttribute("message", message);
            request.getRequestDispatcher("forgot.jsp").forward(request, response);
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
