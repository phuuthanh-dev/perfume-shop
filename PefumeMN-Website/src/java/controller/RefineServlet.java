/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.CategoryDAO;
import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import model.Category;
import model.Product;

/**
 *
 * @author Admin
 */
@WebServlet(name = "RefineServlet", urlPatterns = {"/refine"})
public class RefineServlet extends HttpServlet {

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
            out.println("<title>Servlet RefineServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RefineServlet at " + request.getContextPath() + "</h1>");
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
        List<Product> allproduct = p.getAll();
        List<Product> productsCid = p.getAll();
        Boolean[] chid = new Boolean[categories.size() + 1];
        String cid_refine_raw = request.getParameter("cid_refine");
        String priceFrom_raw = request.getParameter("pricefrom");
        String priceTo_raw = request.getParameter("priceto");
        int cid_refine = 0;

        //RefineBrand
        String[] cid_refinee_raw = request.getParameterValues("cid_refinee");
        int[] cid_refinee = null;

        //RefineHeaderBrand
        if (cid_refine_raw != null) {
            cid_refine = Integer.parseInt(cid_refine_raw);
            productsCid = p.getProductsByCategoryid(cid_refine);
            if (cid_refine == 0) {
                chid[0] = true;
            }
        }

        //RefinePrice
        double price1 = ((priceFrom_raw == null || "".equals(priceFrom_raw))? 0 : Double.parseDouble(priceFrom_raw));
        double price2 = ((priceTo_raw == null || "".equals(priceTo_raw)) ? 0 : Double.parseDouble(priceTo_raw));

        //RefineHeaderBrand
        if (cid_refine_raw == null) {
            chid[0] = true;
        } else {
            chid[0] = false;
        }

        //RefineBrand
        if (cid_refinee_raw != null) {
            cid_refinee = new int[cid_refinee_raw.length];
            for (int i = 0; i < cid_refinee.length; i++) {
                cid_refinee[i] = Integer.parseInt(cid_refinee_raw[i]);
            }
            productsCid = p.searchByCheckBox(cid_refinee);
        }
        if (price1 != 0 || price2 != 0) {
            productsCid = p.search(price1, price2, cid_refinee);
        }

        //Paging
        int page = 1, numPerPage = 16;
        int size = productsCid.size();
        int numberpage = ((size % numPerPage == 0) ? (size / 16) : (size / 16) + 1);
        String xpage = request.getParameter("page");
        if (xpage == null) {
            page = 1;
        }
        int start, end;
        start = (page - 1) * 16;

        end = Math.min(page * numPerPage, size);
        List<Product> listByPage = p.getListByPage(productsCid, start, end);

        //RefineBrand
        if ((cid_refinee_raw != null) && (cid_refinee[0] != 0)) {
            chid[0] = false;
            for (int i = 1; i < chid.length; i++) {
                if (isCheck(categories.get(i - 1).getId(), cid_refinee)) {
                    chid[i] = true;
                } else {
                    chid[i] = false;
                }
            }
        }

        
        
        request.setAttribute("price1", price1);
        request.setAttribute("price2", price2);
        request.setAttribute("category", categories);
        request.setAttribute("productPage", listByPage);
        request.setAttribute("chid", chid);
        request.setAttribute("cid_refine", cid_refine);
        request.setAttribute("page", page);
        request.setAttribute("allproduct", allproduct);
        request.setAttribute("numberpage", numberpage);
        request.getRequestDispatcher("refine.jsp").forward(request, response);
    }

    public List<Product> checkPrice(List<Product> list, Double start, Double end) {
        List<Product> rs = new ArrayList<>();
        for (int i = 0; i < list.size(); i++) {
            if ((list.get(i).getSalePrice() < end) && (list.get(i).getSalePrice() > start)) {
                rs.add(list.get(i));
            }
        }
        return rs;
    }

    //RefineBrand
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
