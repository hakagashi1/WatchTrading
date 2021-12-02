/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.User;

/**
 *
 * @author ZenBook
 */
public class RegisterControl extends HttpServlet {

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
        String username = request.getParameter("name");
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        String repass = request.getParameter("confirmPassword");
        String telephone = request.getParameter("telephone");
        String first = request.getParameter("first");
        String last = request.getParameter("last");
        boolean isSell, isAdmin;
        if (request.getParameter("seller") != null) {
            isSell = true;
        } else {
            isSell = false;
        }
        
        if (request.getParameter("admin") != null) {
            isAdmin = true;
        } else {
            isAdmin = false;
        }
        
        if (!pass.equals(repass)) {
            request.setAttribute("mess", "Password and Confirm Password are not equal!!");
            request.getRequestDispatcher("Register.jsp").forward(request, response);
        } else {
            UserDAO userDAO = new UserDAO();
            User user1 = userDAO.checkUsernameExist(username);
            User user2 = userDAO.checkEmailExist(email);

            if (user1 == null && user2 == null) {
                System.out.println("create");
                userDAO.register(username, pass, email, telephone, first, last, isSell, isAdmin);
                request.getRequestDispatcher("home").forward(request, response);
            } else {
                if (user1 != null) {
                    request.setAttribute("mess", "Username has been existed!!");
                } else if (user2 != null) {
                    request.setAttribute("mess", "Email has been existed!!");
                }
                request.getRequestDispatcher("Register.jsp").forward(request, response);
            }
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
//        processRequest(request, response);
        request.getRequestDispatcher("Register.jsp").forward(request, response);
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
