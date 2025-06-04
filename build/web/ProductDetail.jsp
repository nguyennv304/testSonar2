<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${detail.productName} - Chi tiết sản phẩm</title>

    <!-- ✅ Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <!-- ✅ Font Awesome 6 -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">

    <!-- Custom style -->
    <link href="css/style.css" rel="stylesheet" type="text/css"/>

    <style>
        body {
            background-color: #f8f9fa;
        }

        .product-title {
            font-weight: bold;
            font-size: 28px;
        }

        .price {
            font-size: 26px;
        }

        .btn-buy-now {
            background-color: #ff6f61;
            color: white;
            border-radius: 25px;
            padding: 10px 25px;
            transition: 0.3s ease;
        }

        .btn-buy-now:hover {
            background-color: #ff3b2e;
            color: white;
        }

        .btn-add-cart {
            border-radius: 25px;
            padding: 10px 25px;
        }

        .product-detail-card {
            box-shadow: 0 4px 16px rgba(0,0,0,0.1);
            border-radius: 10px;
            background: white;
            padding: 30px;
        }

        .img-big-wrap img {
            width: 100%;
            border-radius: 10px;
            object-fit: cover;
        }

        .img-small-wrap {
            display: flex;
            justify-content: center;
            margin-top: 10px;
        }

        .img-small-wrap img {
            width: 60px;
            height: 60px;
            margin: 0 5px;
            object-fit: cover;
            border-radius: 5px;
            border: 1px solid #ddd;
            transition: transform 0.3s ease;
        }

        .img-small-wrap img:hover {
            transform: scale(1.1);
            border-color: #007bff;
        }
    </style>
</head>
<body>

    <jsp:include page="Menu.jsp" />

    <div class="container my-5">
        <div class="row product-detail-card">
            <div class="col-md-6">
                <div class="img-big-wrap mb-3">
                    <img src="${detail.image}" alt="${detail.productName}">
                </div>
                <div class="img-small-wrap">
                    <img src="${detail.image}" alt="">
                    <img src="${detail.image}" alt="">
                    <img src="${detail.image}" alt="">
                </div>
            </div>
            <div class="col-md-6">
                <h2 class="product-title">${detail.productName}</h2>
                <p class="price text-danger mt-3">US $${detail.price}</p>
                <hr>
                <form action="cart" method="get">
                    <input type="hidden" name="pid" value="${detail.productID}" />
                    <input type="hidden" name="redirect" value="detail?pid=${detail.productID}" />

                    <div class="form-group">
                        <label for="quantity">Số lượng:</label>
                        <select name="quantity" class="form-control w-25">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                        </select>
                    </div>  
                    <p class="price text-danger mt-3">Quantity:${detail.quantity}</p>
                    <c:if test="${sessionScope.bcc == 1 || sessionScope.bcc == null}">
                    <div class="d-flex gap-3 mt-4">
                        <button type="submit" name="action" value="buy" class="btn btn-buy-now">
                            <i class="fas fa-bolt"></i> Mua ngay
                        </button>
                        <a href="cart?pid=${detail.productID}&redirect=detail?pid=${detail.productID}"
                           class="btn btn-outline-primary btn-add-cart">
                            <i class="fas fa-cart-plus"></i> Thêm vào giỏ
                        </a>
                    </div>
                           </c:if>
                </form>
            </div>
        </div>
    </div>

    <jsp:include page="Footer.jsp" />
</body>
</html>
