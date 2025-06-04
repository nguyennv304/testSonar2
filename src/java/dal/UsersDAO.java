/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.util.Vector;
import models.Users;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author MSI-LAP
 */
public class UsersDAO extends DBContext {

    //LOGIN userID and input password
    private static final String LOGIN = "SELECT *\n"
            + "  FROM [dbo].[tblUsers]\n"
            + "  WHERE userID=? and password=?";

    public boolean checkLogin(String userID, String password) {
        boolean check = false;
        try {
            PreparedStatement ptm = connection.prepareStatement(LOGIN);
            ptm.setString(1, userID);
            ptm.setString(2, password);
            ResultSet rs = ptm.executeQuery();
            if (rs.next()) {
                check = true;
            }
        } catch (SQLException ex) {
            ex.getStackTrace();
        }
        return check;
    }

    public Vector<Users> getAllUsers(String sql) {
        Vector<Users> listUsers = new Vector<>();

        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ResultSet rs = ptm.executeQuery();

            while (rs.next()) {
                Users u = new Users(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getBoolean(8));
//                        rs.getInt(9));
                listUsers.add(u);

            }
        } catch (SQLException ex) {
            ex.getStackTrace();
        }
        return listUsers;
    }

    public int getRoleIDByLogin(String userID, String password) {
        int roleID = 0;
        String sql = "SELECT r.roleID "
                + "FROM tblUsers u JOIN tblRoles r ON u.roleID = r.roleID "
                + "WHERE u.userID = ? AND u.password = ?";

        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setString(1, userID);
            ptm.setString(2, password);
            ResultSet rs = ptm.executeQuery();
            if (rs.next()) {
                roleID = rs.getInt("roleID");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return roleID;
    }

    //insertUsers
    public int insertUsers(Users u) {
        String sql = "INSERT INTO [dbo].[tblUsers]\n"
                + "           ([userID]\n"
                + "           ,[fullName]\n"
                + "           ,[password]\n"
                + "           ,[roleID]\n"
                + "           ,[address]\n"
                + "           ,[phone]\n"
                + "           ,[email]\n"
                + "           ,[activate])\n"
                + "     VALUES (?,?,?,?,?,?,?,?)";
        int n = 0;
        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setString(1, u.getUserID());
            ptm.setString(2, u.getFullName());
            ptm.setString(3, u.getPassword());
            ptm.setInt(4, u.getRoleID());
            ptm.setString(5, u.getAddress());
            ptm.setString(6, u.getPhone());
            ptm.setString(7, u.getEmail());
            ptm.setBoolean(8, u.isActivate());
            n = ptm.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;

    }

    //searchUsers
    public Users searchUsers(String userID) {
        String sql = "SELECT *\n"
                + "  FROM [dbo].[tblUsers]\n"
                + "  WHERE userID = ?";
        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setString(1, userID);
            ResultSet rs = ptm.executeQuery();
            if (rs.next()) {
                Users us = new Users(userID,
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getBoolean(8));
//                        rs.getInt(9));
                return us;
            }
        } catch (SQLException ex) {
            ex.getStackTrace();
        }
        return null;
    }

    //updateUsers
    public void updateUsers(Users u) {
        String sql = "UPDATE [dbo].[tblUsers]\n"
                + "   SET [fullName] = ?\n"
                + "      ,[password] = ?\n"
                + "      ,[roleID] = ?\n"
                + "      ,[address] = ?\n"
                + "      ,[phone] = ?\n"
                + "      ,[email] = ?\n"
                + "      ,[activate] = ?\n"
                //                + "      ,[status] = ?\n"
                + " WHERE userID = ?";
        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setString(1, u.getFullName());
            ptm.setString(2, u.getPassword());
            ptm.setInt(3, u.getRoleID());
            ptm.setString(4, u.getAddress());
            ptm.setString(5, u.getPhone());
            ptm.setString(6, u.getEmail());
            ptm.setBoolean(7, u.isActivate());
//            ptm.setInt(8, u.getStatus());
            ptm.setString(8, u.getUserID());
            ptm.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

    }

    public void changeActivate(String userID, boolean activate) {
        //code here
        String sql = "update tblUsers\n"
                + "set activate =?\n"
                + "where userID=?";
        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setBoolean(1, activate);
            ptm.setString(2, userID);
            ptm.executeUpdate();
        } catch (SQLException ex) {
            ex.getStackTrace();
        }

    }
    //deleteUsers

    public int deleteUsers(String userID) {
        String sql = "DELETE FROM [dbo].[tblUsers]\n"
                + "      WHERE userID = ?";

        int n = 0;
        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setString(1, userID);
            ResultSet rs = getData("select *\n"
                    + "  from tblOrders\n"
                    + "  where userID like ''");
            if (rs.next()) {
                changeActivate(userID, false);
                return n;
            }
            n = ptm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return n;

    }

    public Users checkAccountExist(String user) {
        String query = "SELECT *\n"
                + "  FROM [cameraShop5].[dbo].[tblUsers]\n"
                + "  where userID = ?";
        try {
            PreparedStatement ptm = connection.prepareStatement(query);
            ptm.setString(1, user);
            ResultSet rs = ptm.executeQuery();

            while (rs.next()) {
                return new Users(user,
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getBoolean(8));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void singup(String user, String fullName , String email,String pass) {
        String query = "INSERT INTO [dbo].[tblUsers]\n"
                + "           \n"
                + "     VALUES(?,?,?,1,0,0,?,1,1)";
        try {
           PreparedStatement ptm = connection.prepareStatement(query);
            ptm.setString(1,user);
            ptm.setString(2,fullName);
            ptm.setString(3,pass);
            ptm.setString(4,email);
            ptm.executeUpdate();

        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        String sql = "SELECT * FROM [dbo].[tblUsers]";
        UsersDAO uDAO = new UsersDAO();
        int a = uDAO.getRoleIDByLogin("user02", "dungpass");
        System.out.println(a);

    }

}
