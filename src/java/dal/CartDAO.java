/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.security.interfaces.RSAKey;
import models.Cart;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author MSI-LAP
 */
public class CartDAO extends DBContext {

  public Cart getCart(String productID) {
    Cart cart = null;
    String sql = "select productID, productName, price, image " +
                 "from tblProducts where productID = ?";

    try {
        PreparedStatement ptm = connection.prepareStatement(sql);
        ptm.setString(1, productID);
        ResultSet rs = ptm.executeQuery();
        if (rs.next()) {
            cart = new Cart(
                rs.getInt("productID"),
                rs.getString("productName"),
                rs.getDouble("price"),
                0, // quantity mặc định
                rs.getString("image") // 👈 lấy hình ảnh từ DB
            );
        }
    } catch (SQLException ex) {
        ex.printStackTrace();
    }
    return cart;
}
}
