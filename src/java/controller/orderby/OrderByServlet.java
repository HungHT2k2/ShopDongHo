/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.orderby;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Category;
import model.Product;

/**
 *
 * @author bongt
 */
@WebServlet(name = "OrderByServlet", urlPatterns = {"/orderby"})
public class OrderByServlet extends HttpServlet {

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
            out.println("<title>Servlet OrderByServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OrderByServlet at " + request.getContextPath() + "</h1>");
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
        String o = request.getParameter("type");
        String o0 = request.getParameter("type0");
        String data1 = request.getParameter("data1");
        String data2 = request.getParameter("data2");
        DAO dao = new DAO();
        List<Product> listP = null;
        if (o.equalsIgnoreCase("tang")) {
            listP = dao.getProductDesc();
        } else if (o.equalsIgnoreCase("giam")) {
            listP = dao.getProductAsc();
        } else if (o.equalsIgnoreCase("99")) {
            listP = dao.getProductByPrice(o0, o);
        } else if (o.equalsIgnoreCase("199")) {
            listP = dao.getProductByPrice(o0, o);
        } else if (o.equalsIgnoreCase("499")) {
            listP = dao.getProductByPrice(o0, o);
        } else if (o.equalsIgnoreCase("999")) {
            listP = dao.getProductByPrice(o0, o);
        } else if (o.equalsIgnoreCase("9")) {
            listP = dao.getProductByPin(o0, o);
        } else if (o.equalsIgnoreCase("19")) {
            listP = dao.getProductByPin(o0, o);
        } else if (o.equalsIgnoreCase("duoi")) {
            listP = dao.getProductAsc();
        } else if (o.equalsIgnoreCase("tren")) {
            listP = dao.getProductAsc();
        } else if (o.equalsIgnoreCase("az")) {
            listP = dao.getProductSortAsc();
        }else if (o.equalsIgnoreCase("za")) {
            listP = dao.getProductSortDesc();
        }
       

        List<Category> listC = dao.getAllCategory();
        request.setAttribute("listP", listP);
        if (listP.isEmpty()) {
            String s = "Không tìm thấy sản phẩm phù hợp";
            request.setAttribute("s", s);
        }
        List<Product> list3 = dao.getProductTop4();
        List<Product> list4 = dao.getProductCheap();
        
        request.setAttribute("listD", list3);
        request.setAttribute("listE", list4);
        request.setAttribute("listC", listC);
        request.getRequestDispatcher("home.jsp").forward(request, response);
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
