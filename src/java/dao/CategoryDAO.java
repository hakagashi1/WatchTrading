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
import model.Category;
import model.Product;

/**
 *
 * @author ZenBook
 */
public class CategoryDAO extends DBContext {

    public List<Category> getAllCategories() {
        List<Category> list = new ArrayList<>();
        String sql = "SELECT * FROM   product_category";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Category category = new Category();
                category.setId(rs.getInt("ID"));
                category.setName(rs.getString("name"));
                category.setDetails(rs.getString("details"));
                category.setVolume(getVolumeById(category.getId()));
                list.add(category);
            }
        } catch (Exception e) {
            System.err.print(e);
        }
        return list;
    }
    
    public Category getCategoryByProductId(int id) {
        Category category = new Category();
        String sql = "select product_category.id, product_category.name, product_category.details \n"
                + "from product inner join product_category\n"
                + "on product.category_id = product_category.id\n"
                + "where product.id = ?;";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                category.setId(rs.getInt("id"));
                category.setName(rs.getString("name"));
                category.setDetails(rs.getString("details"));
                category.setVolume(getVolumeById(category.getId()));
            }
        } catch (Exception e) {
            System.err.print(e);
        }
        return category;
    }

    public int getVolumeById(int id) {
        int volume = 0;
        String sql = "select pc.id, pc.name, COUNT(*) \n"
                + "from product_category pc inner join product p on pc.id = p.category_id\n"
                + "where pc.id = ?\n"
                + "group by pc.id, pc.name;";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                volume = rs.getInt(3);
            }
        } catch(Exception e) {
            System.err.print(e);
        }
        return volume;
    }
    
    public static void main(String[] args) {
        CategoryDAO c = new CategoryDAO();
        System.out.println(c.getVolumeById(1));
    }
}
