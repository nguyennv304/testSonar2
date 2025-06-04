<%-- 
    Document   : homePage.jsp
    Created on : Mar 25, 2025, 10:08:54 PM
    Author     : VAN NGUYEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">

    <head>
        <!-- Required Meta Tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Document Title, Description, and Author -->
        <title>Presta - Camera Shop</title>
        <meta name="description" content="Presta is a Camera Shop.">

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
    </head>


    <body class="bsb-tpl-bg-50 py-3 py-md-5 py-xl-6">

        <!-- Header -->
        <jsp:include page="Menu.jsp"></jsp:include>

            <!-- Hero 6 - Bootstrap Brain Component -->
            <section class="py-4 py-md-5 py-xl-8">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="container-fluid bsb-hero-6 bsb-overlay border border-dark" style="--bsb-overlay-opacity: 0.5; --bsb-overlay-bg-color: var(--bs-light-rgb); background-image: url('./assets/img/hero/banner.jpg');">
                                <div class="row justify-content-md-center align-items-center">
                                    <div class="col-12 col-md-11 col-xl-10">
                                        <h2 class="display-1 text-center text-md-start text-shadow-head fw-bold mb-4">Welcome to Presta</h2>
                                        <p class="lead text-center text-md-start text-shadow-body mb-5 d-flex justify-content-sm-center justify-content-md-start">
                                            <span class="col-12 col-sm-10 col-md-8 col-xxl-7">Where every squeak, every rattle, and every wobble finds its solution, ensuring your ride is always smooth and worry-free.</span>
                                        </p>
                                        <div class="d-grid gap-2 d-sm-flex justify-content-sm-center justify-content-md-start">
                                            <a href="about.jsp" class="btn btn-accent bsb-btn-2xl btn-outline-darkx">Explore More</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Main -->
            <main id="main">

                <!-- Card 5 - Bootstrap Brain Component -->
                <section class="pb-3 pb-md-5 pb-xl-8">
                    <div class="container">
                        <div class="row justify-content-md-center">
                            <div class="col-12 col-md-10 col-lg-8 col-xl-7 col-xxl-6">
                                <h2 class="mb-4 display-5 text-center">Our Products</h2>
                                <p class="text-secondary mb-5 text-center lead fs-4">Our catalog boasts a diverse array of top-quality components meticulously curated to meet the needs of cyclists of all levels, from beginners to seasoned pros.</p>
                                <hr class="w-50 mx-auto mb-5 mb-xl-9 border-dark-subtle">
                            </div>
                        </div>
                    </div>

                    <div class="container overflow-hidden">
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
                                                <a href="cart?pid=${o.productID}&redirect=home" class="btn btn-accent mt-4 d-flex align-items-center justify-content-center gap-2">
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

                                        <div class="position-absolute top-0 end-0 m-2 fs-5">
                                            <span class="badge text-bg-warning">Sale</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>


            </section>

            <!-- Fact 6 - Bootstrap Brain Component -->
            <section class="py-3 py-md-5 py-xl-8 bg-white">
                <div class="container">
                    <div class="row gy-4 gy-lg-0 gx-xxl-5">
                        <div class="col-12 col-sm-6 col-lg-3">
                            <div class="card border-dark">
                                <div class="card-body text-center p-4 p-xxl-5">
                                    <div class="d-flex align-items-center justify-content-center text-primary mb-4 mx-auto">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="56" height="56" fill="currentColor" class="bi bi-emoji-smile-fill" viewBox="0 0 16 16">
                                        <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16M7 6.5C7 7.328 6.552 8 6 8s-1-.672-1-1.5S5.448 5 6 5s1 .672 1 1.5M4.285 9.567a.5.5 0 0 1 .683.183A3.5 3.5 0 0 0 8 11.5a3.5 3.5 0 0 0 3.032-1.75.5.5 0 1 1 .866.5A4.5 4.5 0 0 1 8 12.5a4.5 4.5 0 0 1-3.898-2.25.5.5 0 0 1 .183-.683M10 8c-.552 0-1-.672-1-1.5S9.448 5 10 5s1 .672 1 1.5S10.552 8 10 8" />
                                        </svg>
                                    </div>
                                    <h3 class="h1 mb-1">120K</h3>
                                    <p class="mb-0 text-secondary">Happy Customers</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-lg-3">
                            <div class="card border-dark">
                                <div class="card-body text-center p-4 p-xxl-5">
                                    <div class="d-flex align-items-center justify-content-center text-primary mb-4 mx-auto">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="56" height="56" fill="currentColor" class="bi bi-cup-hot-fill" viewBox="0 0 16 16">
                                        <path fill-rule="evenodd" d="M.5 6a.5.5 0 0 0-.488.608l1.652 7.434A2.5 2.5 0 0 0 4.104 16h5.792a2.5 2.5 0 0 0 2.44-1.958l.131-.59a3 3 0 0 0 1.3-5.854l.221-.99A.5.5 0 0 0 13.5 6zM13 12.5a2 2 0 0 1-.316-.025l.867-3.898A2.001 2.001 0 0 1 13 12.5" />
                                        <path d="m4.4.8-.003.004-.014.019a4 4 0 0 0-.204.31 2 2 0 0 0-.141.267c-.026.06-.034.092-.037.103v.004a.6.6 0 0 0 .091.248c.075.133.178.272.308.445l.01.012c.118.158.26.347.37.543.112.2.22.455.22.745 0 .188-.065.368-.119.494a3 3 0 0 1-.202.388 5 5 0 0 1-.253.382l-.018.025-.005.008-.002.002A.5.5 0 0 1 3.6 4.2l.003-.004.014-.019a4 4 0 0 0 .204-.31 2 2 0 0 0 .141-.267c.026-.06.034-.092.037-.103a.6.6 0 0 0-.09-.252A4 4 0 0 0 3.6 2.8l-.01-.012a5 5 0 0 1-.37-.543A1.53 1.53 0 0 1 3 1.5c0-.188.065-.368.119-.494.059-.138.134-.274.202-.388a6 6 0 0 1 .253-.382l.025-.035A.5.5 0 0 1 4.4.8m3 0-.003.004-.014.019a4 4 0 0 0-.204.31 2 2 0 0 0-.141.267c-.026.06-.034.092-.037.103v.004a.6.6 0 0 0 .091.248c.075.133.178.272.308.445l.01.012c.118.158.26.347.37.543.112.2.22.455.22.745 0 .188-.065.368-.119.494a3 3 0 0 1-.202.388 5 5 0 0 1-.253.382l-.018.025-.005.008-.002.002A.5.5 0 0 1 6.6 4.2l.003-.004.014-.019a4 4 0 0 0 .204-.31 2 2 0 0 0 .141-.267c.026-.06.034-.092.037-.103a.6.6 0 0 0-.09-.252A4 4 0 0 0 6.6 2.8l-.01-.012a5 5 0 0 1-.37-.543A1.53 1.53 0 0 1 6 1.5c0-.188.065-.368.119-.494.059-.138.134-.274.202-.388a6 6 0 0 1 .253-.382l.025-.035A.5.5 0 0 1 7.4.8m3 0-.003.004-.014.019a4 4 0 0 0-.204.31 2 2 0 0 0-.141.267c-.026.06-.034.092-.037.103v.004a.6.6 0 0 0 .091.248c.075.133.178.272.308.445l.01.012c.118.158.26.347.37.543.112.2.22.455.22.745 0 .188-.065.368-.119.494a3 3 0 0 1-.202.388 5 5 0 0 1-.252.382l-.019.025-.005.008-.002.002A.5.5 0 0 1 9.6 4.2l.003-.004.014-.019a4 4 0 0 0 .204-.31 2 2 0 0 0 .141-.267c.026-.06.034-.092.037-.103a.6.6 0 0 0-.09-.252A4 4 0 0 0 9.6 2.8l-.01-.012a5 5 0 0 1-.37-.543A1.53 1.53 0 0 1 9 1.5c0-.188.065-.368.119-.494.059-.138.134-.274.202-.388a6 6 0 0 1 .253-.382l.025-.035A.5.5 0 0 1 10.4.8" />
                                        </svg>
                                    </div>
                                    <h3 class="h1 mb-1">786+</h3>
                                    <p class="mb-0 text-secondary">Special Offers</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-lg-3">
                            <div class="card border-dark">
                                <div class="card-body text-center p-4 p-xxl-5">
                                    <div class="d-flex align-items-center justify-content-center text-primary mb-4 mx-auto">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="56" height="56" fill="currentColor" class="bi bi-bag-check-fill" viewBox="0 0 16 16">
                                        <path fill-rule="evenodd" d="M10.5 3.5a2.5 2.5 0 0 0-5 0V4h5zm1 0V4H15v10a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V4h3.5v-.5a3.5 3.5 0 1 1 7 0m-.646 5.354a.5.5 0 0 0-.708-.708L7.5 10.793 6.354 9.646a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0z" />
                                        </svg>
                                    </div>
                                    <h3 class="h1 mb-1">250K</h3>
                                    <p class="mb-0 text-secondary">Products</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-lg-3">
                            <div class="card border-dark">
                                <div class="card-body text-center p-4 p-xxl-5">
                                    <div class="d-flex align-items-center justify-content-center text-primary mb-4 mx-auto">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="56" height="56" fill="currentColor" class="bi bi-award-fill" viewBox="0 0 16 16">
                                        <path d="m8 0 1.669.864 1.858.282.842 1.68 1.337 1.32L13.4 6l.306 1.854-1.337 1.32-.842 1.68-1.858.282L8 12l-1.669-.864-1.858-.282-.842-1.68-1.337-1.32L2.6 6l-.306-1.854 1.337-1.32.842-1.68L6.331.864z" />
                                        <path d="M4 11.794V16l4-1 4 1v-4.206l-2.018.306L8 13.126 6.018 12.1z" />
                                        </svg>
                                    </div>
                                    <h3 class="h1 mb-1">689+</h3>
                                    <p class="mb-0 text-secondary">Awards Winning</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Testimonial 5 - Bootstrap Brain Component -->
            <section class="py-3 py-md-5 py-xl-8">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="container-fluid bsb-testimonial-5 bsb-overlay border border-dark" style="--bsb-overlay-opacity: 0.7; --bsb-overlay-bg-color: var(--bs-light-rgb); background-image: url('./assets/img/testimonial/testimonial-bg-1.webp');">
                                <div class="row justify-content-lg-around align-items-md-center">
                                    <div class="col-12 col-md-6 col-lg-5 col-xl-4">
                                        <div class="card border-0 bg-transparent text-center">
                                            <div class="card-body p-3 py-lg-5">
                                                <figure>
                                                    <img class="img-fluid rounded rounded-circle mb-4 border border-5 border-accent" loading="lazy" src="./assets/img/testimonial/testimonial-img-1.jpg" alt="Luna John">
                                                    <figcaption>
                                                        <blockquote class="bsb-blockquote-icon text-shadow-body mb-4">We were so impressed with the work they did for us. They were able to take our vision and turn it into a reality, and they did it all on time and within budget. We would highly recommend them to anyone looking for a reliable partner.</blockquote>
                                                        <h4 class="text-shadow-head mb-2">Luna John</h4>
                                                        <h5 class="text-shadow-body fs-6 text-secondary mb-0">UX Designer</h5>
                                                    </figcaption>
                                                </figure>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-5 col-xl-4">
                                        <div class="card border-0 bg-transparent text-center">
                                            <div class="card-body p-3 py-lg-5">
                                                <figure>
                                                    <img class="img-fluid rounded rounded-circle mb-4 border border-5 border-accent" loading="lazy" src="./assets/img/testimonial/testimonial-img-2.jpg" alt="Mark Smith">
                                                    <figcaption>
                                                        <blockquote class="bsb-blockquote-icon text-shadow-body mb-4">We were looking for a company that could help us develop a new website that was both visually appealing and user-friendly. We are so happy with the results, and we would highly recommend them to anyone looking for a new website.</blockquote>
                                                        <h4 class="text-shadow-head mb-2">Mark Smith</h4>
                                                        <h5 class="text-shadow-body fs-6 text-secondary mb-0">Marketing Specialist</h5>
                                                    </figcaption>
                                                </figure>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- About 6 - Bootstrap Brain Component -->
            <section class="bsb-about-6 pb-3 pb-md-5 pb-xl-8">
                <div class="container">
                    <div class="row justify-content-md-center">
                        <div class="col-12 col-md-10 col-lg-8 col-xl-7 col-xxl-6">
                            <h2 class="mb-4 display-5 text-center">Why Choose Us</h2>
                            <p class="text-secondary mb-5 text-center lead fs-4">Our commitment to excellence is evident in every project we undertake, ensuring that you receive nothing but the highest quality products and services.</p>
                            <hr class="w-50 mx-auto mb-5 mb-xl-9 border-dark-subtle">
                        </div>
                    </div>
                </div>

                <div class="container">
                    <div class="row gy-4 gy-lg-0 align-items-lg-center">
                        <div class="col-12 col-lg-6">
                            <img class="img-fluid rounded border border-dark" loading="lazy" src="./assets/img/about/about-img-1.webp" alt="About 6">
                        </div>
                        <div class="col-12 col-lg-6">
                            <div class="row justify-content-xl-end">
                                <div class="col-12 col-xl-11">
                                    <div class="accordion accordion-flush" id="accordionAbout6">
                                        <div class="accordion-item mb-4 border border-dark">
                                            <h2 class="accordion-header" id="headingOne">
                                                <button class="accordion-button bg-transparent fs-4 fw-bold" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                    Low Price Guarantee
                                                </button>
                                            </h2>
                                            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionAbout6">
                                                <div class="accordion-body">
                                                    Our Low Price Guarantee isn't just a promise; it's a commitment to providing you with unbeatable value and peace of mind when you shop with us. Trust us to deliver quality products and services without breaking the bank.
                                                </div>
                                            </div>
                                        </div>
                                        <div class="accordion-item mb-4 border border-dark">
                                            <h2 class="accordion-header" id="headingTwo">
                                                <button class="accordion-button collapsed bg-transparent fs-4 fw-bold" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                    Life-Time Warranty
                                                </button>
                                            </h2>
                                            <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionAbout6">
                                                <div class="accordion-body">
                                                    Discover unparalleled peace of mind with our business's lifetime warranty commitment. We stand behind the quality and durability of our products like no other.
                                                </div>
                                            </div>
                                        </div>
                                        <div class="accordion-item mb-4 border border-dark">
                                            <h2 class="accordion-header" id="headingThree">
                                                <button class="accordion-button collapsed bg-transparent fs-4 fw-bold" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                    Genuine Spare Parts
                                                </button>
                                            </h2>
                                            <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionAbout6">
                                                <div class="accordion-body">
                                                    Our commitment to authenticity ensures that you receive parts manufactured to the highest standards, guaranteeing optimal performance and longevity for your equipment. From small components to intricate pieces, we have everything you need to keep your machinery running smoothly.
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Service 10 - Bootstrap Brain Component -->
            <section class="py-3 py-md-5 py-xl-8 bg-white">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="container-fluid">
                                <div class="row gy-3 gy-md-4">
                                    <div class="col-12 col-lg-4">
                                        <div class="card border-dark">
                                            <div class="card-body p-3 p-md-4 p-xxl-5 d-flex justify-content-center align-items-center">
                                                <div class="me-3 text-primary">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" fill="currentColor" class="bi bi-basket2-fill" viewBox="0 0 16 16">
                                                    <path d="M5.929 1.757a.5.5 0 1 0-.858-.514L2.217 6H.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h.623l1.844 6.456A.75.75 0 0 0 3.69 15h8.622a.75.75 0 0 0 .722-.544L14.877 8h.623a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1.717L10.93 1.243a.5.5 0 1 0-.858.514L12.617 6H3.383zM4 10a1 1 0 0 1 2 0v2a1 1 0 1 1-2 0zm3 0a1 1 0 0 1 2 0v2a1 1 0 1 1-2 0zm4-1a1 1 0 0 1 1 1v2a1 1 0 1 1-2 0v-2a1 1 0 0 1 1-1" />
                                                    </svg>
                                                </div>
                                                <div>
                                                    <h4 class="mb-1">Free Shipping</h4>
                                                    <p class="m-0 text-secondary">Eliminates shipping costs</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-lg-4">
                                        <div class="card border-dark">
                                            <div class="card-body p-3 p-md-4 p-xxl-5 d-flex justify-content-center align-items-center">
                                                <div class="me-3 text-primary">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" fill="currentColor" class="bi bi-chat-left-heart-fill" viewBox="0 0 16 16">
                                                    <path d="M2 0a2 2 0 0 0-2 2v12.793a.5.5 0 0 0 .854.353l2.853-2.853A1 1 0 0 1 4.414 12H14a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2zm6 3.993c1.664-1.711 5.825 1.283 0 5.132-5.825-3.85-1.664-6.843 0-5.132" />
                                                    </svg>
                                                </div>
                                                <div>
                                                    <h4 class="mb-1">24/7 Support</h4>
                                                    <p class="m-0 text-secondary">Better shopping experience</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-lg-4">
                                        <div class="card border-dark">
                                            <div class="card-body p-3 p-md-4 p-xxl-5 d-flex justify-content-center align-items-center">
                                                <div class="me-3 text-primary">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" fill="currentColor" class="bi bi-folder-symlink-fill" viewBox="0 0 16 16">
                                                    <path d="M13.81 3H9.828a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 6.172 1H2.5a2 2 0 0 0-2 2l.04.87a2 2 0 0 0-.342 1.311l.637 7A2 2 0 0 0 2.826 14h10.348a2 2 0 0 0 1.991-1.819l.637-7A2 2 0 0 0 13.81 3M2.19 3q-.362.002-.683.12L1.5 2.98a1 1 0 0 1 1-.98h3.672a1 1 0 0 1 .707.293L7.586 3zm9.608 5.271-3.182 1.97c-.27.166-.616-.036-.616-.372V9.1s-2.571-.3-4 2.4c.571-4.8 3.143-4.8 4-4.8v-.769c0-.336.346-.538.616-.371l3.182 1.969c.27.166.27.576 0 .742" />
                                                    </svg>
                                                </div>
                                                <div>
                                                    <h4 class="mb-1">Free Returns</h4>
                                                    <p class="m-0 text-secondary">Customer's peace of mind</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Service 8 - Bootstrap Brain Component -->

            <!-- Blog 6 - Bootstrap Brain Component -->
            <section class="pb-3 pb-md-5 pb-xl-8">
                <div class="container">
                    <div class="row justify-content-md-center">
                        <div class="col-12 col-md-10 col-lg-8 col-xl-7 col-xxl-6">
                            <h2 class="mb-4 display-5 text-center">Our News</h2>
                            <p class="text-secondary mb-5 text-center lead fs-4">From innovative product launches to groundbreaking collaborations, here's a glimpse of what's been going on.</p>
                            <hr class="w-50 mx-auto mb-5 mb-xl-9 border-dark-subtle">
                        </div>
                    </div>
                </div>

                <div class="container overflow-hidden">
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
                                                <a href="cart?pid=${o.productID}&redirect=home" class="btn btn-accent mt-4 d-flex align-items-center justify-content-center gap-2">
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

                </div>
            </section>

            <!-- Client 2 - Bootstrap Brain Component -->
            <div class="py-3 py-md-5 py-xl-8 bg-white">
                <div class="container overflow-hidden">
                    <div class="row gy-4">
                        <div class="col-6 col-md-4 col-xl-3 text-center">
                            <a href="https://www.youtube.com/" onclick class="text-decoration-none">
                                <div class="card border-dark">
                                    <div class="card-body px-4 py-3 px-md-6 py-md-4 px-lg-8 py-lg-5">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="65" fill="currentColor" viewBox="0 0 284 65">
                                        <path d="m141.51,52.13c.49-1.29.74-3.39.74-6.31v-12.29c0-2.83-.25-4.9-.74-6.21-.49-1.31-1.36-1.96-2.61-1.96s-2.05.65-2.54,1.96c-.49,1.31-.74,3.38-.74,6.21v12.29c0,2.92.24,5.02.71,6.31.47,1.29,1.33,1.93,2.57,1.93s2.11-.64,2.61-1.93h0Zm-9.98,6.18c-1.78-1.2-3.05-3.07-3.8-5.6-.75-2.53-1.13-5.9-1.13-10.1v-5.73c0-4.25.43-7.66,1.29-10.23.86-2.57,2.2-4.45,4.02-5.63,1.82-1.18,4.22-1.77,7.18-1.77s5.26.6,7.02,1.8c1.76,1.2,3.05,3.08,3.86,5.63.81,2.55,1.22,5.95,1.22,10.2v5.73c0,4.2-.4,7.58-1.19,10.14-.79,2.55-2.08,4.42-3.86,5.6-1.78,1.18-4.19,1.77-7.24,1.77s-5.59-.6-7.37-1.8m137.82-32.22c-.45.56-.75,1.47-.9,2.74-.15,1.27-.22,3.19-.22,5.76v2.83h6.5v-2.83c0-2.53-.09-4.45-.26-5.76-.17-1.31-.48-2.23-.93-2.77-.45-.54-1.15-.81-2.09-.81s-1.64.28-2.09.84h0Zm-1.13,16.61v2c0,2.53.07,4.43.22,5.7.15,1.27.46,2.19.93,2.77.47.58,1.2.87,2.19.87,1.33,0,2.24-.52,2.74-1.55.49-1.03.76-2.75.8-5.15l7.66.45c.04.34.06.82.06,1.42,0,3.65-1,6.37-2.99,8.17-1.99,1.8-4.82,2.7-8.46,2.7-4.38,0-7.44-1.37-9.2-4.12-1.76-2.74-2.64-6.99-2.64-12.74v-6.89c0-5.92.91-10.24,2.74-12.97,1.82-2.72,4.95-4.09,9.36-4.09,3.05,0,5.38.56,7.02,1.67,1.63,1.12,2.78,2.85,3.44,5.21.67,2.36,1,5.62,1,9.78v6.76h-14.87m-158.33-.74l-10.11-36.49h8.82l3.54,16.54c.9,4.08,1.57,7.55,2,10.43h.26c.3-2.06.97-5.51,2-10.36l3.67-16.61h8.82l-10.23,36.49v17.51h-8.75v-17.51m69.97-21.95v39.45h-6.95l-.77-4.83h-.19c-1.89,3.65-4.72,5.47-8.5,5.47-2.62,0-4.55-.86-5.79-2.57-1.24-1.72-1.87-4.4-1.87-8.05v-29.48h8.88v28.96c0,1.76.19,3.01.58,3.76.39.75,1.03,1.13,1.93,1.13.77,0,1.51-.24,2.22-.71.71-.47,1.23-1.07,1.58-1.8v-31.34h8.88m45.56,0v39.45h-6.95l-.77-4.83h-.19c-1.89,3.65-4.72,5.47-8.5,5.47-2.62,0-4.55-.86-5.79-2.57-1.24-1.72-1.87-4.4-1.87-8.05v-29.48h8.88v28.96c0,1.76.19,3.01.58,3.76.39.75,1.03,1.13,1.93,1.13.77,0,1.51-.24,2.22-.71.71-.47,1.23-1.07,1.58-1.8v-31.34h8.88m-21.42-7.4h-8.82v46.86h-8.69V12.62h-8.82v-7.14h26.32v7.14m42.68,29.8c0,2.87-.12,5.13-.36,6.76-.24,1.63-.63,2.79-1.19,3.48-.56.69-1.31,1.03-2.25,1.03-.71,0-1.41-.17-2.03-.52-.62-.34-1.13-.86-1.51-1.54v-22.4c.3-1.07.82-1.95,1.54-2.64.73-.69,1.52-1.03,2.38-1.03.9,0,1.6.35,2.09,1.06.49.71.84,1.9,1.03,3.57.19,1.67.29,4.05.29,7.14v5.09Zm8.14-16.09c-.54-2.49-1.41-4.29-2.61-5.41-1.2-1.12-2.85-1.67-4.96-1.67-1.63,0-3.15.46-4.57,1.38-1.4.9-2.53,2.16-3.28,3.64h-.07V3.48s-8.56,0-8.56,0v55.99h7.34l.9-3.73h.19c.69,1.33,1.72,2.38,3.09,3.15,1.37.77,2.9,1.16,4.57,1.16,3,0,5.21-1.38,6.63-4.15,1.42-2.77,2.12-7.09,2.12-12.97v-6.24c0-4.42-.27-7.87-.8-10.36M89.02,10.84c-1.04-3.88-4.08-6.91-7.96-7.96-7.02-1.88-35.16-1.88-35.16-1.88,0,0-28.14,0-35.16,1.88-3.88,1.04-6.91,4.08-7.96,7.96-1.88,7.02-1.88,21.66-1.88,21.66,0,0,0,14.64,1.88,21.66,1.04,3.88,4.08,6.91,7.96,7.96,7.02,1.88,35.16,1.88,35.16,1.88,0,0,28.14,0,35.16-1.88,3.88-1.04,6.91-4.08,7.96-7.96,1.88-7.02,1.88-21.66,1.88-21.66,0,0,0-14.64-1.88-21.66m-52.12,35.16v-27l23.38,13.5-23.38,13.5Z" />
                                        </svg>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-6 col-md-4 col-xl-3 text-center">
                            <div class="card border-dark">
                                <div class="card-body px-4 py-3 px-md-6 py-md-4 px-lg-8 py-lg-5">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="65" fill="currentColor" viewBox="0 0 193 65">
                                    <path d="m82.71,34.15c0,9.06-7.09,15.74-15.79,15.74s-15.79-6.68-15.79-15.74,7.09-15.74,15.79-15.74,15.79,6.62,15.79,15.74Zm-6.91,0c0-5.66-4.11-9.54-8.88-9.54s-8.88,3.88-8.88,9.54,4.11,9.54,8.88,9.54,8.88-3.94,8.88-9.54Zm40.98,0c0,9.06-7.09,15.74-15.79,15.74s-15.79-6.68-15.79-15.74,7.09-15.74,15.79-15.74,15.79,6.62,15.79,15.74Zm-6.91,0c0-5.66-4.11-9.54-8.88-9.54s-8.88,3.88-8.88,9.54,4.11,9.54,8.88,9.54,8.88-3.94,8.88-9.54Zm39.56-14.79v28.26c0,11.63-6.86,16.37-14.96,16.37-7.63,0-12.22-5.1-13.95-9.28l6.02-2.51c1.07,2.56,3.7,5.59,7.93,5.59,5.19,0,8.4-3.2,8.4-9.23v-2.26h-.24c-1.55,1.91-4.53,3.58-8.29,3.58-7.87,0-15.08-6.86-15.08-15.68s7.21-15.8,15.08-15.8c3.75,0,6.74,1.67,8.29,3.52h.24v-2.56h6.57Zm-6.08,14.85c0-5.54-3.7-9.6-8.4-9.6s-8.77,4.05-8.77,9.6,4,9.48,8.77,9.48,8.4-4,8.4-9.48Zm16.9-31.41v46.14h-6.74V2.8h6.74Zm26.28,36.54l5.37,3.58c-1.73,2.56-5.91,6.98-13.12,6.98-8.94,0-15.62-6.91-15.62-15.74,0-9.36,6.74-15.74,14.85-15.74s12.17,6.5,13.47,10.01l.72,1.79-21.04,8.72c1.61,3.16,4.12,4.77,7.63,4.77s5.96-1.73,7.75-4.36h0Zm-16.52-5.66l14.07-5.84c-.77-1.97-3.1-3.34-5.84-3.34-3.51,0-8.4,3.1-8.23,9.18Zm-144.41-3.61v-6.68h22.51c.22,1.16.33,2.54.33,4.03,0,5.01-1.37,11.21-5.78,15.62-4.29,4.47-9.78,6.86-17.05,6.86-13.47,0-24.8-10.97-24.8-24.44S12.14,1,25.61,1c7.45,0,12.76,2.92,16.75,6.74l-4.71,4.71c-2.86-2.68-6.74-4.77-12.04-4.77-9.84,0-17.53,7.93-17.53,17.77s7.69,17.77,17.53,17.77c6.38,0,10.01-2.56,12.34-4.89,1.89-1.89,3.13-4.59,3.62-8.27h-15.96Z" />
                                    </svg>
                                </div>
                            </div>
                        </div>
                        <div class="col-6 col-md-4 col-xl-3 text-center">
                            <div class="card border-dark">
                                <div class="card-body px-4 py-3 px-md-6 py-md-4 px-lg-8 py-lg-5">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="65" fill="currentColor" viewBox="0 0 327 65">
                                    <path d="m21.37,63.03h-12.27v-30.58H.75v-9.95h8.36v-7.08c0-8.39,3.7-14.41,15.93-14.41,2.59,0,6.65.52,6.65.52v9.24h-4.27c-4.35,0-6.04,1.32-6.04,4.98v6.76h10.15l-.9,9.95h-9.24v30.58Zm28.14-41.33c-.18,0-.36,0-.54.01-11.37,0-16.58,8.55-16.58,20.7,0,15.3,6.75,21.42,16.67,21.42,5.67,0,9.4-2.39,11.67-6.84v6.04h11.67V22.5h-11.67v6.23c-1.85-4.01-5.68-6.99-11.21-7.03Zm2.97,9.58c4.78,0,7.64,3.33,7.64,9v5.79c.01,3.82-2.36,8.29-7.64,8.29-8.13,0-7.91-8.78-7.91-11.7,0-9.83,4.33-11.38,7.91-11.38h0Zm24.62,11.49c0-4.93-.24-21.04,20.76-21.04,8.43,0,11.95,2.68,11.95,2.68l-2.83,8.77s-3.51-1.94-8.09-1.94c-5.87,0-9.61,3.4-9.61,9.38v4.29c0,5.75,3.62,9.59,9.62,9.59,4.17,0,8.02-1.95,8.02-1.95l2.82,8.59s-3.22,2.7-11.82,2.7c-19.99,0-20.82-14.46-20.82-21.07h0Zm101.11-21.06c11.37,0,16.66,8.55,16.66,20.7,0,15.3-6.75,21.42-16.67,21.42-5.67,0-9.87-2.39-12.13-6.84v6.04h-11.52V2.23l12.23-1.07v27.02c1.77-4.73,7.57-6.47,11.43-6.47h0Zm-3.43,9.57c-4.78,0-8,3.33-8,9v5.79c-.02,3.82,2.22,8.29,8,8.29,8.13,0,7.91-8.78,7.91-11.7,0-9.83-4.33-11.38-7.91-11.38Zm-43.75-9.53c-12.9,0-19.71,7.03-19.71,19.53v2.32c0,16.22,9.56,20.4,20.97,20.4s16.1-3.1,16.1-3.1l-2.29-8.25s-5.9,2.51-12.34,2.51-9.55-1.7-10.29-8.12h25.9v-6.62c0-13.56-7.64-18.67-18.33-18.67h0Zm.31,8.27c4.47,0,7.36,2.74,7.2,9.09h-15.05c.26-6.68,3.38-9.09,7.85-9.09h0Zm87.92-8.32c-13.25,0-20.22,7.47-20.22,20.84,0,18.36,12.02,21.31,20.24,21.31,12.04,0,20.04-6.48,20.04-21.14s-9-21.01-20.07-21.01Zm-.17,9.62c5.82,0,8.13,4.36,8.13,9.32v4.27c0,6.01-3.23,9.49-8.16,9.49-4.61,0-7.84-3.25-7.84-9.49v-4.27c0-6.65,3.85-9.32,7.87-9.32Zm44.6-9.62c-13.25,0-20.22,7.47-20.22,20.84,0,18.36,12.02,21.31,20.24,21.31,12.04,0,20.04-6.48,20.04-21.14s-9-21.01-20.07-21.01Zm-.17,9.62c5.82,0,8.13,4.36,8.13,9.32v4.27c0,6.01-3.23,9.49-8.15,9.49-4.61,0-7.84-3.25-7.84-9.49v-4.27c0-6.65,3.85-9.32,7.87-9.32Zm24.85,31.72V2.23l12.27-1.07v40.75l12.17-19.42h12.95l-12.69,20.11,13.18,20.42h-12.99l-12.62-19.83v19.83h-12.27Z" />
                                    </svg>
                                </div>
                            </div>
                        </div>
                        <div class="col-6 col-md-4 col-xl-3 text-center">
                            <div class="card border-dark">
                                <div class="card-body px-4 py-3 px-md-6 py-md-4 px-lg-8 py-lg-5">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="65" fill="currentColor" viewBox="0 0 266 65">
                                    <path d="m104.88,23.57h8.37v26.3h-8.37v-26.3Zm10.13,0h8.06v3.6h.16c1.94-2.82,4.46-4.35,8.11-4.35,5.75,0,9.15,4.12,9.15,9.98v17.1h-8.37v-15.42c0-2.77-1.4-4.66-4.12-4.66s-4.61,2.31-4.61,5.55v14.54h-8.37v-26.33Zm-5.93-12.05c2.78,0,5.03,2.25,5.03,5.03s-2.25,5.03-5.03,5.03-5.03-2.25-5.03-5.03,2.25-5.03,5.03-5.03Zm90.29,11.66c-.23-.03-.52-.03-.83-.03-3.19,0-5.34,1.4-7.2,4.51h-.16v-4.09h-8.01v26.3h8.37v-11.82c0-5.47,3.03-8.01,7.83-7.57v-7.31Zm41.1,10.11c-3.34-.62-6.32-.88-6.32-2.72,0-1.63,1.58-2.41,3.65-2.41,2.31,0,3.91.73,4.22,3.08h7.7c-.41-5.18-4.41-8.42-11.87-8.42-6.22,0-11.35,2.88-11.35,8.42,0,6.17,4.87,7.39,9.46,8.16,3.5.62,6.69.88,6.69,3.24,0,1.68-1.58,2.62-4.12,2.62s-4.2-1.06-4.72-3.24h-7.98c.6,5.42,5.34,8.68,12.75,8.68,6.89,0,11.97-2.98,11.97-8.73-.03-6.74-5.47-7.9-10.08-8.68h0Zm-27.65,11.35c-3.45,0-5.39-2.2-5.91-5.75h18.89c.05-5.34-1.48-9.93-4.61-12.8-2.25-2.05-5.23-3.29-8.99-3.29-8.01,0-13.5,6.01-13.5,13.86s5.34,13.97,14.02,13.97c3.34,0,6.01-.88,8.22-2.41,2.31-1.58,3.86-3.86,4.41-6.22h-8.16c-.7,1.66-2.13,2.64-4.35,2.64h0Zm-.47-15.89c2.72,0,4.66,2,4.98,5.13h-10.37c.57-3.11,2.23-5.13,5.39-5.13Zm52.92,14.93c-.39.03-.91.03-1.4.03-1.79,0-2.93-.52-2.93-2.57v-12.34h4.33v-5.23h-4.33v-8.32h-8.16v8.32h-2.57v5.23h2.57v14.12c0,5.65,3.5,7.26,8.37,7.26,1.87,0,3.27-.13,4.12-.31v-6.19Zm-109.83,0c-.34,0-.73.03-1.09.03-1.79,0-2.93-.52-2.93-2.57v-12.34h4.02v-5.23h-4.02v-8.32h-8.16v8.32h-2.72v5.23h2.72v14.12c0,5.65,3.5,7.26,8.37,7.26,1.66,0,2.95-.1,3.81-.26v-6.25Zm-.41-7c0-7.85,5.49-13.86,13.5-13.86,3.76,0,6.74,1.24,8.99,3.29,3.14,2.88,4.66,7.44,4.61,12.8h-18.89c.52,3.55,2.46,5.75,5.91,5.75,2.2,0,3.65-.98,4.35-2.62h8.16c-.57,2.36-2.1,4.61-4.41,6.22-2.2,1.53-4.87,2.41-8.22,2.41-8.68-.03-14.02-6.04-14.02-13.99h0Zm18.66-2.77c-.31-3.14-2.25-5.13-4.98-5.13-3.19,0-4.82,2-5.39,5.13h10.37ZM75.44,13.15h14.54c4.46,0,7.75,1.24,10.03,3.39,2.36,2.2,3.71,5.34,3.71,9.04,0,7.05-4.87,12.02-12.44,12.02h-7.36v12.28h-8.47V13.15Zm14.9,17.26c3.29,0,5.13-1.94,5.13-4.87s-1.89-4.72-5.13-4.72h-6.43v9.61h6.43v-.03ZM32.22,1C14.8,1,.73,15.1.73,32.49c0,13.35,8.29,24.75,20.01,29.34-.29-2.49-.52-6.32.1-9.04.57-2.46,3.68-15.65,3.68-15.65,0,0-.93-1.89-.93-4.66,0-4.38,2.54-7.65,5.7-7.65,2.7,0,3.99,2.02,3.99,4.43,0,2.7-1.71,6.74-2.62,10.5-.75,3.14,1.58,5.7,4.66,5.7,5.6,0,9.9-5.91,9.9-14.41,0-7.54-5.42-12.8-13.16-12.8-8.97,0-14.23,6.71-14.23,13.66,0,2.7,1.04,5.6,2.33,7.18.26.31.29.6.21.91-.23.98-.78,3.14-.88,3.58-.13.57-.47.7-1.06.41-3.89-1.87-6.32-7.62-6.32-12.23,0-9.93,7.2-19.05,20.81-19.05,10.91,0,19.41,7.77,19.41,18.19s-6.84,19.59-16.33,19.59c-3.19,0-6.19-1.66-7.2-3.63,0,0-1.58,6.01-1.97,7.49-.7,2.75-2.62,6.17-3.91,8.27,2.95.91,6.06,1.4,9.33,1.4,17.39,0,31.49-14.1,31.49-31.49-.03-17.42-14.12-31.51-31.51-31.51Z" />
                                    </svg>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

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

