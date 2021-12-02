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
import model.OrderItem;
import model.Product;

/**
 *
 * @author ZenBook
 */
public class OrderItemDAO extends DBContext {

    public List<OrderItem> getListItemByOrderId(int orderId) {
        List<OrderItem> list = new ArrayList<OrderItem>();
        String sql = "select * from order_items where order_id = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, orderId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                OrderItem item = new OrderItem();
                item.setId(rs.getInt("ID"));
                Product product = new ProductDAO().getProductById(rs.getInt("product_id"));
                item.setProduct(product);
                item.setQuantity(rs.getInt("quantity"));
                item.setPrice(product.getPrice());
                list.add(item);
            }
        } catch (Exception e) {
            System.out.println(e);
        }

        return list;
    }

    public OrderItem getItemByProductId(int productId, int orderId) {
        String sql = "select * from order_items\n"
                + "where product_id = ? and order_id = ?;";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, productId);
            ps.setInt(2, orderId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                OrderItem item = new OrderItem();
                item.setId(rs.getInt("ID"));
                Product product = new ProductDAO().getProductById(rs.getInt("product_id"));
                item.setProduct(product);
                item.setQuantity(rs.getInt("quantity"));
                item.setPrice(product.getPrice());
                return item;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public void deleteItem(int id) {
        String sql = "delete from order_items where id=?;";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    public void updateQuantity(int quantity, OrderItem item) {
        String sql = "update order_items\n"
                + "set created_at = GETDATE(),\n"
                + "	product_id = ?,\n"
                + "	quantity = ?\n"
                + "where id = ?;";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, item.getProduct().getId());
            ps.setInt(2, quantity);
            ps.setInt(3, item.getId());
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void addQuantity(int quantity, OrderItem item) {
        String sql = "update order_items\n"
                + "set created_at = GETDATE(),\n"
                + "	product_id = ?,\n"
                + "	quantity = ?\n"
                + "where id = ?;";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, item.getProduct().getId());
            ps.setInt(2, item.getQuantity() + quantity);
            ps.setInt(3, item.getId());
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void createItem(int quantity, int orderId, int productId) {
        String sql = "insert into order_items(order_id, product_id, quantity, created_at) \n"
                + "values(?, ?, ?, GETDATE());";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, orderId);
            ps.setInt(2, productId);
            ps.setInt(3, quantity);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        OrderItemDAO o = new OrderItemDAO();
        o.addQuantity(2, o.getItemByProductId(2, 4));
    }
}
