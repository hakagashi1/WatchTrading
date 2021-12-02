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
public class ProductDAO extends DBContext {

    public List<Product> getAllProducts() {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT id, name, details, SKU, price\n"
                + "FROM   product";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("ID"));
                product.setName(rs.getString("name"));
                product.setDetails(rs.getString("details"));
                product.setSku(rs.getString("SKU"));
                product.setPrice(rs.getInt("price"));
                product.setImages(getImageById(rs.getInt("ID")));
                list.add(product);
            }
        } catch (Exception e) {
            System.err.print(e);
        }
        return list;
    }

    List<String> getImageById(int id) {
        List<String> list = new ArrayList<>();
        String sql = "select link from product_images where product_id = ? ";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(rs.getString("link"));
            }
        } catch (Exception e) {
            System.err.print(e);
        }
        return list;
    }

    public Product getProductById(int id) {
        Product product = new Product();
        String sql = "select * from product where id = ? ";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                product.setId(id);
                product.setName(rs.getString("name"));
                product.setDetails(rs.getString("details"));
                product.setSku(rs.getString("SKU"));
                product.setPrice(rs.getInt("price"));
                product.setImages(getImageById(rs.getInt("ID")));
                product.setSeller_id(rs.getInt("seller_id"));
                product.setQuantity(rs.getInt("quantity"));
            }
        } catch (Exception e) {
            System.err.print(e);
        }
        return product;
    }

    public List<Product> getProductBySellerId(int id) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from product where seller_id = ? ";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("ID"));
                product.setName(rs.getString("name"));
                product.setDetails(rs.getString("details"));
                product.setSku(rs.getString("SKU"));
                product.setPrice(rs.getInt("price"));
                product.setImages(getImageById(rs.getInt("ID")));
                product.setSeller_id(rs.getInt("seller_id"));
                product.setQuantity(rs.getInt("quantity"));
                list.add(product);
            }
        } catch (Exception e) {
            System.err.print(e);
        }
        return list;
    }

    public List<Product> getTopNewProducts() {
        List<Product> list = new ArrayList<>();
        String sql = "select top(3) * from product\n"
                + "order by id desc";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("ID"));
                product.setName(rs.getString("name"));
                product.setDetails(rs.getString("details"));
                product.setSku(rs.getString("SKU"));
                product.setPrice(rs.getInt("price"));
                product.setImages(getImageById(rs.getInt("ID")));
                product.setSeller_id(rs.getInt("seller_id"));
                product.setQuantity(rs.getInt("quantity"));
                list.add(product);
            }
        } catch (Exception e) {
            System.err.print(e);
        }
        return list;
    }

    public List<Product> getTopBestSellerProducts(int number) {
        List<Product> list = new ArrayList<>();
        String sql = "select top(?) * from product\n"
                + "order by sold desc";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, number);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("ID"));
                product.setName(rs.getString("name"));
                product.setDetails(rs.getString("details"));
                product.setSku(rs.getString("SKU"));
                product.setPrice(rs.getInt("price"));
                product.setImages(getImageById(rs.getInt("ID")));
                product.setSeller_id(rs.getInt("seller_id"));
                product.setQuantity(rs.getInt("quantity"));
                list.add(product);
            }
        } catch (Exception e) {
            System.err.print(e);
        }
        return list;
    }

    public List<Product> getTopTrendingProducts() {
        List<Product> list = new ArrayList<>();
        String sql = "select top(8) * from product\n"
                + "order by created_at desc";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("ID"));
                product.setName(rs.getString("name"));
                product.setDetails(rs.getString("details"));
                product.setSku(rs.getString("SKU"));
                product.setPrice(rs.getInt("price"));
                product.setImages(getImageById(rs.getInt("ID")));
                product.setSeller_id(rs.getInt("seller_id"));
                product.setQuantity(rs.getInt("quantity"));
                list.add(product);
            }
        } catch (Exception e) {
            System.err.print(e);
        }
        return list;
    }

    public int count(String txt) {
        int count = 0;
        String sql = "select count(*) from product where name like ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, "%" + txt + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
            System.err.print(e);
        }
        return count;
    }

    public List<Product> getAllProductsByTxt(String txt) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from product where name like ?;";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, "%" + txt + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setDetails(rs.getString("details"));
                product.setSku(rs.getString("SKU"));
                product.setPrice(rs.getInt("price"));
                product.setImages(getImageById(rs.getInt("ID")));
                product.setSeller_id(rs.getInt("seller_id"));
                product.setQuantity(rs.getInt("quantity"));
                list.add(product);
            }
        } catch (Exception e) {
            System.err.print(e);
        }
        return list;
    }
    
    public List<Product> getAllProductsByCategory(int categoryId) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from product where category_id = ?;";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, categoryId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setDetails(rs.getString("details"));
                product.setSku(rs.getString("SKU"));
                product.setPrice(rs.getInt("price"));
                product.setImages(getImageById(rs.getInt("ID")));
                product.setSeller_id(rs.getInt("seller_id"));
                product.setQuantity(rs.getInt("quantity"));
                list.add(product);
            }
        } catch (Exception e) {
            System.err.print(e);
        }
        return list;
    }

    public List<Product> getAllSortingByPriceLow() {
        List<Product> list = new ArrayList<>();
        String sql = "select * from product\n"
                + "order by price asc";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("ID"));
                product.setName(rs.getString("name"));
                product.setDetails(rs.getString("details"));
                product.setSku(rs.getString("SKU"));
                product.setPrice(rs.getInt("price"));
                product.setImages(getImageById(rs.getInt("ID")));
                product.setSeller_id(rs.getInt("seller_id"));
                product.setQuantity(rs.getInt("quantity"));
                list.add(product);
            }
        } catch (Exception e) {
            System.err.print(e);
        }
        return list;
    }

    public List<Product> getAllSortingByPriceHigh() {
        List<Product> list = new ArrayList<>();
        String sql = "select * from product\n"
                + "order by price desc";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("ID"));
                product.setName(rs.getString("name"));
                product.setDetails(rs.getString("details"));
                product.setSku(rs.getString("SKU"));
                product.setPrice(rs.getInt("price"));
                product.setImages(getImageById(rs.getInt("ID")));
                product.setSeller_id(rs.getInt("seller_id"));
                product.setQuantity(rs.getInt("quantity"));
                list.add(product);
            }
        } catch (Exception e) {
            System.err.print(e);
        }
        return list;
    }

    public void deleteProduct(String id) {
        String sql = "delete from product_images where product_id = ?;\n"
                + "delete from product where id = ?;";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, id);
            ps.setString(2, id);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public void addProduct(String name, String image, int price, int categoryId, int quantity, String details, int sellerId) {
        String sql1 = "insert into product (name, price, category_id, quantity, details, seller_id)\n"
                + "values (?,?,?,?,?,?);";
        String sql2 = "insert into product_images(link, product_id) \n"
                + "values (?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql1);
            ps.setString(1, name);
            ps.setInt(2, price);
            ps.setInt(3, categoryId);
            ps.setInt(4, quantity);
            ps.setString(5, details);
            ps.setInt(6, sellerId);
            ps.executeUpdate();

            ps = con.prepareStatement(sql2);
            ps.setString(1, image);
            ps.setInt(2, getLastId());
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public int getLastId() {
        int last = 0;
        String sql = "select top (1) id from product \n"
                + "order by id desc;";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                last = rs.getInt("id");
            }
        } catch (Exception e) {
            System.err.print(e);
        }
        return last;
    }

    public void updateProduct(String id, String name, String image, String price, String categoryId, String quantity, String details) {
        String sql1 = "update product\n"
                + "set name = ?,\n"
                + "	details = ?,\n"
                + "	category_id = ?,\n"
                + "	price = ?,\n"
                + "	quantity = ?\n"
                + "where id = ?;";
        String sql2 = "update product_images\n"
                + "set link = ? where product_id = ?;";
        try {
            PreparedStatement ps = con.prepareStatement(sql1);
            ps.setString(1, name);
            ps.setString(2, details);
            ps.setString(3, categoryId);
            ps.setString(4, price);
            ps.setString(5, quantity);
            ps.setString(6, id);
            ps.executeUpdate();
            
            ps = con.prepareStatement(sql2);
            ps.setString(1, image);
            ps.setString(2, id);
            ps.executeUpdate();
            
        } catch (Exception e) {

        }
    }

    public static void main(String[] args) {
        ProductDAO p = new ProductDAO();
//        p.updateProduct("9", "QUADRO PRESSED STERLING yyy", "images\\categories\\QUADRO PRESSED STERLING\\1.jpg", "200", "1", "40", "Demo2");
        System.out.println(p.getAllSortingByPriceHigh());
       
    }
}
