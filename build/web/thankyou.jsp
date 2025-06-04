<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thank You</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .thankyou-container {
            max-width: 600px;
            margin: 100px auto;
            text-align: center;
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }
        .thankyou-icon {
            font-size: 60px;
            color: #28a745;
        }
    </style>
</head>
<body>
    <div class="thankyou-container">
        <div class="thankyou-icon">✔️</div>
        <h1 class="mt-3">Cảm ơn bạn!</h1>
        <p class="lead">Đơn hàng của bạn đã được xác nhận thành công.</p>
        <p>Chúng tôi sẽ xử lý và giao hàng trong thời gian sớm nhất.</p>
        <a href="home" class="btn btn-success mt-4">Quay về trang chủ</a>
    </div>
</body>
</html>
