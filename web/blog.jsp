<%-- 
    Document   : blog.jsp
    Created on : Mar 25, 2025, 10:54:15 PM
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
  <title>Blog - Presta - Free Bootstrap Bike Repair Template</title>
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
                  <h2 class="display-3 text-center fw-bold mb-3 mb-xl-4">Blog</h2>
                  <p class="lead text-center m-0 d-flex justify-content-sm-center">
                    <span class="col-12 col-sm-11 col-lg-8 col-xl-7 col-xxl-6">Our blog shares valuable information sources, providing expert advice, inspiration, and the latest updates relevant to our industry.</span>
                  </p>
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

    <!-- Blog 6 - Bootstrap Brain Component -->
    <div class="py-3 py-md-5 py-xl-8 bg-white">
      <div class="container overflow-hidden">
        <div class="row gy-4 gy-xxl-5">
          <div class="col-12 col-md-6 col-lg-4 d-flex">
            <article class="d-flex">
              <div class="card border border-dark" style="--bs-card-border-radius: 0; --bs-card-inner-border-radius: 0;">
                <figure class="card-img-top m-0 overflow-hidden bsb-overlay-hover">
                  <a href="#!">
                    <img class="img-fluid bsb-scale bsb-hover-scale-up" loading="lazy" src="./assets/img/blog/blog-image-1.jpg" alt="Spokes">
                  </a>
                  <figcaption>
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-eye text-white bsb-hover-fadeInLeft" viewBox="0 0 16 16">
                      <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z" />
                      <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z" />
                    </svg>
                    <h4 class="h6 text-white bsb-hover-fadeInRight mt-2">Read More</h4>
                  </figcaption>
                </figure>
                <div class="card-body border-0 bg-white p-4">
                  <div class="entry-header mb-3">
                    <ul class="entry-meta list-unstyled d-flex mb-2">
                      <li>
                        <a class="link-dark link-opacity-75 link-opacity-100-hover text-decoration-none" href="#!">
                          <span class="fs-7">25 Dec 2024</span>
                        </a>
                      </li>
                    </ul>
                    <h2 class="card-title entry-title h4 mb-0">
                      <a class="link-dark link-opacity-100 link-opacity-75-hover text-decoration-none" href="#!">The Most Widespread Items in the Best Bike Spokes</a>
                    </h2>
                  </div>
                  <p class="card-text entry-summary text-secondary m-0 p-0">
                    Good spokes will give the entire wheelset more tension, accuracy, and rigidity, allowing the rider to accelerate satisfactorily.
                  </p>
                </div>
              </div>
            </article>
          </div>
          <div class="col-12 col-md-6 col-lg-4 d-flex">
            <article class="d-flex">
              <div class="card border border-dark" style="--bs-card-border-radius: 0; --bs-card-inner-border-radius: 0;">
                <figure class="card-img-top m-0 overflow-hidden bsb-overlay-hover">
                  <a href="#!">
                    <img class="img-fluid bsb-scale bsb-hover-scale-up" loading="lazy" src="./assets/img/blog/blog-image-2.jpg" alt="Chain">
                  </a>
                  <figcaption>
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-eye text-white bsb-hover-fadeInDown" viewBox="0 0 16 16">
                      <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z" />
                      <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z" />
                    </svg>
                    <h4 class="h6 text-white bsb-hover-fadeInUp mt-2">Read More</h4>
                  </figcaption>
                </figure>
                <div class="card-body border-0 bg-white p-4">
                  <div class="entry-header mb-3">
                    <ul class="entry-meta list-unstyled d-flex mb-2">
                      <li>
                        <a class="link-dark link-opacity-75 link-opacity-100-hover text-decoration-none" href="#!">
                          <span class="fs-7">11 Nov 2024</span>
                        </a>
                      </li>
                    </ul>
                    <h2 class="card-title entry-title h4 mb-0">
                      <a class="link-dark link-opacity-100 link-opacity-75-hover text-decoration-none" href="#!">How to Choose a Best Replacement Bike Chain</a>
                    </h2>
                  </div>
                  <p class="card-text entry-summary text-secondary m-0 p-0">
                    Replacing worn chains with the same model from the same brand is easy, but even this is fraught with complications.
                  </p>
                </div>
              </div>
            </article>
          </div>
          <div class="col-12 col-md-6 col-lg-4 d-flex">
            <article class="d-flex">
              <div class="card border border-dark" style="--bs-card-border-radius: 0; --bs-card-inner-border-radius: 0;">
                <figure class="card-img-top m-0 overflow-hidden bsb-overlay-hover">
                  <a href="#!">
                    <img class="img-fluid bsb-scale bsb-hover-scale-up" loading="lazy" src="./assets/img/blog/blog-image-3.jpg" alt="Saddles">
                  </a>
                  <figcaption>
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-eye text-white bsb-hover-fadeInRight" viewBox="0 0 16 16">
                      <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z" />
                      <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z" />
                    </svg>
                    <h4 class="h6 text-white bsb-hover-fadeInLeft mt-2">Read More</h4>
                  </figcaption>
                </figure>
                <div class="card-body border-0 bg-white p-4">
                  <div class="entry-header mb-3">
                    <ul class="entry-meta list-unstyled d-flex mb-2">
                      <li>
                        <a class="link-dark link-opacity-75 link-opacity-100-hover text-decoration-none" href="#!">
                          <span class="fs-7">5 Oct 2024</span>
                        </a>
                      </li>
                    </ul>
                    <h2 class="card-title entry-title h4 mb-0">
                      <a class="link-dark link-opacity-100 link-opacity-75-hover text-decoration-none" href="#!">The Best Bike Saddles for More Comfortable Miles</a>
                    </h2>
                  </div>
                  <p class="card-text entry-summary text-secondary m-0 p-0">
                    Different riding styles call for purpose-built bike seats. These expert-approved saddles earned our recommendation.
                  </p>
                </div>
              </div>
            </article>
          </div>
          <div class="col-12 col-md-6 col-lg-4 d-flex">
            <article class="d-flex">
              <div class="card border border-dark" style="--bs-card-border-radius: 0; --bs-card-inner-border-radius: 0;">
                <figure class="card-img-top m-0 overflow-hidden bsb-overlay-hover">
                  <a href="#!">
                    <img class="img-fluid bsb-scale bsb-hover-scale-up" loading="lazy" src="./assets/img/blog/blog-image-4.jpg" alt="Rear Bike Seat">
                  </a>
                  <figcaption>
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-eye text-white bsb-hover-fadeInLeft" viewBox="0 0 16 16">
                      <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z" />
                      <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z" />
                    </svg>
                    <h4 class="h6 text-white bsb-hover-fadeInRight mt-2">Read More</h4>
                  </figcaption>
                </figure>
                <div class="card-body border-0 bg-white p-4">
                  <div class="entry-header mb-3">
                    <ul class="entry-meta list-unstyled d-flex mb-2">
                      <li>
                        <a class="link-dark link-opacity-75 link-opacity-100-hover text-decoration-none" href="#!">
                          <span class="fs-7">29 Sep 2024</span>
                        </a>
                      </li>
                    </ul>
                    <h2 class="card-title entry-title h4 mb-0">
                      <a class="link-dark link-opacity-100 link-opacity-75-hover text-decoration-none" href="#!">Which Brand of Front or Rear Bike Seat is the Most Durable</a>
                    </h2>
                  </div>
                  <p class="card-text entry-summary text-secondary m-0 p-0">
                    As summer approaches, so do family outings. The warmth, sunshine and long days are perfect for exploring on two wheels.
                  </p>
                </div>
              </div>
            </article>
          </div>
          <div class="col-12 col-md-6 col-lg-4 d-flex">
            <article class="d-flex">
              <div class="card border border-dark" style="--bs-card-border-radius: 0; --bs-card-inner-border-radius: 0;">
                <figure class="card-img-top m-0 overflow-hidden bsb-overlay-hover">
                  <a href="#!">
                    <img class="img-fluid bsb-scale bsb-hover-scale-up" loading="lazy" src="./assets/img/blog/blog-image-5.jpg" alt="Cycle Buying Guide">
                  </a>
                  <figcaption>
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-eye text-white bsb-hover-fadeInDown" viewBox="0 0 16 16">
                      <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z" />
                      <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z" />
                    </svg>
                    <h4 class="h6 text-white bsb-hover-fadeInUp mt-2">Read More</h4>
                  </figcaption>
                </figure>
                <div class="card-body border-0 bg-white p-4">
                  <div class="entry-header mb-3">
                    <ul class="entry-meta list-unstyled d-flex mb-2">
                      <li>
                        <a class="link-dark link-opacity-75 link-opacity-100-hover text-decoration-none" href="#!">
                          <span class="fs-7">14 Aug 2024</span>
                        </a>
                      </li>
                    </ul>
                    <h2 class="card-title entry-title h4 mb-0">
                      <a class="link-dark link-opacity-100 link-opacity-75-hover text-decoration-none" href="#!">Weight Loss: A Cycle Buying Guide for the Beginners</a>
                    </h2>
                  </div>
                  <p class="card-text entry-summary text-secondary m-0 p-0">
                    Different kinds of bikes are available in the market, but which is perfect depends on your fitness goal and your budget limits.
                  </p>
                </div>
              </div>
            </article>
          </div>
          <div class="col-12 col-md-6 col-lg-4 d-flex">
            <article class="d-flex">
              <div class="card border border-dark" style="--bs-card-border-radius: 0; --bs-card-inner-border-radius: 0;">
                <figure class="card-img-top m-0 overflow-hidden bsb-overlay-hover">
                  <a href="#!">
                    <img class="img-fluid bsb-scale bsb-hover-scale-up" loading="lazy" src="./assets/img/blog/blog-image-6.jpg" alt="Nuts and Bolts">
                  </a>
                  <figcaption>
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-eye text-white bsb-hover-fadeInRight" viewBox="0 0 16 16">
                      <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z" />
                      <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z" />
                    </svg>
                    <h4 class="h6 text-white bsb-hover-fadeInLeft mt-2">Read More</h4>
                  </figcaption>
                </figure>
                <div class="card-body border-0 bg-white p-4">
                  <div class="entry-header mb-3">
                    <ul class="entry-meta list-unstyled d-flex mb-2">
                      <li>
                        <a class="link-dark link-opacity-75 link-opacity-100-hover text-decoration-none" href="#!">
                          <span class="fs-7">13 Jul 2024</span>
                        </a>
                      </li>
                    </ul>
                    <h2 class="card-title entry-title h4 mb-0">
                      <a class="link-dark link-opacity-100 link-opacity-75-hover text-decoration-none" href="#!">How do Mountain Bike Brands Select the Nuts and Bolts</a>
                    </h2>
                  </div>
                  <p class="card-text entry-summary text-secondary m-0 p-0">
                    One seat post clamp has a 4mm head, and the other a 6mm. We ask experts all questions about bike fasteners.
                  </p>
                </div>
              </div>
            </article>
          </div>
          <div class="col-12 col-md-6 col-lg-4 d-flex">
            <article class="d-flex">
              <div class="card border border-dark" style="--bs-card-border-radius: 0; --bs-card-inner-border-radius: 0;">
                <figure class="card-img-top m-0 overflow-hidden bsb-overlay-hover">
                  <a href="#!">
                    <img class="img-fluid bsb-scale bsb-hover-scale-up" loading="lazy" src="./assets/img/blog/blog-image-7.jpg" alt="Bike Tyre Sizes">
                  </a>
                  <figcaption>
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-eye text-white bsb-hover-fadeInLeft" viewBox="0 0 16 16">
                      <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z" />
                      <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z" />
                    </svg>
                    <h4 class="h6 text-white bsb-hover-fadeInRight mt-2">Read More</h4>
                  </figcaption>
                </figure>
                <div class="card-body border-0 bg-white p-4">
                  <div class="entry-header mb-3">
                    <ul class="entry-meta list-unstyled d-flex mb-2">
                      <li>
                        <a class="link-dark link-opacity-75 link-opacity-100-hover text-decoration-none" href="#!">
                          <span class="fs-7">26 Jun 2024</span>
                        </a>
                      </li>
                    </ul>
                    <h2 class="card-title entry-title h4 mb-0">
                      <a class="link-dark link-opacity-100 link-opacity-75-hover text-decoration-none" href="#!">Bike Tyre Sizes Explained: Our Complete Guide for You</a>
                    </h2>
                  </div>
                  <p class="card-text entry-summary text-secondary m-0 p-0">
                    Bike tire sizes vary; let us help you identify and understand them so you can easily choose the right tires for your bike.
                  </p>
                </div>
              </div>
            </article>
          </div>
          <div class="col-12 col-md-6 col-lg-4 d-flex">
            <article class="d-flex">
              <div class="card border border-dark" style="--bs-card-border-radius: 0; --bs-card-inner-border-radius: 0;">
                <figure class="card-img-top m-0 overflow-hidden bsb-overlay-hover">
                  <a href="#!">
                    <img class="img-fluid bsb-scale bsb-hover-scale-up" loading="lazy" src="./assets/img/blog/blog-image-8.jpg" alt="48 Hole Hub">
                  </a>
                  <figcaption>
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-eye text-white bsb-hover-fadeInDown" viewBox="0 0 16 16">
                      <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z" />
                      <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z" />
                    </svg>
                    <h4 class="h6 text-white bsb-hover-fadeInUp mt-2">Read More</h4>
                  </figcaption>
                </figure>
                <div class="card-body border-0 bg-white p-4">
                  <div class="entry-header mb-3">
                    <ul class="entry-meta list-unstyled d-flex mb-2">
                      <li>
                        <a class="link-dark link-opacity-75 link-opacity-100-hover text-decoration-none" href="#!">
                          <span class="fs-7">9 May 2024</span>
                        </a>
                      </li>
                    </ul>
                    <h2 class="card-title entry-title h4 mb-0">
                      <a class="link-dark link-opacity-100 link-opacity-75-hover text-decoration-none" href="#!">A Wholesale 48 Hole Hub for Top Bicycle Performance</a>
                    </h2>
                  </div>
                  <p class="card-text entry-summary text-secondary m-0 p-0">
                    Choosing the right 48-hole hub involves assessing bearing type, material robustness, and brake system compatibility.
                  </p>
                </div>
              </div>
            </article>
          </div>
          <div class="col-12 col-md-6 col-lg-4 d-flex">
            <article class="d-flex">
              <div class="card border border-dark" style="--bs-card-border-radius: 0; --bs-card-inner-border-radius: 0;">
                <figure class="card-img-top m-0 overflow-hidden bsb-overlay-hover">
                  <a href="#!">
                    <img class="img-fluid bsb-scale bsb-hover-scale-up" loading="lazy" src="./assets/img/blog/blog-image-9.jpg" alt="Bike Pedal">
                  </a>
                  <figcaption>
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-eye text-white bsb-hover-fadeInRight" viewBox="0 0 16 16">
                      <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z" />
                      <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z" />
                    </svg>
                    <h4 class="h6 text-white bsb-hover-fadeInLeft mt-2">Read More</h4>
                  </figcaption>
                </figure>
                <div class="card-body border-0 bg-white p-4">
                  <div class="entry-header mb-3">
                    <ul class="entry-meta list-unstyled d-flex mb-2">
                      <li>
                        <a class="link-dark link-opacity-75 link-opacity-100-hover text-decoration-none" href="#!">
                          <span class="fs-7">2 Apr 2024</span>
                        </a>
                      </li>
                    </ul>
                    <h2 class="card-title entry-title h4 mb-0">
                      <a class="link-dark link-opacity-100 link-opacity-75-hover text-decoration-none" href="#!">The Ultimate Bike Pedal Guide for Your Next Ride</a>
                    </h2>
                  </div>
                  <p class="card-text entry-summary text-secondary m-0 p-0">
                    Pedals make up two of the five touchpoints. They give you a platform for putting down your power and getting moving.
                  </p>
                </div>
              </div>
            </article>
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

