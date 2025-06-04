/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import models.Categories;
import models.Products;

/**
 *
 * @author MSI-LAP
 */
public class CategoriesDAO extends DBContext {

    public Vector<Categories> getAllCategory(String sql) {
        Vector<Categories> listCategories = new Vector<>();

        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ResultSet rs = ptm.executeQuery();
            while (rs.next()) {
                Categories c = new Categories(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4));
                listCategories.add(c);
            }
        } catch (SQLException ex) {
            ex.getStackTrace();
        }
        return listCategories;
    }

    // insertCategories
    public int insertCategories(Categories c) {
        String sql = "INSERT INTO [dbo].[tblCategories]\n"
                + "           ([categoryID]\n"
                + "           ,[categoryName]\n"
                + "           ,[describe]\n"
                + "           ,[status])\n"
                + "     VALUES(?,?,?,?)";

        int n = 0;
        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setString(1, c.getCategoryID());
            ptm.setString(2, c.getCategoryName());
            ptm.setString(3, c.getDescribe());
            ptm.setInt(4, c.getStatus());
            n = ptm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return n;
    }

    // searchProduct
    public Categories searchCategories(String categoryID) {
        String sql = "SELECT *\n"
                + "  FROM [dbo].[tblCategories]\n"
                + "  WHERE categoryID=?";
        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setString(1, categoryID);
            ResultSet rs = ptm.executeQuery();
            if (rs.next()) {
                Categories cat = new Categories(categoryID,
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4));
                return cat;
            }
        } catch (SQLException e) {
            e.getStackTrace();
        }
        return null;

    }

    // updateProducts
    public void updateCategories(Categories c) {
        String sql = "UPDATE [dbo].[tblCategories]\n"
                + "   SET   [categoryName] =?\n"
                + "      ,[describe] =?\n"
                + "      ,[status] =?\n"
                + " WHERE categoryID =?";

        try {
            PreparedStatement ptm = connection.prepareStatement(sql);

            ptm.setString(1, c.getCategoryName());
            ptm.setString(2, c.getDescribe());
            ptm.setInt(3, c.getStatus());
            ptm.setString(4, c.getCategoryID());
            ptm.executeUpdate();
        } catch (SQLException e) {
            e.getStackTrace();
        }

    }

    public void changeStatus(String categoryID, int status) {
        String sql = "UPDATE tblCategories\n"
                + "SET status =?\n"
                + "WHERE categoryID =?\n";
        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setInt(1, status);
            ptm.setString(2, categoryID);
            ptm.executeUpdate();
        } catch (SQLException ex) {
           ex.getStackTrace();
        }
    }

    //deleteProduct
    public int deleteCategories(String categoryID) {
        int n = 0;
    String sql = "DELETE FROM [dbo].[tblCategories] WHERE categoryID = ?";

    try {
        PreparedStatement ptm = connection.prepareStatement(sql);
        ptm.setString(1, categoryID);

        ResultSet rs = getData("SELECT * FROM tblProducts WHERE categoryID = '" + categoryID + "'");
        if (rs.next()) {
            changeStatus(categoryID, 0); // Nếu còn sản phẩm, chỉ đổi trạng thái
            return n;
        }
        n = ptm.executeUpdate(); // Nếu không có sản phẩm, xóa bình thường
    } catch (SQLException ex) {
        ex.printStackTrace();
    }
    return n;

    }

    public static void main(String[] args) {
        String sql = "SELECT * FROM [dbo].[tblCategories]";
        CategoriesDAO cDAO = new CategoriesDAO();
        Vector<Categories> clist = cDAO.getAllCategory(sql);
        for (Categories categories : clist) {
            System.out.println(categories);
        }
//        Categories ca = new Categories("C1", "Laptop", "Các loại laptop nổi tiếng", 1);
//        int n = cDAO.insertCategories(ca);
//        if (n > 0) {
//            System.out.println("Inserted");
//            clist = cDAO.getAllCategory(sql);
//            for (Categories categories : clist) {
//                System.out.println(categories);
//            }
//        } else {
//            System.out.println("Insert fail!");
//        }

        //check searchCategories
        Categories cat = cDAO.searchCategories("C003");
        if (cat != null) {
            cDAO.updateCategories(new Categories("C007", "Noi that trong nha", "Cac loai noi that go", 1));
            System.out.println("Updated");
            clist = cDAO.getAllCategory(sql);
            for (Categories categories : clist) {
                System.out.println(categories);
            }
        } else {
            System.out.println("Not Found!");
        }

        // deleteCategories
        Categories cate = cDAO.searchCategories("C9");
        if (cate != null) {
            cDAO.deleteCategories("C9");
            System.out.println("Deleted!");
            clist = cDAO.getAllCategory(sql);
            for (Categories categories : clist) {
                System.out.println(categories);
            }
        } else {
            System.out.println("Not Found!");
        }
    }
}
