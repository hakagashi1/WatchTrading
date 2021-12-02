/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.OrderDetails;
import model.PaymentDetails;

/**
 *
 * @author ZenBook
 */
public class PaymentDetailsDAO extends DBContext {

    public PaymentDetails getPaymentDetailsByOrder(OrderDetails order) {
        PaymentDetails list = new PaymentDetails();
        String sql = "select * from payment_details where order_id = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, order.getId());
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                PaymentDetails payment = new PaymentDetails();
                payment.setId(rs.getInt("ID"));
                payment.setOrder(order);
                payment.setShipping(new ShippingDAO().getShippingById(rs.getInt("shipping_id")));
                return payment;
            }
        } catch (Exception e) {
            System.err.print(e);
        }

        return null;
    }

    public void createPaymentDetails(OrderDetails order) {
        String sql = "insert into payment_details (order_id, status)\n"
                + "values (?, '0');";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, order.getId());
            ps.executeUpdate();
        } catch (Exception e) {
            System.err.print(e);
        }
    }

    public void updateShipping(int shippingId, int orderId) {
        String sql = "update payment_details\n"
                + "set shipping_id = ?\n"
                + "where order_id = ?;";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, shippingId);
            ps.setInt(2, orderId);
            ps.executeUpdate();
        } catch (Exception e) {
            System.err.print(e);
        }
    }

    public static void main(String[] args) {
        PaymentDetailsDAO p = new PaymentDetailsDAO();

//        OrderDetailsDAO orderDAO = new OrderDetailsDAO();
//        OrderDetails order = orderDAO.getOrderByUserId(4);
//        System.out.println(order);
        p.updateShipping(2, 4);

    }
}
