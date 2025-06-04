<%-- 
    Document   : shop.jsp
    Created on : Mar 25, 2025, 10:59:23 PM
    Author     : VAN NGUYEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<!doctype html>
<html lang="en">

    <head>
        <!-- Required Meta Tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Document Title, Description, and Author -->
        <title>Shop - Presta - Free Bootstrap Bike Repair Template</title>
        <meta name="description" content="Presta is a Free Bootstrap Bike Repair Template.">
        <meta name="author" content="BootstrapBrain">

        <!-- Favicon and Touch Icons -->
        <link rel="icon" type="image/png" sizes="512x512" href="./assets/favicon/favicon-512x512.png">

        <!-- Google Fonts Files -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">

        <!-- CSS Files -->
        <link rel="stylesheet" href="./assets/css/presta-bsb.css">

        <!-- BSB Head -->
        <style>
            .product-link {
                text-decoration: none;
                color: inherit;
                transition: color 0.2s ease;
            }

            .product-link:hover {
                color: #007bff; /* hoặc màu bạn muốn khi hover */
                text-decoration: none; /* vẫn giữ không gạch chân khi hover */
            }
        </style>


    </h4>
</head>

<body class="bsb-tpl-bg-50 py-3 py-md-5 py-xl-6">

    <!-- Header -->
    <jsp:include page="Menu.jsp"></jsp:include>

        <!-- Page Header - Bootstrap Brain Component -->
        <section class="py-4 py-md-5 py-xl-8">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="container-fluid border border-dark bsb-tpl-bg-gradient-1x">
                            <div class="row justify-content-md-center align-items-center">
                                <div class="col-12 col-md-11 col-xl-10">
                                    <div class="page-header-wrapper py-3 py-md-5 py-xl-8">
                                        <h2 class="display-3 text-center fw-bold mb-3 mb-xl-4">Our Shop</h2>
                                        <p class="lead text-center m-0 d-flex justify-content-sm-center">
                                            <span class="col-12 col-sm-11 col-lg-8 col-xl-7 col-xxl-6">Browse through our carefully curated selection of products, meticulously organized into categories for easy navigation.</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="container mb-5">
            <ul class="nav nav-pills justify-content-center bg-light p-3 rounded shadow-sm">
                <li class="nav-item">
                    <a class="nav-link fw-bold text-dark ${empty param.cid ? 'active bg-dark text-white' : ''}" 
                   href="shop">Tất cả</a>
            </li>
            <c:forEach items="${listC}" var="c">
                <li class="nav-item mx-1">
                    <a class="nav-link fw-bold text-dark ${param.cid == c.categoryID ? 'active bg-dark text-white' : ''}" 
                       href="shop?cid=${c.categoryID}">
                        ${c.categoryName}
                    </a>
                </li>
            </c:forEach>
        </ul>
    </div>

    <!-- Main -->
    <main id="main">
        <!-- Card 5 - Bootstrap Brain Component -->
        <section class="py-3 py-md-5 py-xl-8 bg-white">
            <div class="row gy-4 gy-xxl-5">

                <c:forEach items="${listP}" var="o">
                    <div class="col-12 col-md-6 col-lg-4 d-flex">
                        <div class="card text-center border-dark overflow-hidden w-100 d-flex flex-column">
                            <div class="card-body d-flex flex-column p-4">
                                <figure class="m-0 p-0">
                                    <img class="img-fluid" style="max-height: 200px; object-fit: cover;" loading="lazy" src="${o.image}" alt="${o.productName}">
                                    <figcaption class="mb-0 mt-4 p-0">
                                        <h4 class="mb-2">
                                            <a href="detail?pid=${o.productID}" class="product-link">
                                                ${o.productName}
                                            </a>
                                            <p class="d-flex justify-content-center align-items-center gap-2 mb-0">
                                                <span class="text-primary">${o.price}</span>
                                            </p>
                                            
                                    </figcaption>                  
                                </figure>

                                <!-- Nút Add to cart nằm dưới cùng -->
                                <c:if test="${sessionScope.bcc == 1 || sessionScope.bcc == null}">
                                    <div class="mt-auto">
                                        <a href="cart?pid=${o.productID}&redirect=shop" class="btn btn-accent mt-4 d-flex align-items-center justify-content-center gap-2">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                                 class="bi bi-cart-plus" viewBox="0 0 16 16">
                                            <path d="M9 5.5a.5.5 0 0 0-1 0V7H6.5a.5.5 0 0 0 0 1H8v1.5a.5.5 0 0 0 1 0V8h1.5a.5.5 0 0 0 0-1H9z"/>
                                            <path d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607
                                                  1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4
                                                  2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1
                                                  a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5
                                                  3H2.89l-.405-1.621A.5.5 0 0 0 2 1zm3.915
                                                  10L3.102 4h10.796l-1.313 7zM6 14a1 1 0
                                                  1 1-2 0 1 1 0 0 1 2 0m7 0a1 1 0 1 1-2 0
                                                  1 1 0 0 1 2 0"/>
                                            </svg>
                                            <span>Add to cart</span>
                                        </a>
                                    </div>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </section>

    </main>

    <!-- Footer 7 - Bootstrap Brain Component -->
    <jsp:include page ="Footer.jsp"></jsp:include>


    <!-- Javascript Files: Vendors -->
    <script src="https://unpkg.com/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Javascript Files: Controllers -->
    <script src="./assets/controller/presta-bsb.js"></script>

    <!-- BSB Body End -->
</body>

</html>

