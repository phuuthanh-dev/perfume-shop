/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package perfumeshop.controller.admin.management.product;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;
import perfumeshop.dal.ProductDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet(name = "AddProductControl", urlPatterns = {"/addproduct"})
public class AddProductControl extends HttpServlet {

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
        String pname = request.getParameter("name");
        String[] pimage = request.getParameterValues("image");
        String pprice_raw = request.getParameter("price");
        String pdescribe = request.getParameter("describe");
        String pquantity_raw = request.getParameter("quantity");

        String pquantityunit = request.getParameter("quantityunit");
        String pdate = request.getParameter("date");
        String pdiscount_raw = request.getParameter("discount");
        String psupplier_raw = request.getParameter("supplier");
        String pcategory_raw = request.getParameter("category");
        double pprice, pdiscount;
        int pquantity, psupplier, pcategory;
        String image = "";
        try {
            pprice = Double.parseDouble(pprice_raw);
            pdiscount = Double.parseDouble(pdiscount_raw);
            pquantity = Integer.parseInt(pquantity_raw);
            psupplier = Integer.parseInt(psupplier_raw);
            pcategory = Integer.parseInt(pcategory_raw);
            for (int i = 0; i < pimage.length; i++) {
                switch (pcategory) {
                    case 1:
                        image += "images/products/Men/" + pimage[i] + ",";
                        break;
                    case 2:
                        image = "images/products/Women/" + pimage[i] + ",";
                        break;
                    case 3:
                        image = "images/products/Kids/" + pimage[i] + ",";
                        break;
                    case 4:
                        image = "images/products/Unisex/" + pimage[i] + ",";
                        break;
                    case 5:
                        image = "images/products/Gift/" + pimage[i] + ",";
                        break;
                }
            }
            if (image.endsWith(",")) {
                image = image.substring(0, image.length() - 1);
            }
            ProductDAO dao = new ProductDAO();
            dao.insertProduct(pname, image, pprice, pdescribe, pquantity, pquantityunit, pdate, pdiscount, psupplier, pcategory);
        } catch (NumberFormatException e) {
            System.out.println(e);
        }
        request.setAttribute("mess", "Product Added!");
        request.getRequestDispatcher("manager").forward(request, response);
    }

    private String getSubmittedFileName(Part part) {
        for (String cd : part.getHeader("content-disposition").split(";")) {
            if (cd.trim().startsWith("filename")) {
                return cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
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
