/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.OrderDetailsDAO;
import dao.OrderItemDAO;
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
import model.OrderDetails;
import model.OrderItem;
import model.Product;
import model.User;

/**
 *
 * @author ZenBook
 */
public class AddToCartControl extends HttpServlet {

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
        OrderDetailsDAO orderDAO = new OrderDetailsDAO();
        OrderItemDAO itemDAO = new OrderItemDAO();
        
        int quantity = 1;
        
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("acc");
        int userId = user.getId();
        
        if (orderDAO.getOrderByUserId(userId) == null) {
            orderDAO.createNewOrder(userId);
        }
        
        OrderDetails order = orderDAO.getOrderByUserId(userId);
        int orderId = order.getId();
        
        int productId = Integer.parseInt(request.getParameter("id"));
        if (request.getParameter("qty") == null) {
            System.out.println("null");
        } else {
            quantity = Integer.parseInt(request.getParameter("qty"));
        }
        if (itemDAO.getItemByProductId(productId, orderId) == null) {
            itemDAO.createItem(quantity, orderId, productId);
        } else {
            OrderItem item = itemDAO.getItemByProductId(productId, orderId);
            itemDAO.addQuantity(quantity, item);
        }
        
        request.setAttribute("volume", orderDAO.getVolume(orderId));
        response.sendRedirect("category");
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
