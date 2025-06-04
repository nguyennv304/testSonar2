/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.lang.reflect.Array;
import java.sql.Connection;
import java.util.Vector;
import models.Products;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ProductDAO extends DBContext {

    public Vector<Products> getAllProduct(String sql) {
        Vector<Products> listProduct = new Vector<>();
        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ResultSet rs = ptm.executeQuery();
            while (rs.next()) {
                Products p = new Products(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getDate(7),
                        rs.getDate(8),
                        rs.getInt(9));
                listProduct.add(p);
            }
        } catch (SQLException ex) {
            ex.getStackTrace();
        }
        return listProduct;
    }

    public Vector<Products> getAllProductByCateID(String cateID) {
        String sql = "SELECT *\n"
                + "  FROM [cameraShop5].[dbo].[tblProducts]\n"
                + "	where categoryID = ?";
        Vector<Products> listProduct = new Vector<>();
        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setString(1, cateID);
            ResultSet rs = ptm.executeQuery();

            while (rs.next()) {
                Products p = new Products(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getDate(7),
                        rs.getDate(8),
                        rs.getInt(9));
                listProduct.add(p);

            }
        } catch (SQLException ex) {
            ex.getStackTrace();
        }
        return listProduct;
    }

    public int getRoleIDbyJoin() {

        int a = 0;
        String sql = "SELECT r.roleID\n"
                + "  FROM [cameraShop5].[dbo].[tblProducts] p join [dbo].[tblOrderDetails] od\n"
                + "  on p.productID = od.productID join [dbo].[tblOrders] o on od.orderID = o.orderID join\n"
                + "	[dbo].[tblUsers] u on o.userID = u.userID join [dbo].[tblRoles] r on u.roleID = r.roleID\n"
                + "	where r.roleID = 2";

        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ResultSet rs = ptm.executeQuery();
            while (rs.next()) {
                a = rs.getInt("roleID");
            }
        } catch (SQLException ex) {
            ex.getStackTrace();
        }
        return a;
    }

    public void updateProductQuantity(int productID, int quantityOrdered) {
        String sql = "UPDATE [dbo].[tblProducts]\n"
                + "   SET \n"
                + "      [quantity] = quantity - ?\n"
                + "\n"
                + " WHERE productID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, quantityOrdered);
            ps.setInt(2, productID);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        String sql = "SELECT *\n"
                + "  FROM [cameraShop5].[dbo].[tblProducts]";
        ProductDAO pDAO = new ProductDAO();
        Vector<Products> a = pDAO.getAllProductByCateID("DSLR");
        for (Products products : a) {
            System.out.println(products);
        }

    }

    public int insertProduct(Products p) {
        String sql = "INSERT INTO [dbo].[tblProducts]\n"
                + "           ([productName]\n"
                + "           ,[image]\n"
                + "           ,[price]\n"
                + "           ,[quantity]\n"
                + "           ,[categoryID]\n"
                + "           ,[importDate]\n"
                + "           ,[usingDate]\n"
                + "           ,[status])\n"
                + "     VALUES(?,?,?,?,?,?,?,?)";
        int n = 0;
        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setString(1, p.getProductName());
            ptm.setString(2, p.getImage());
            ptm.setDouble(3, p.getPrice());
            ptm.setInt(4, p.getQuantity());
            ptm.setString(5, p.getCategoryID());
            ptm.setDate(6, p.getImportDate());
            ptm.setDate(7, p.getUsingDate());
            ptm.setInt(8, p.getStatus());
            n = ptm.executeUpdate();
        } catch (SQLException ex) {
            ex.getStackTrace();
        }
        return n;
    }

    public Products searchProduct(int productID) {

        String sql = "SELECT [productID]\n"
                + "      ,[productName]\n"
                + "      ,[image]\n"
                + "      ,[price]\n"
                + "      ,[quantity]\n"
                + "      ,[categoryID]\n"
                + "      ,[importDate]\n"
                + "      ,[usingDate]\n"
                + "      ,[status]\n"
                + "  FROM [dbo].[tblProducts]"
                + "WHERE productID = ?";
        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setInt(1, productID);
            ResultSet rs = ptm.executeQuery();
            if (rs.next()) {
                return new Products(productID,
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getDate(7),
                        rs.getDate(8),
                        rs.getInt(9));
            }
        } catch (SQLException ex) {
            ex.getStackTrace();
        }
        return null;
    }

    public void updateProduct(Products p) {
        String sql = "UPDATE [dbo].[tblProducts]\n"
                + "   SET [productName] =?\n"
                + "      ,[image] = ?\n"
                + "      ,[price] = ?\n"
                + "      ,[quantity] = ?\n"
                + "      ,[categoryID] = ?\n"
                + "      ,[importDate] = ?\n"
                + "      ,[usingDate] = ?\n"
                + "      ,[status] = ?\n"
                + " WHERE productID=?";
        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setString(1, p.getProductName());
            ptm.setString(2, p.getImage());
            ptm.setDouble(3, p.getPrice());
            ptm.setInt(4, p.getQuantity());
            ptm.setString(5, p.getCategoryID());
            ptm.setDate(6, p.getImportDate());
            ptm.setDate(7, p.getUsingDate());
            ptm.setInt(8, p.getStatus());
            ptm.setInt(9, p.getProductID());
            ptm.executeUpdate();
        } catch (SQLException ex) {
            ex.getStackTrace();
        }

    }

    public Products getLast() {
        String query = "SELECT *\n"
                + "  FROM [cameraShop5].[dbo].[tblProducts]\n"
                + "  order by importDate desc";

        try {
            PreparedStatement ptm = connection.prepareStatement(query);
            ResultSet rs = ptm.executeQuery();
            if (rs.next()) {
                return new Products(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getDate(7),
                        rs.getDate(8),
                        rs.getInt(9));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void changeStatus(int productID, int status) {
        String sql = "UPDATE [dbo].[tblProducts]\n"
                + "   SET [status] = ?\n"
                + " WHERE productID =?";
        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setInt(1, status);
        } catch (SQLException ex) {
            ex.getStackTrace();
        }
    }

    public int deleteProduct(int productID) {
        int n = 0;
        String checkSql = "SELECT * FROM [dbo].[tblOrderDetails] WHERE productID = ?";
        String deleteSql = "DELETE FROM [dbo].[tblProducts] WHERE productID = ?";

        try {
            PreparedStatement checkPtm = connection.prepareStatement(checkSql);
            checkPtm.setInt(1, productID);
            ResultSet rs = checkPtm.executeQuery();
            if (rs.next()) {
                changeStatus(productID, 0);
                return n;
            }
            PreparedStatement deletePtm = connection.prepareStatement(deleteSql);
            deletePtm.setInt(1, productID);
            n = deletePtm.executeUpdate();

        } catch (SQLException ex) {
            ex.getStackTrace();
        }
        return n;
    }

}
