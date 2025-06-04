package controller;

import dal.*;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.sql.Date;
import java.util.Vector;
import models.Cart;
import models.OrderDetails;
import models.Orders;

@WebServlet(name = "CheckOut", urlPatterns = {"/checkout"})
public class Checkout extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Chuyển GET thành POST để xử lý chung
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
HttpSession session = request.getSession();
    Vector<Cart> cart = (Vector<Cart>) session.getAttribute("cart");
    String userID = (String)session.getAttribute("userID");
    String totalParam = request.getParameter("total");
    ProductDAO pDao = new ProductDAO();

    // Kiểm tra userID và cart
    if (userID == null || cart.isEmpty()) {
        response.sendRedirect("login");
        return;
    }

    double total = 0;
    total = Double.parseDouble(totalParam.trim());

    // Tạo đơn hàng mới
    OrdersDAO oDao = new OrdersDAO();
    Orders order = new Orders(new Date(System.currentTimeMillis()), total, userID, 1);
    oDao.insertOrders(order);

    // Lấy orderID vừa insert
    int orderID = oDao.getAllOrders("SELECT TOP 1 * FROM tblOrders ORDER BY orderID DESC")
                     .get(0).getOrderID();

    // Ghi chi tiết đơn hàng
    OrderDetailsDAO odDao = new OrderDetailsDAO();
    for (Cart c : cart) {
        OrderDetails od = new OrderDetails(c.getPrice(), c.getQuantity(), orderID, c.getProductID(), 1);
        odDao.insertOrderDetails(od);
        pDao.updateProductQuantity(c.getProductID(), c.getQuantity());
    }
    session.removeAttribute("cart");
    
    response.sendRedirect("thankyou.jsp");
    
    }
}
