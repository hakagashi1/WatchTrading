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
import model.User;

/**
 *
 * @author ZenBook
 */
public class UserDAO extends DBContext {

    public List<User> getAllUsers() {
        List<User> list = new ArrayList<>();
        String sql = "select * from dbo.[user] ";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt(1));
                user.setUser(rs.getString(2));
                user.setPass(rs.getString(3));
                user.setIsSell(rs.getBoolean("isSell"));
                user.setIsAdmin(rs.getBoolean("isAdmin"));
                list.add(user);
            }
        } catch (Exception e) {
            System.err.print(e);
        }
        return list;
    }

    public User getUserById(int id) {
        String sql = "select * from dbo.[user] where id = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("telephone"),
                        rs.getBoolean("isSell"),
                        rs.getBoolean("isAdmin"),
                        rs.getString("email"));
            }
        } catch (Exception e) {
            System.err.print(e);
        }
        return null;
    }

    public User login(String username, String password) {
        String sql = "select * from dbo.[user] \n"
                + "where username = ? and password = ?;";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("telephone"),
                        rs.getBoolean("isSell"),
                        rs.getBoolean("isAdmin"),
                        rs.getString("email"));
            }
        } catch (Exception e) {
            System.err.print(e);
        }
        return null;
    }

    public User checkUsernameExist(String username) {
        String sql1 = "select * from dbo.[user]\n"
                + "where username = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql1);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("telephone"),
                        rs.getBoolean("isSell"),
                        rs.getBoolean("isAdmin"),
                        rs.getString("email"));
            }
        } catch (Exception e) {
            System.err.print(e);
        }
        return null;
    }

    public User checkEmailExist(String email) {
        String sql1 = "select * from dbo.[user]\n"
                + "where email = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql1);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("telephone"),
                        rs.getBoolean("isSell"),
                        rs.getBoolean("isAdmin"),
                        rs.getString("email"));
            }
        } catch (Exception e) {
            System.err.print(e);
        }
        return null;
    }

    public void register(String username, String password, String email, String telephone, String first, String last, boolean isSell, boolean isAdmin) {
        String sql = "insert into dbo.[user]\n"
                + "values (?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, first);
            ps.setString(4, last);
            ps.setString(5, telephone);
            ps.setBoolean(6, isSell);
            ps.setBoolean(7, isAdmin);
            ps.setString(8, email);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public void updateUser(String telephone, String first, String last, int id) {
        String sql = "update dbo.[user]\n"
                + "set telephone = ?,\n"
                + "	first_name = ?,\n"
                + "	last_name = ?\n"
                + "where id = ?;";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, telephone);
            ps.setString(2, first);
            ps.setString(3, last);
            ps.setInt(4, id);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public static void main(String[] args) {
        UserDAO u = new UserDAO();
        System.out.println(u.getUserById(1));
    }
}
