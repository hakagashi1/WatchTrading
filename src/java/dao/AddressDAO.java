/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Address;
import model.User;

/**
 *
 * @author ZenBook
 */
public class AddressDAO extends DBContext {

    public Address getAddressByUserId(int userId) {
        String sql = "select * from address where user_id = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Address a = new Address();
                a.setId(rs.getInt("id"));
                a.setUser(new UserDAO().getUserById(rs.getInt("user_id")));
                a.setCompany(rs.getString("company"));
                a.setTelephone(rs.getString("telephone"));
                a.setAddress(rs.getString("address"));
                a.setDistrict(getDistrict(rs.getInt("district_id")));
                a.setCity(getCity(rs.getInt("district_id")));
                a.setCountry(getCountry(rs.getInt("district_id")));
                return a;
            }
        } catch (Exception e) {
            System.out.println(e);
        }

        return null;
    }

    String getDistrict(int districtId) {
        String sql = "select \n"
                + "	'district_id' = d.id,\n"
                + "	'district_name' = d.name,\n"
                + "	'city_id' = ci.id,\n"
                + "	'city_name' = ci.name,\n"
                + "	'country_id' = co.id,\n"
                + "	'country_name' = co.name\n"
                + "from district d inner join dbo.[city] ci\n"
                + "	on ci.id = d.city_id\n"
                + "	inner join dbo.[country] co\n"
                + "	on ci.country_id = co.id\n"
                + "     where d.id = ?;";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, districtId);
            ResultSet rs = ps.executeQuery();
            return rs.getString(2);
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
    
    String getCity(int districtId) {
        String sql = "select \n"
                + "	'district_id' = d.id,\n"
                + "	'district_name' = d.name,\n"
                + "	'city_id' = ci.id,\n"
                + "	'city_name' = ci.name,\n"
                + "	'country_id' = co.id,\n"
                + "	'country_name' = co.name\n"
                + "from district d inner join dbo.[city] ci\n"
                + "	on ci.id = d.city_id\n"
                + "	inner join dbo.[country] co\n"
                + "	on ci.country_id = co.id\n"
                + "     where d.id = ?;";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, districtId);
            ResultSet rs = ps.executeQuery();
            return rs.getString("city_name");
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    String getCountry(int districtId) {
        String sql = "select \n"
                + "	'district_id' = d.id,\n"
                + "	'district_name' = d.name,\n"
                + "	'city_id' = ci.id,\n"
                + "	'city_name' = ci.name,\n"
                + "	'country_id' = co.id,\n"
                + "	'country_name' = co.name\n"
                + "from district d inner join dbo.[city] ci\n"
                + "	on ci.id = d.city_id\n"
                + "	inner join dbo.[country] co\n"
                + "	on ci.country_id = co.id\n"
                + "     where d.id = ?;";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, districtId);
            ResultSet rs = ps.executeQuery();
            return rs.getString("country_name");
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
    
    public static void main(String[] args) {
        AddressDAO a = new AddressDAO();
        System.out.println(a.getDistrict(1));
    }
}
