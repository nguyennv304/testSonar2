/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.util.Vector;
import models.OrderDetails;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author MSI-LAP
 */
public class OrderDetailsDAO extends DBContext {

    public Vector<OrderDetails> getAllOrderDetails(String sql) {
        Vector<OrderDetails> listOrderDetails = new Vector<>();

        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ResultSet rs = ptm.executeQuery();
            while (rs.next()) {
                OrderDetails or = new OrderDetails(
                        rs.getInt(1),
                        rs.getDouble(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getInt(6));
                listOrderDetails.add(or);
            }
        } catch (SQLException ex) {
            ex.getStackTrace();
        }
        return listOrderDetails;
    }

    // Kiểm tra orderID có tồn tại không
    private boolean isOrderIDExists(int orderID) {
        String sql = "SELECT 1 FROM tblOrders WHERE orderID = ?";
        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setInt(1, orderID);
            ResultSet rs = ptm.executeQuery();
            return rs.next();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }

    // insert OrderDetails
    public int insertOrderDetails(OrderDetails or) {
        if (!isOrderIDExists(or.getOrderID())) {
            System.out.println("Insert fail! orderID does not exist.");
            return 0;
        }
        String sql = "INSERT INTO [dbo].[tblOrderDetails]"
                + " (price, quantity, orderID, productID, status)"
                + " VALUES (?, ?, ?, ?, ?)";
        int n = 0;

        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setDouble(1, or.getPrice());
            ptm.setInt(2, or.getQuantity());
            ptm.setInt(3, or.getOrderID());
            ptm.setInt(4, or.getProductID());
            ptm.setInt(5, or.getStatus());
            n = ptm.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }

    //searchOrderDetails
    public OrderDetails searchOrderdetails(int detailID) {
        String sql = "SELECT *\n"
                + "  FROM [dbo].[tblOrderDetails]\n"
                + "  WHERE detailID = ?";

        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setInt(1, detailID);
            ResultSet rs = ptm.executeQuery();
            if (rs.next()) {
                OrderDetails ord = new OrderDetails(detailID,
                        rs.getDouble(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getInt(6));
                return ord;
            }
        } catch (SQLException ex) {
            ex.getStackTrace();
        }
        return null;
    }

    //updateOrderDetail
    public void updateOrderDetails(OrderDetails or) {
        if (!isOrderIDExists(or.getOrderID())) {
            System.out.println("Update fail! orderID does not exist.");
            return;
        }
        String sql = "UPDATE [dbo].[tblOrderDetails]\n"
                + "   SET [price] = ?\n"
                + "      ,[quantity] = ?\n"
                + "      ,[orderID] = ?\n"
                + "      ,[productID] = ?\n"
                + "      ,[status] = ?\n"
                + " WHERE detailID=?";

        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setDouble(1, or.getPrice());
            ptm.setInt(2, or.getQuantity());
            ptm.setInt(3, or.getOrderID());
            ptm.setInt(4, or.getProductID());
            ptm.setInt(5, or.getStatus());
            ptm.setInt(6, or.getDetailID());
            ptm.executeUpdate();
        } catch (SQLException ex) {
            ex.getStackTrace();
        }

    }

    public void changeStatus(int detailID, int status) {
        String sql = "update tblOrderDetails\n"
                + "set status =?\n"
                + "where detailID=?";
        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setInt(1, status);
            ptm.setInt(2, detailID);
            ptm.executeUpdate();
        } catch (SQLException ex) {
            ex.getStackTrace();
        }
    }

    //deleteOrderDetails
    public int deleteOrderDetails(int detailID) {  // Đổi kiểu tham số
    int n = 0;
    String sql = "DELETE FROM [dbo].[tblOrderDetails] WHERE detailID = ?";

    try {
        PreparedStatement ptm = connection.prepareStatement(sql);
        ptm.setInt(1, detailID);
        n = ptm.executeUpdate();
    } catch (SQLException ex) {
        ex.printStackTrace();  // In lỗi ra console
    }
    return n;
}

    public static void main(String[] args) {
        String sql = "SELECT * FROM [dbo].[tblOrderDetails]";
        OrderDetailsDAO odDAO = new OrderDetailsDAO();
        Vector<OrderDetails> odlist = odDAO.getAllOrderDetails(sql);
        for (OrderDetails orderDetails : odlist) {
            System.out.println(orderDetails);
        }
        OrderDetails ord = new OrderDetails( 3990.00, 2, 3, 36, 1);
        int n = odDAO.insertOrderDetails(ord);
        if (n > 0) {
            System.out.println("Inserted!");
            odlist = odDAO.getAllOrderDetails(sql);
            for (OrderDetails orderDetails : odlist) {
                System.out.println(orderDetails);
            }
        } else {
            System.out.println("Insert fail!");
        }

        OrderDetails or = odDAO.searchOrderdetails(3);
        if (or != null) {
            odDAO.updateOrderDetails(new OrderDetails(4, 1000.00, 29, 2, 34, 1));
            System.out.println("Updated!");
            odlist = odDAO.getAllOrderDetails(sql);
            for (OrderDetails orderDetails : odlist) {
                System.out.println(orderDetails);
            }
        } else {
            System.out.println("Not Found!");
        }

        OrderDetails order = odDAO.searchOrderdetails(17);
        if (order != null) {
            odDAO.deleteOrderDetails(order.getDetailID());
            System.out.println("Deleted!");
            odlist = odDAO.getAllOrderDetails(sql);
            for (OrderDetails orderDetails : odlist) {
                System.out.println(orderDetails);
            }
        } else {
            System.out.println("Not Found!");
        }
    }
}
