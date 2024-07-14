package com.fit.nlu.DHHCeramic.dao.impl;

import com.fit.nlu.DHHCeramic.dao.DiscountDao;
import com.fit.nlu.DHHCeramic.jdbc.JDBCConnection;
import com.fit.nlu.DHHCeramic.model.Discount;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DiscountDaoImpl extends JDBCConnection implements DiscountDao {

    @Override
    public void insert(Discount discount) {
        String sql = "INSERT INTO discounts(id, discounts.name, des, discountPercent, startDate, endDate, createdBy,createdDate) VALUE(?,?,?,?,?,?,?,?)";
        Connection con = getJDBCConnection();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, discount.getId());
            ps.setString(2, discount.getName());
            ps.setString(3, discount.getDescription());
            ps.setDouble(4, discount.getDiscountPercent());
            ps.setDate(5, (Date) discount.getStartDate());
            ps.setDate(6, (Date) discount.getEndDate());
            ps.setString(7, discount.getCreatedBy());
            ps.setDate(8, (Date) discount.getCreatedDate());

            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void edit(Discount discount) {
        String sql = "UPDATE discounts SET discounts.name=?, des=?, discountPercent=?, startDate=?, endDate=?, updateBy=?, updateDate=? WHERE id=?";
        Connection con = getJDBCConnection();
        System.out.println("DAO" + discount);
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, discount.getName());
            ps.setString(2, discount.getDescription());
            ps.setDouble(3, discount.getDiscountPercent());
            ps.setDate(4, (Date) discount.getStartDate());
            ps.setDate(5, (Date) discount.getEndDate());
            ps.setString(6, discount.getUpdatedBy());
            ps.setDate(7, (Date) discount.getUpdatedDate());
            ps.setInt(8, discount.getId());
            System.out.println(discount);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM discounts WHERE id=?";
        Connection con = getJDBCConnection();

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Discount get(int id) {
        String sql = "SELECT * FROM discounts WHERE id=?";
        Connection con = getJDBCConnection();

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Discount discount = new Discount();
                discount.setId(rs.getInt("id"));
                discount.setName(rs.getString("name"));
                discount.setDescription(rs.getString("des"));
                discount.setDiscountPercent(rs.getDouble("discountPercent"));
                discount.setStartDate(rs.getDate("startDate"));
                discount.setEndDate(rs.getDate("endDate"));
                return discount;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public List<Discount> getAll() {
        List<Discount> list = new ArrayList<Discount>();
        String sql = "SELECT * FROM discounts";
        Connection con = getJDBCConnection();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Discount discount = new Discount();

                discount.setId(rs.getInt("id"));
                discount.setName(rs.getString("name"));
                discount.setDescription(rs.getString("des"));
                discount.setDiscountPercent(rs.getDouble("discountPercent"));
                discount.setStartDate(rs.getDate("startDate"));
                discount.setEndDate(rs.getDate("endDate"));
                list.add(discount);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public Discount get(String name) {
        String sql = "SELECT * FROM discounts WHERE name=?";
        Connection con = getJDBCConnection();

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, name);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Discount dis = new Discount();
                dis.setId(rs.getInt("id"));
                dis.setName(rs.getString("name"));
                dis.setDiscountType(rs.getString("discountType"));
                dis.setDescription(rs.getString("des"));
                dis.setDiscountPercent(rs.getDouble("discountPercent"));
                dis.setDisId(rs.getInt("disId"));
                dis.setStartDate(rs.getDate("startDate"));
                dis.setEndDate(rs.getDate("endDate"));
                return dis;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Discount> search(String key) {
        List<Discount> list = new ArrayList<Discount>();
        String sql = "SELECT * FROM discounts WHERE name LIKE ?";
        Connection con = getJDBCConnection();

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, "%" + key + "%");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Discount dis = new Discount();
                dis.setId(rs.getInt("id"));
                dis.setName(rs.getString("name"));
                list.add(dis);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
