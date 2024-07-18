package com.fit.nlu.DHHCeramic.dao.impl;

import com.fit.nlu.DHHCeramic.dao.DiscountDao;
import com.fit.nlu.DHHCeramic.jdbc.JDBCConnection;
import com.fit.nlu.DHHCeramic.model.Discount;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DiscountDaoImpl extends JDBCConnection implements DiscountDao {

    @Override
    public void insert(Discount discount) {
<<<<<<< HEAD
        String sql = "INSERT INTO discounts(id, discounts.name, des, discountPercent, startDate, endDate, createdBy,createdDate) VALUE(?,?,?,?,?,?,?,?)";
        Connection con = JDBCConnection.getJDBCConnection();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
=======
        String sql = "INSERT INTO discounts(id, name, discountType, des, discountPercent, disId, startDate, endDate, createdBy, createdDate) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try (Connection con = getJDBCConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

>>>>>>> 67832a42bff129552ad795147552161f0b135e21
            ps.setInt(1, discount.getId());
            ps.setString(2, discount.getName());
            ps.setString(3, discount.getDiscountType());
            ps.setString(4, discount.getDescription());
            ps.setDouble(5, discount.getDiscountPercent());
            ps.setInt(6, discount.getDisId());
            ps.setDate(7, new java.sql.Date(discount.getStartDate().getTime()));
            ps.setDate(8, new java.sql.Date(discount.getEndDate().getTime()));
            ps.setString(9, discount.getCreatedBy());
            ps.setDate(10, new java.sql.Date(discount.getCreatedDate().getTime()));

            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void edit(Discount discount) {
<<<<<<< HEAD
        String sql  = "UPDATE discounts SET discounts.name=?, des=?, discountPercent=?, startDate=?, endDate=?, updateBy=?, updateDate=? WHERE id=?";
        Connection con = JDBCConnection.getJDBCConnection();
        System.out.println("DAO" + discount);
        try {
            PreparedStatement ps = con.prepareStatement(sql);
=======
        String sql = "UPDATE discounts SET name=?, discountType=?, des=?, discountPercent=?, disId=?, startDate=?, endDate=?, updateBy=?, updateDate=? WHERE id=?";
        try (Connection con = getJDBCConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
>>>>>>> 67832a42bff129552ad795147552161f0b135e21
            ps.setString(1, discount.getName());
            ps.setString(2, discount.getDiscountType());
            ps.setString(3, discount.getDescription());
            ps.setDouble(4, discount.getDiscountPercent());
            ps.setInt(5, discount.getDisId());
            ps.setDate(6, new java.sql.Date(discount.getStartDate().getTime()));
            ps.setDate(7, new java.sql.Date(discount.getEndDate().getTime()));
            ps.setString(8, discount.getUpdatedBy());
            ps.setDate(9, new java.sql.Date(discount.getUpdatedDate().getTime()));
            ps.setInt(10, discount.getId());

            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM discounts WHERE id=?";
<<<<<<< HEAD
        Connection con = JDBCConnection.getJDBCConnection();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
=======
        try (Connection con = getJDBCConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

>>>>>>> 67832a42bff129552ad795147552161f0b135e21
            ps.setInt(1, id);
            ps.executeUpdate();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Discount get(int id) {
        String sql = "SELECT * FROM discounts WHERE id=?";
<<<<<<< HEAD
        Connection con = JDBCConnection.getJDBCConnection();
=======
        try (Connection con = getJDBCConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
>>>>>>> 67832a42bff129552ad795147552161f0b135e21

            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    Discount discount = new Discount();
                    discount.setId(rs.getInt("id"));
                    discount.setName(rs.getString("name"));
                    discount.setDiscountType(rs.getString("discountType"));
                    discount.setDescription(rs.getString("des"));
                    discount.setDiscountPercent(rs.getDouble("discountPercent"));
                    discount.setDisId(rs.getInt("disId"));
                    discount.setStartDate(rs.getDate("startDate"));
                    discount.setEndDate(rs.getDate("endDate"));
                    discount.setCreatedBy(rs.getString("createdBy"));
                    discount.setCreatedDate(rs.getDate("createdDate"));
                    discount.setUpdatedBy(rs.getString("updateBy"));
                    discount.setUpdatedDate(rs.getDate("updateDate"));
                    return discount;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public List<Discount> getAll() {
        List<Discount> list = new ArrayList<>();
        String sql = "SELECT * FROM discounts";
<<<<<<< HEAD
        Connection con = JDBCConnection.getJDBCConnection();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
=======
        try (Connection con = getJDBCConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

>>>>>>> 67832a42bff129552ad795147552161f0b135e21
            while (rs.next()) {
                Discount discount = new Discount();
                discount.setId(rs.getInt("id"));
                discount.setName(rs.getString("name"));
                discount.setDiscountType(rs.getString("discountType"));
                discount.setDescription(rs.getString("des"));
                discount.setDiscountPercent(rs.getDouble("discountPercent"));
                discount.setDisId(rs.getInt("disId"));
                discount.setStartDate(rs.getDate("startDate"));
                discount.setEndDate(rs.getDate("endDate"));
                discount.setCreatedBy(rs.getString("createdBy"));
                discount.setCreatedDate(rs.getDate("createdDate"));
                discount.setUpdatedBy(rs.getString("updateBy"));
                discount.setUpdatedDate(rs.getDate("updateDate"));
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
<<<<<<< HEAD
        Connection con = JDBCConnection.getJDBCConnection();
=======
        try (Connection con = getJDBCConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
>>>>>>> 67832a42bff129552ad795147552161f0b135e21

            ps.setString(1, name);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    Discount dis = new Discount();
                    dis.setId(rs.getInt("id"));
                    dis.setName(rs.getString("name"));
                    dis.setDiscountType(rs.getString("discountType"));
                    dis.setDescription(rs.getString("des"));
                    dis.setDiscountPercent(rs.getDouble("discountPercent"));
                    dis.setDisId(rs.getInt("disId"));
                    dis.setStartDate(rs.getDate("startDate"));
                    dis.setEndDate(rs.getDate("endDate"));
                    dis.setCreatedBy(rs.getString("createdBy"));
                    dis.setCreatedDate(rs.getDate("createdDate"));
                    dis.setUpdatedBy(rs.getString("updateBy"));
                    dis.setUpdatedDate(rs.getDate("updateDate"));
                    return dis;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Discount> search(String key) {
        List<Discount> list = new ArrayList<>();
        String sql = "SELECT * FROM discounts WHERE name LIKE ?";
<<<<<<< HEAD
        Connection con = JDBCConnection.getJDBCConnection();
=======
        try (Connection con = getJDBCConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
>>>>>>> 67832a42bff129552ad795147552161f0b135e21

            ps.setString(1, "%" + key + "%");
            try (ResultSet rs = ps.executeQuery()) {
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
                    dis.setCreatedBy(rs.getString("createdBy"));
                    dis.setCreatedDate(rs.getDate("createdDate"));
                    dis.setUpdatedBy(rs.getString("updateBy"));
                    dis.setUpdatedDate(rs.getDate("updateDate"));
                    list.add(dis);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public Workbook exportExcel() {
        List<Discount> list = getAll();
        Workbook workbook = new XSSFWorkbook();
        Sheet sheet = workbook.createSheet("Product");

        Row rowHeader = sheet.createRow(0);
        String[] col = {"id", "name", "description", "discountPercent", "startDate", "endDate", "createdBy", "createdDate", "updatedBy", "updatedDate"};
        for (int i = 0; i < col.length; i++) {
            Cell cell = rowHeader.createCell(i);
            cell.setCellValue(col[i]);
        }

        int rowNum = 1;
        for (Discount discount : list) {
            Row row = sheet.createRow(rowNum++);
            row.createCell(0).setCellValue(discount.getId());
            row.createCell(1).setCellValue(discount.getName());
            row.createCell(2).setCellValue(discount.getDescription());
            row.createCell(3).setCellValue(discount.getDiscountPercent());
            row.createCell(4).setCellValue(discount.getStartDate());
            row.createCell(5).setCellValue(discount.getEndDate());
            row.createCell(6).setCellValue(discount.getCreatedBy());
            row.createCell(7).setCellValue(discount.getCreatedDate());
            row.createCell(8).setCellValue(discount.getUpdatedBy());
            row.createCell(9).setCellValue(discount.getUpdatedDate());
        }
        return workbook;
    }
}
