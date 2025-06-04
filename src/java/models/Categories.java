/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author MSI-LAP
 */
public class Categories {
    
    private String categoryID;
    private String categoryName;
    private String describe;
    private int status;


    public Categories(String categoryName, String describe, int status) {
        this.categoryName = categoryName;
        this.describe = describe;
        this.status=status;
    }

    public Categories(String categoryID, String categoryName, String describe, int status) {
        this.categoryID = categoryID;
        this.categoryName = categoryName;
        this.describe = describe;
        this.status = status;
    }



    public String getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(String categoryID) {
        this.categoryID = categoryID;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }
        public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Categories{" + "categoryID=" + categoryID + ", categoryName=" + categoryName + ", describe=" + describe + ", status=" + status + '}';
    }

    
    
}
