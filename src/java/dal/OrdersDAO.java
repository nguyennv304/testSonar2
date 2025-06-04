/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

/**
 *
 * @author MSI-LAP
 */
import java.util.Vector;
import models.Orders;
import org.apache.tomcat.dbcp.dbcp2.PoolingConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

public class OrdersDAO extends DBContext {

    public Vector<Orders> getAllOrders(String sql) {
        Vector<Orders> listOrder = new Vector<>();

        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ResultSet rs = ptm.executeQuery();
            while (rs.next()) {
                Orders o = new Orders(
                        rs.getInt(1),
                        rs.getDate(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getInt(5));
                listOrder.add(o);
            }
        } catch (SQLException ex) {
            ex.getStackTrace();
        }
        return listOrder;
    }

    //insertOrders
    public int insertOrders(Orders o) {
        String sql = "INSERT INTO [dbo].[tblOrders]\n"
                + "           ([orderDate]\n"
                + "           ,[total]\n"
                + "           ,[userID]"
                + "           ,[status])\n"
                + "     VALUES (?,?,?,?)";

        int n = 0;
        int generatedID = -1;
        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setDate(1, o.getOrderDate());
            ptm.setDouble(2, o.getTotal());
            ptm.setString(3, o.getUserID());
            ptm.setInt(4, o.getStatus());
            n = ptm.executeUpdate();
            // Lấy orderID vừa được tạo
            ResultSet rs = ptm.getGeneratedKeys();
            if (rs.next()) {
                generatedID = rs.getInt(1);
                System.out.println("Inserted! New OrderID: " + generatedID);
            }
        } catch (SQLException ex) {
            ex.getStackTrace();
        }
        return n;
    }

    //searchOrders
    public Orders searchOrder(int orderID) {
        String sql = "SELECT *\n"
                + "  FROM [dbo].[tblOrders]\n"
                + "  WHERE orderID=?";

        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setInt(1, orderID);
            ResultSet rs = ptm.executeQuery();
            if (rs.next()) {
                Orders ord = new Orders(orderID,
                        rs.getDate(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getInt(5));
                return ord;
            }
        } catch (SQLException ex) {
            ex.getStackTrace();
        }
        return null;
    }

    //updateOrders
    public void updateOrders(Orders o) {
        String sql = "UPDATE [dbo].[tblOrders]\n"
                + "   SET [orderDate] = ?\n"
                + "      ,[total] = ?\n"
                + "      ,[userID] = ?\n"
                + "      ,[status] = ?\n"
                + " WHERE orderID=?";
        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setDate(1, o.getOrderDate());
            ptm.setDouble(2, o.getTotal());
            ptm.setString(3, o.getUserID());
            ptm.setInt(4, o.getStatus());
            ptm.setInt(5, o.getOrderID());
            ptm.executeUpdate();
        } catch (SQLException ex) {
            ex.getStackTrace();
        }

    }

    public void changeStatus(int orderID, int newStatus) {
        //code here
        String sql = "update tblOrders\n"
                + "set status =?\n"
                + "where orderID=?";
        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setInt(1, newStatus);
            ptm.setInt(2, orderID);
            ptm.executeUpdate();
        } catch (SQLException ex) {
            ex.getStackTrace();
        }

    }

    public int deleteOrder(int orderID) {
        int n = 0;
        String sql = "DELETE FROM [dbo].[tblOrders]\n"
                + "      WHERE orderID = ?";

        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setInt(1, orderID);
            ResultSet rs = getData("select *\n"
                    + "From tblOrderDetails\n"
                    + "Where orderID=" + orderID);
            if (rs.next()) {
                changeStatus(orderID, 0);
                return n;
            }
            n = ptm.executeUpdate();
        } catch (SQLException ex) {
            ex.getStackTrace();
        }
        return n;
    }

    public static void main(String[] args) {
        String sql = "SELECT * FROM [dbo].[tblOrders]";
        OrdersDAO oDAO = new OrdersDAO();
        Vector<Orders> olist = oDAO.getAllOrders(sql);
        for (Orders orders : olist) {
            System.out.println(orders);
        }
        Orders ord = new Orders(
                new Date(2025 - 1900, 1, 15),
                39900.00, "U003", 1);
        int n = oDAO.insertOrders(ord);
        if (n > 0) {
            System.out.println("Inserted");
            olist = oDAO.getAllOrders(sql);
            for (Orders orders : olist) {
                System.out.println(orders);
            }
        } else {
            System.out.println("Insert fail!");
        }

        Orders or = oDAO.searchOrder(3);
        if (or != null) {
            oDAO.updateOrders(new Orders(7, new Date(2025 - 1900, 1, 15), 19900.00, "U008", 1));
            System.out.println("Updated");
            olist = oDAO.getAllOrders(sql);
            for (Orders orders : olist) {
                System.out.println(olist);
            }
        } else {
            System.out.println("Not Found!");
        }

        Orders order = oDAO.searchOrder(11);
        if (order != null) {
            oDAO.deleteOrder(11);
            System.out.println("Deleted!");
            olist = oDAO.getAllOrders(sql);
            for (Orders orders : olist) {
                System.out.println(orders);
            }
        } else {
            System.out.println("Not Found!");
        }
    }

}
