/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.OrderDetailsDAO;
import dao.PaymentDetailsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.OrderDetails;
import model.OrderItem;
import model.PaymentDetails;
import model.Shipping;
import model.User;

/**
 *
 * @author ZenBook
 */
public class CheckoutControl extends HttpServlet {

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
//        processRequest(request, response);
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("acc");
        int userId = user.getId();
        OrderDetails order = new OrderDetailsDAO().getOrderByUserId(userId);
        List<OrderItem> listItems = order.getList();
        request.setAttribute("listItems", listItems);
        int sum = 0;
        for (OrderItem i : listItems) {
            sum += i.getQuantity() * i.getPrice();
        }
        request.setAttribute("subtotal", sum);
        PaymentDetails pay = new PaymentDetailsDAO().getPaymentDetailsByOrder(order);
        Shipping ship = pay.getShipping();
        request.setAttribute("ship", ship);
        
        request.setAttribute("total", sum + ship.getPrice());
        
        int orderId = order.getId();
        request.setAttribute("volume", new OrderDetailsDAO().getVolume(orderId));
        
        request.setAttribute("user", user);
        request.getRequestDispatcher("Checkout.jsp").forward(request, response);
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
