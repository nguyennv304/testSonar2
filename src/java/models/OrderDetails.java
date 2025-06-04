/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author MSI-LAP
 */
public class OrderDetails {
    
    private int detailID;
    private double price;
    private int quantity;
    private int orderID;
    private int productID;
    private int status;

    public OrderDetails(double price, int quantity, int orderID, int productID, int status) {
        this.price = price;
        this.quantity = quantity;
        this.orderID = orderID;
        this.productID = productID;
        this.status = status;
    }

    

    public OrderDetails(int detailID, double price, int quantity, int orderID, int productID, int status) {
        this.detailID = detailID;
        this.price = price;
        this.quantity = quantity;
        this.orderID = orderID;
        this.productID = productID;
        this.status = status;
    }

    public int getDetailID() {
        return detailID;
    }

    public void setDetailID(int detailID) {
        this.detailID = detailID;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    
    

    @Override
    public String toString() {
        return "OrderDetails{" + "detailID=" + detailID + ", price=" + price + ", quantity=" + quantity + ", orderID=" + orderID + ", productID=" + productID + ", status=" + status + '}';
    }
    
    
}
