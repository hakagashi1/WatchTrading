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
import model.Shipping;

/**
 *
 * @author ZenBook
 */
public class ShippingDAO extends DBContext{
    public List<Shipping> getAllShipping() {
        List<Shipping> list = new ArrayList<>();
        String sql = "select * from Shipping";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Shipping shipping = new Shipping();
                shipping.setId(rs.getInt("ID"));
                shipping.setType(rs.getString("type"));
                shipping.setPrice(rs.getInt("price"));
                shipping.setActive("");
                list.add(shipping);
            }
        } catch (Exception e) {
            System.err.print(e);
        }
        
        return list;
    }
    
    public Shipping getShippingById(int id) {
        Shipping shipping = new Shipping();
        String sql = "select * from Shipping where id = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                shipping.setId(rs.getInt("ID"));
                shipping.setType(rs.getString("type"));
                shipping.setPrice(rs.getInt("price"));
            }
        } catch (Exception e) {
            System.err.print(e);
        }
        
        return shipping;
    }
    
    public static void main(String[] args) {
        ShippingDAO s = new ShippingDAO();
        System.out.println(s.getAllShipping());
    }
}
