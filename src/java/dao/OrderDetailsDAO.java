/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.OrderDetails;
import model.OrderItem;
import model.Product;

/**
 *
 * @author ZenBook
 */
public class OrderDetailsDAO extends DBContext {

    public OrderDetails getOrderByUserId(int userId) {
        String sql = "select top(1) * from order_details "
                + "where user_id = ? "
                + "order by id desc";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                OrderDetails order = new OrderDetails();
                order.setId(rs.getInt("id"));
                order.setUser(new UserDAO().getUserById(rs.getInt("user_id")));
                order.setList(new OrderItemDAO().getListItemByOrderId(order.getId()));
                order.setStatus(rs.getBoolean("status"));
                return order;
            }
        } catch (Exception e) {
            System.out.println(e);
        }

        return null;
    }

    public int getLastId(int userId) {
        int last = 1;
        String sql = "select top(1) * from order_details "
                + "where user_id = ? "
                + "order by id desc";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                last = rs.getInt("id");
            }
        } catch (Exception e) {
            System.out.println(e);
        }

        return last;
    }

    public int getVolume(int orderId) {
        int v = 0;
        String sql = "select * from order_items "
                + "where order_id = ? ";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, orderId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                v++;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return v;
    }
    
    public void createNewOrder(int userId) {
        String sql = "insert into order_details(user_id, created_at, status)\n"
                + "values (?, GETDATE(), 'false');";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, userId);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        OrderDetailsDAO o = new OrderDetailsDAO();
//        System.out.println(o.getVolume(2));
        o.createNewOrder(8);
    }
}
