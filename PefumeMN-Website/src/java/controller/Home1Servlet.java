/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.CategoryDAO;
import dal.ProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import model.Category;
import model.Product;

/**
 *
 * @author Admin
 */
@WebServlet(name = "Home1Servlet", urlPatterns = {"/home1"})
public class Home1Servlet extends HttpServlet {

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
            out.println("<title>Servlet Home1Servlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Home1Servlet at " + request.getContextPath() + "</h1>");
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

        CategoryDAO d = new CategoryDAO();
        ProductDAO p = new ProductDAO();
        List<Category> categories = d.getAll();
        List<Product> productsYear = p.getAll();
        List<Product> productsTop5Sellers = p.getTopBestSellers("5");
        List<Product> giftSets = p.getGiflSets();
        List<Product> listAll = null;
        String cidYear_raw = request.getParameter("cidYear");
        String[] cid_refine_raw = request.getParameterValues("cid_refine");
        int[] cid_refine = null;

        //filter nếu chưa chọn option thì lấy product all, chọn r thì lấy dựa trên ô đã chọn
        if (cid_refine_raw == null) {
            listAll = p.getAll();
        } else if (cid_refine_raw != null) {
            cid_refine = new int[cid_refine_raw.length];
            for (int i = 0; i < cid_refine.length; i++) {
                cid_refine[i] = Integer.parseInt(cid_refine_raw[i]);
            }
            listAll = p.searchByCheckBox(cid_refine);
        }

        //phần product 2023
        int cidYear;
        if (cidYear_raw != null) {
            cidYear = Integer.parseInt(cidYear_raw);
            Category category = d.getCategoryById(cidYear);
            productsYear = p.getProductsBrandByInYear(2023, category);
        }
        
        //phan trang
        int page = 1, numPerPage = 9;
        int size = listAll.size();
        int numberpage = ((size % numPerPage == 0) ? (size / 9) : (size / 9) + 1);
        String xpage = request.getParameter("page");
        if (xpage == null) {
            page = 1;
        } else {
            page = Integer.parseInt(xpage);
        }
        int start, end;
        start = (page - 1) * 9;
        end = Math.min(page * numPerPage, size);

        //Hot product
        Product spHot = p.getHotDeal();
        Boolean[] chid = new Boolean[categories.size() + 1];
        chid[0] = true;

        
        if ((cid_refine_raw != null) && (cid_refine[0] != 0)) {
            chid[0] = false;
            for (int i = 1; i < chid.length; i++) {
                if (isCheck(categories.get(i - 1).getId(), cid_refine)) {
                    chid[i] = true;
                } else {
                    chid[i] = false;
                }
            }
        }

        List<Product> listByPage = p.getListByPage(listAll, start, end);
        
        request.setAttribute("category", categories);
        request.setAttribute("productsYear", productsYear);
        request.setAttribute("hotDeal", spHot);
        request.setAttribute("productPage", listByPage);
        request.setAttribute("page", page);
        request.setAttribute("chid", chid);
        request.setAttribute("numberpage", numberpage);
        request.setAttribute("productsTopSellers", productsTop5Sellers);
        request.setAttribute("giftSets", giftSets);
        request.getRequestDispatcher("home.jsp").forward(request, response);
    }
    
    
    private boolean isCheck(int d, int[] id) {
        if (id == null) {
            return false;
        } else {
            for (int i = 0; i < id.length; i++) {
                if (id[i] == d) {
                    return true;
                }
            }
        }
        return false;
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
