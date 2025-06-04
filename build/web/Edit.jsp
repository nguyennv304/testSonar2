<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Chỉnh sửa sản phẩm</title>

        <!-- Bootstrap 5 -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">

        <!-- Font Awesome 6 -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>

        <style>
            body {
                background-color: #f8f9fa;
                font-family: 'Roboto', sans-serif;
            }

            .form-section {
                background-color: #fff;
                padding: 30px;
                border-radius: 12px;
                box-shadow: 0 0 10px rgba(0,0,0,0.1);
                margin-top: 40px;
            }

            .form-section h2 {
                font-weight: bold;
                margin-bottom: 25px;
            }

            .form-group label {
                font-weight: 500;
            }

            .form-control, .form-select {
                border-radius: 8px;
            }

            .btn-success {
                width: 100%;
                border-radius: 8px;
            }

            img.preview {
                max-width: 100%;
                height: auto;
                margin-bottom: 15px;
                border-radius: 8px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="form-section position-relative">
                <!-- Nút ở góc phải trên -->
                <div class="position-absolute top-0 end-0 mt-3 me-3">
                    <a href="manager" class="btn btn-outline-primary btn-sm">
                        <i class="fas fa-arrow-left"></i> Quay lại
                    </a>
                </div>
                <h2><i class="fas fa-edit"></i> Chỉnh sửa thông tin sản phẩm</h2>
                <form action="edit" method="post">
                    <div class="mb-3">
                        <label>ID</label>
                        <input value="${detail.productID}" name="id" type="text" class="form-control" readonly>
                    </div>
                    <div class="mb-3">
                        <label>Tên sản phẩm</label>
                        <input value="${detail.productName}" name="name" type="text" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label>Link hình ảnh</label>
                        <input value="${detail.image}" name="image" type="text" class="form-control" required>
                        <img src="${detail.image}" class="preview mt-2" alt="Preview Image"/>
                    </div>
                    <div class="mb-3">
                        <label>Giá</label>
                        <input value="${detail.price}" name="price" type="text" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label>Số lượng</label>
                        <input name="quantity" value="${detail.quantity}" type="text" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label>Ngày nhập</label>
                        <input type="date" name="importDate" value="${detail.importDate}" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label>Hạn sử dụng</label>
                        <input type="date" name="usingDate" value="${detail.usingDate}" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label>Danh mục</label>
                        <select name="category" class="form-select">
                            <c:forEach items="${listC}" var="o">
                                <option value="${o.categoryID}" ${o.categoryID == detail.categoryID ? "selected" : ""}>
                                    ${o.categoryName}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label>Trạng thái</label><br>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="status" id="statusActive" value="1" ${detail.status == 1 ? "checked" : ""}>
                            <label class="form-check-label" for="statusActive">Hiển thị</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="status" id="statusInactive" value="0" ${detail.status == 0 ? "checked" : ""}>
                            <label class="form-check-label" for="statusInactive">Ẩn</label>
                        </div>
                    </div>
                    <div class="mb-3">
                        <button type="submit" class="btn btn-success">
                            <i class="fas fa-save"></i> Lưu thay đổi
                        </button>
                    </div>
                </form>
            </div>
        </div>

        <script src="js/manager.js"></script>
    </body>
</html>
