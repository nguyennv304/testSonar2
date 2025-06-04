<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thanh toán</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2 class="mb-4">Xác nhận đơn hàng</h2>

        <c:if test="${not empty sessionScope.cart}">
            <%-- Khởi tạo tổng --%>
            <c:set var="total" value="0" scope="page" />

            <table class="table table-bordered">
                <thead class="table-dark">
                    <tr>
                        <th>Sản phẩm</th>
                        <th>Đơn giá</th>
                        <th>Số lượng</th>
                        <th>Thành tiền</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="item" items="${sessionScope.cart}">
                        <%-- Tính thành tiền cho từng sản phẩm --%>
                        <c:set var="itemTotal" value="${item.price * item.quantity}" />
                        <tr>
                            <td>${item.productName}</td>
                            <td><fmt:formatNumber value="${item.price}" type="currency" /></td>
                            <td>${item.quantity}</td>
                            <td><fmt:formatNumber value="${itemTotal}" type="currency" /></td>
                        </tr>

                        <%-- Cộng dồn vào tổng --%>
                        <c:set var="total" value="${total + itemTotal}" />
                    </c:forEach>
                </tbody>
            </table>

            <%-- Hiển thị tổng tiền --%>
            <h4 class="text-end">Tổng cộng: <fmt:formatNumber value="${total}" type="currency" /></h4>

            <%-- Gửi total vào form checkout --%>
            <form action="checkout" method="post" class="text-end mt-4">
                <input type="hidden" name="total" value="${total}" />
                <button type="submit" class="btn btn-success">Đặt hàng</button>
            </form>
        </c:if>

        <c:if test="${empty sessionScope.cart}">
            <div class="alert alert-info">Giỏ hàng của bạn đang trống.</div>
        </c:if>
    </div>
</body>
</html>
