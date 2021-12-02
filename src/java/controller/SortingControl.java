/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.CategoryDAO;
import dao.OrderDetailsDAO;
import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Category;
import model.OrderDetails;
import model.Product;
import model.User;

/**
 *
 * @author ZenBook
 */
public class SortingControl extends HttpServlet {

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
        int sorting = Integer.parseInt(request.getParameter("sorting"));
        List<Product> list = new ArrayList<>();
        switch (sorting) {
            case 1:
                list = new ProductDAO().getAllSortingByPriceHigh();
                break;
            case 2:
                list = new ProductDAO().getAllSortingByPriceLow();
                break;
            default:
                list = new ProductDAO().getAllProducts();
                break;
        }

        request.setAttribute("listP", list);
        //b1: get data from dao
        List<Category> categories = new CategoryDAO().getAllCategories();
        //b2: set data to jsp
        request.setAttribute("listC", categories);

        HttpSession session = request.getSession();
        if (session.getAttribute("acc") != null) {
            OrderDetailsDAO orderDAO = new OrderDetailsDAO();
            User user = (User) session.getAttribute("acc");
            int userId = user.getId();

            OrderDetails order = orderDAO.getOrderByUserId(userId);
            if (order != null) {
                int orderId = order.getId();
                request.setAttribute("volume", orderDAO.getVolume(orderId));
            }
        }
        request.getRequestDispatcher("Category.jsp").forward(request, response);
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
