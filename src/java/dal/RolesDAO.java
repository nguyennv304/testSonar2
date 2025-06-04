/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.util.Vector;
import models.Roles;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author MSI-LAP
 */
public class RolesDAO extends DBContext {

   public Vector<Roles> getAllRoles(String sql){
       Vector<Roles> listRole = new Vector<>();
       
       try {
           PreparedStatement ptm = connection.prepareStatement(sql);
           ResultSet rs = ptm.executeQuery();
           
           while (rs.next()) {
               Roles r = new Roles(
                       rs.getInt(1),
                       rs.getString(2),
                        rs.getInt(3));
               listRole.add(r);
           }
       } catch (SQLException ex) {
           ex.getStackTrace();
       }
       return listRole;
   }
   
   //insertRoles
   public int insertRoles(Roles r){
       String sql = "INSERT INTO [dbo].[tblRoles] ([roleName], [status]) VALUES (?, ?)";
       int n=0;
       try {
           PreparedStatement ptm = connection.prepareStatement(sql);
           ptm.setString(1, r.getRoleName());
           ptm.setInt(2, r.getStatus());
           n= ptm.executeUpdate();
       } catch (SQLException ex) {
           ex.getStackTrace();
       }
       return n;
   }
   
   //searchOrders
    public Roles searchRoles(int roleID) {
        String sql = "SELECT *\n"
                + "  FROM [dbo].[tblRoles]\n"
                + "  WHERE roleID=?";
       try {
           PreparedStatement ptm = connection.prepareStatement(sql);
           ptm.setInt(1, roleID);
           ResultSet rs = ptm.executeQuery();
           if(rs.next()){
               Roles ro = new Roles(roleID,
                       rs.getString(2),
                    rs.getInt(3));
               return ro;
           }
       } catch (SQLException ex) {
           ex.getStackTrace();
       }
       return null;
   }
    
    //updateOrders
    public void updateRoles(Roles r){
        String sql = "UPDATE [dbo].[tblRoles]\n"
                + "   SET [roleName] =?\n"
                + "      ,[status] =?\n"
                + " WHERE roleID=?";
       try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setString(1, r.getRoleName());
            ptm.setInt(2, r.getStatus());
            ptm.setInt(3, r.getRoleID());
            ptm.executeUpdate();

       } catch (SQLException ex) {
           ex.getStackTrace();
       }
    }
    
    //deleteRoles
    public void changeStatus(int roleID, int status) {
        String sql = "UPDATE tblRoles\n"
                + " SET status =?\n"
                + " WHERE roleID =?\n";
        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setInt(1, status);
            ptm.setInt(2, roleID);
            ptm.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    
    public int deleteRoles(int roleID) {
         int n = 0;
        String sql = "DELETE FROM [dbo].[tblRoles]\n"
                + "      WHERE roleID = ?";

        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setInt(1, roleID);
            ResultSet rs = getData("select *\n"
                    + "from tblUsers\n"
                    + "where roleID="+roleID);
            if (rs.next()) {
                changeStatus(roleID, 0);
                return n;
            }
            n = ptm.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }
    
    public static void main(String[] args) {
        String sql = "SELECT * FROM [dbo].[tblRoles]";
        RolesDAO rDAO = new RolesDAO();
        Vector<Roles> rlist = rDAO.getAllRoles(sql);
        for(Roles roles : rlist){
            System.out.println(roles);
        }
        
//        Roles ro = new Roles(7, "Employee", 1);
//        int n = rDAO.insertRoles(ro);
//        if(n>0){
//            System.out.println("Inserted");
//            rlist = rDAO.getAllRoles(sql);
//            for(Roles roles : rlist){
//                System.out.println(roles);
//            }
//        }else{
//            System.out.println("Insert fail!");
//        }
        
//        Roles rol = rDAO.searchRoles(8);
//        if(rol != null){
//            rDAO.updateRoles(new Roles(8, "Director", 1));
//            System.out.println("Updated!");
//            rlist = rDAO.getAllRoles(sql);
//            for(Roles roles : rlist){
//                System.out.println(roles);
//            }
//        }else{
//            System.out.println("Not Found!");
//        }
        
        Roles role = rDAO.searchRoles(11);
        if(role != null){
            rDAO.deleteRoles(11);
            System.out.println("Delete");
            rlist = rDAO.getAllRoles(sql);
            for(Roles roles : rlist){
                System.out.println(roles);
            }
        }else{
            System.out.println("Not Found!");
        }
    }

}
