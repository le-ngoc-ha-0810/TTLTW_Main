package com.fit.nlu.DHHCeramic.dao.impl;

import com.fit.nlu.DHHCeramic.jdbc.JDBCConnection;
import com.fit.nlu.DHHCeramic.model.Product;
import com.fit.nlu.DHHCeramic.model.ProductImport;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductImportDaoImpl extends JDBCConnection {
    // Phương thức kết nối được giả định đã có trong lớp JDBCConnection
    public List<ProductImport> getAll() {
        List<ProductImport> productImports = new ArrayList<>();
        String sql = "SELECT pi.id, pi.quantity, pi.createdAt, pi.price, pi.importBatch, " +
                "p.id as productId, p.name, p.price as productPrice " +
                "FROM product_imports pi " +
                "JOIN products p ON pi.productId = p.id";
        Connection con = JDBCConnection.getJDBCConnection();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                ProductImport productImport = new ProductImport();
                productImport.setId(rs.getInt("id"));
                productImport.setQuantity(rs.getInt("quantity"));
                productImport.setCreatedAt(rs.getTimestamp("createdAt"));
                productImport.setPrice(rs.getLong("price"));
                productImport.setImportBatch(rs.getInt("importBatch"));

                Product product = new Product();
                product.setId(rs.getInt("productId"));
                product.setName(rs.getString("name"));
                product.setPrice(rs.getLong("productPrice"));

                productImport.setProduct(product);

                productImports.add(productImport);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return productImports;
    }
}

