<%-- 
    Document   : about.jsp
    Created on : Mar 25, 2025, 10:51:29 PM
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
  <title>About - Presta - Free Bootstrap Bike Repair Template</title>
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
                  <h2 class="display-3 text-center fw-bold mb-3 mb-xl-4">About Us</h2>
                  <p class="lead text-center m-0 d-flex justify-content-sm-center">
                    <span class="col-12 col-sm-11 col-lg-8 col-xl-7 col-xxl-6">Our "About Us" page is your window into who we are, what we stand for, and why we do what we do.</span>
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

    <!-- About 7 - Bootstrap Brain Component -->
    <section class="pb-3 pb-md-5 pb-xl-8">
      <div class="container">
        <div class="row gy-4 gy-lg-0 align-items-lg-center">
          <div class="col-12 col-lg-6">
            <img class="img-fluid rounded border border-dark" loading="lazy" src="./assets/img/about/about-img-2.webp" alt="About Us">
          </div>
          <div class="col-12 col-lg-6 col-xxl-6">
            <div class="row justify-content-lg-end">
              <div class="col-12 col-lg-11">
                <div class="about-wrapper">
                  <p class="lead mb-4 mb-md-5">As a socially responsible entity, we are deeply committed to positively impacting the communities we serve and the world at large. Through various initiatives and partnerships, we actively contribute to environmental sustainability, social welfare, and educational advancement.</p>
                  <div class="row gy-4 mb-4 mb-md-5">
                    <div class="col-12 col-md-6">
                      <div class="card border border-dark">
                        <div class="card-body p-4">
                          <h3 class="display-5 fw-bold text-primary text-center mb-2">370+</h3>
                          <p class="fw-bold text-center m-0">Qualified Experts</p>
                        </div>
                      </div>
                    </div>
                    <div class="col-12 col-md-6">
                      <div class="card border border-dark">
                        <div class="card-body p-4">
                          <h3 class="display-5 fw-bold text-primary text-center mb-2">18k+</h3>
                          <p class="fw-bold text-center m-0">Satisfied Clients</p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <a href="#!" class="btn btn-accent bsb-btn-2xl">
                    Explore
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-right-short" viewBox="0 0 16 16">
                      <path fill-rule="evenodd" d="M4 8a.5.5 0 0 1 .5-.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5A.5.5 0 0 1 4 8" />
                    </svg>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Team 3 - Bootstrap Brain Component -->
    <section class="py-3 py-md-5 py-xl-8 bg-white">
      <div class="container">
        <div class="row justify-content-md-center">
          <div class="col-12 col-md-10 col-lg-8 col-xl-7 col-xxl-6">
            <h2 class="mb-4 display-5 text-center">Our Team</h2>
            <p class="text-secondary mb-5 text-center lead fs-4">Our team embodies our business's core values and vision, bringing together diverse talents and expertise to provide unparalleled support to our clients.</p>
            <hr class="w-50 mx-auto mb-5 mb-xl-9 border-dark-subtle">
          </div>
        </div>
      </div>

      <div class="container overflow-hidden">
        <div class="row gy-4 gy-xxl-5">
          <div class="col-12 col-sm-6 col-lg-4 col-xl-3">
            <div class="card border border-dark" style="--bs-card-border-radius: 0; --bs-card-inner-border-radius: 0;">
              <figure class="card-img-top m-0 overflow-hidden bsb-overlay-hover">
                <a href="#!">
                  <img class="img-fluid bsb-scale bsb-hover-scale-up" loading="lazy" src="./assets/img/team/team-img-1.jpg" alt="Flora Nyra">
                </a>
                <figcaption>
                  <h2 class="h3 text-white fw-bold mb-1 bsb-hover-fadeInRight">Flora Nyra</h2>
                  <p class="fs-7 mb-4 text-white opacity-75 bsb-hover-fadeInLeft">Product Manager</p>
                  <p class="fs-9 m-0 px-4 text-white text-center bsb-hover-fadeInUp">Define the product vision and strategy and conduct user research to understand the needs of the target market.</p>
                </figcaption>
              </figure>
            </div>
          </div>
          <div class="col-12 col-sm-6 col-lg-4 col-xl-3">
            <div class="card border border-dark" style="--bs-card-border-radius: 0; --bs-card-inner-border-radius: 0;">
              <figure class="card-img-top m-0 overflow-hidden bsb-overlay-hover">
                <a href="#!">
                  <img class="img-fluid bsb-scale bsb-hover-scale-up" loading="lazy" src="./assets/img/team/team-img-3.jpg" alt="James Levi">
                </a>
                <figcaption>
                  <h2 class="h3 text-white fw-bold mb-1 bsb-hover-fadeInRight">James Levi</h2>
                  <p class="fs-7 mb-4 text-white opacity-75 bsb-hover-fadeInLeft">Financial Analyst</p>
                  <p class="fs-9 m-0 px-4 text-white text-center bsb-hover-fadeInUp">Analyze financial statements to assess a company's financial performance and develop financial models for future performance.</p>
                </figcaption>
              </figure>
            </div>
          </div>
          <div class="col-12 col-sm-6 col-lg-4 col-xl-3">
            <div class="card border border-dark" style="--bs-card-border-radius: 0; --bs-card-inner-border-radius: 0;">
              <figure class="card-img-top m-0 overflow-hidden bsb-overlay-hover">
                <a href="#!">
                  <img class="img-fluid bsb-scale bsb-hover-scale-up" loading="lazy" src="./assets/img/team/team-img-2.jpg" alt="Taytum Elia">
                </a>
                <figcaption>
                  <h2 class="h3 text-white fw-bold mb-1 bsb-hover-fadeInRight">Taytum Elia</h2>
                  <p class="fs-7 mb-4 text-white opacity-75 bsb-hover-fadeInLeft">Art Director</p>
                  <p class="fs-9 m-0 px-4 text-white text-center bsb-hover-fadeInUp">Develop and oversee the visual concept for a product or brand and direct and review the work of other creative professionals.</p>
                </figcaption>
              </figure>
            </div>
          </div>
          <div class="col-12 col-sm-6 col-lg-4 col-xl-3">
            <div class="card border border-dark" style="--bs-card-border-radius: 0; --bs-card-inner-border-radius: 0;">
              <figure class="card-img-top m-0 overflow-hidden bsb-overlay-hover">
                <a href="#!">
                  <img class="img-fluid bsb-scale bsb-hover-scale-up" loading="lazy" src="./assets/img/team/team-img-5.jpg" alt="Evander Mac">
                </a>
                <figcaption>
                  <h2 class="h3 text-white fw-bold mb-1 bsb-hover-fadeInRight">Evander Mac</h2>
                  <p class="fs-7 mb-4 text-white opacity-75 bsb-hover-fadeInLeft">Investment Planner</p>
                  <p class="fs-9 m-0 px-4 text-white text-center bsb-hover-fadeInUp">He works with clients to assess their financial situation, develop an investment plan, and choose the investments to meet their needs.</p>
                </figcaption>
              </figure>
            </div>
          </div>
          <div class="col-12 col-sm-6 col-lg-4 col-xl-3">
            <div class="card border border-dark" style="--bs-card-border-radius: 0; --bs-card-inner-border-radius: 0;">
              <figure class="card-img-top m-0 overflow-hidden bsb-overlay-hover">
                <a href="#!">
                  <img class="img-fluid bsb-scale bsb-hover-scale-up" loading="lazy" src="./assets/img/team/team-img-6.jpg" alt="Gian Banks">
                </a>
                <figcaption>
                  <h2 class="h3 text-white fw-bold mb-1 bsb-hover-fadeInRight">Gian Banks</h2>
                  <p class="fs-7 mb-4 text-white opacity-75 bsb-hover-fadeInLeft">Web Developer</p>
                  <p class="fs-9 m-0 px-4 text-white text-center bsb-hover-fadeInUp">He uses his knowledge of programming languages and web development technologies to create websites that are user-friendly.</p>
                </figcaption>
              </figure>
            </div>
          </div>
          <div class="col-12 col-sm-6 col-lg-4 col-xl-3">
            <div class="card border border-dark" style="--bs-card-border-radius: 0; --bs-card-inner-border-radius: 0;">
              <figure class="card-img-top m-0 overflow-hidden bsb-overlay-hover">
                <a href="#!">
                  <img class="img-fluid bsb-scale bsb-hover-scale-up" loading="lazy" src="./assets/img/team/team-img-8.jpg" alt="Della Clover">
                </a>
                <figcaption>
                  <h2 class="h3 text-white fw-bold mb-1 bsb-hover-fadeInRight">Della Clover</h2>
                  <p class="fs-7 mb-4 text-white opacity-75 bsb-hover-fadeInLeft">UX Designer</p>
                  <p class="fs-9 m-0 px-4 text-white text-center bsb-hover-fadeInUp">She is responsible for the user experience. She works to create products and services that are easy to use and enjoyable for users.</p>
                </figcaption>
              </figure>
            </div>
          </div>
          <div class="col-12 col-sm-6 col-lg-4 col-xl-3">
            <div class="card border border-dark" style="--bs-card-border-radius: 0; --bs-card-inner-border-radius: 0;">
              <figure class="card-img-top m-0 overflow-hidden bsb-overlay-hover">
                <a href="#!">
                  <img class="img-fluid bsb-scale bsb-hover-scale-up" loading="lazy" src="./assets/img/team/team-img-4.jpg" alt="Milo George">
                </a>
                <figcaption>
                  <h2 class="h3 text-white fw-bold mb-1 bsb-hover-fadeInRight">Milo George</h2>
                  <p class="fs-7 mb-4 text-white opacity-75 bsb-hover-fadeInLeft">Digital Manager</p>
                  <p class="fs-9 m-0 px-4 text-white text-center bsb-hover-fadeInUp">He works to develop and implement digital marketing campaigns, manage social media accounts, and maintain websites.</p>
                </figcaption>
              </figure>
            </div>
          </div>
          <div class="col-12 col-sm-6 col-lg-4 col-xl-3">
            <div class="card border border-dark" style="--bs-card-border-radius: 0; --bs-card-inner-border-radius: 0;">
              <figure class="card-img-top m-0 overflow-hidden bsb-overlay-hover">
                <a href="#!">
                  <img class="img-fluid bsb-scale bsb-hover-scale-up" loading="lazy" src="./assets/img/team/team-img-11.jpg" alt="Maya Colton">
                </a>
                <figcaption>
                  <h2 class="h3 text-white fw-bold mb-1 bsb-hover-fadeInRight">Maya Colton</h2>
                  <p class="fs-7 mb-4 text-white opacity-75 bsb-hover-fadeInLeft">HR Manager</p>
                  <p class="fs-9 m-0 px-4 text-white text-center bsb-hover-fadeInUp">She supports the organization's strategic objectives by fostering an environment conducive to employee growth and success.</p>
                </figcaption>
              </figure>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- About 8 - Bootstrap Brain Component -->
    <section class="py-3 py-md-5 py-xl-8">
      <div class="container">
        <div class="row gy-4 gy-lg-0 align-items-lg-center flex-lg-row-reverse">
          <div class="col-12 col-lg-6">
            <img class="img-fluid rounded border border-dark" loading="lazy" src="./assets/img/about/about-img-3.webp" alt="About Us">
          </div>
          <div class="col-12 col-lg-6 col-xxl-6">
            <div class="row justify-content-xxl-around">
              <div class="col-12 col-lg-11 col-xxl-10">
                <div class="card border-0 mb-4 bg-transparent">
                  <div class="card-body p-0">
                    <h4 class="card-title mb-3">Our Services</h4>
                    <ul class="list-unstyled m-0 p-0 d-sm-flex flex-sm-wrap">
                      <li class="py-1 d-flex align-items-center gap-2 col-sm-6">
                        <span class="text-primary">
                          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-check-all" viewBox="0 0 16 16">
                            <path d="M8.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L2.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093L8.95 4.992zm-.92 5.14.92.92a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 1 0-1.091-1.028L9.477 9.417l-.485-.486z" />
                          </svg>
                        </span>
                        <span>Tune-Up Services</span>
                      </li>
                      <li class="py-1 d-flex align-items-center gap-2 col-sm-6">
                        <span class="text-primary">
                          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-check-all" viewBox="0 0 16 16">
                            <path d="M8.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L2.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093L8.95 4.992zm-.92 5.14.92.92a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 1 0-1.091-1.028L9.477 9.417l-.485-.486z" />
                          </svg>
                        </span>
                        <span>Wheel Services</span>
                      </li>
                      <li class="py-1 d-flex align-items-center gap-2 col-sm-6">
                        <span class="text-primary">
                          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-check-all" viewBox="0 0 16 16">
                            <path d="M8.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L2.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093L8.95 4.992zm-.92 5.14.92.92a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 1 0-1.091-1.028L9.477 9.417l-.485-.486z" />
                          </svg>
                        </span>
                        <span>Brake Services</span>
                      </li>
                      <li class="py-1 d-flex align-items-center gap-2 col-sm-6">
                        <span class="text-primary">
                          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-check-all" viewBox="0 0 16 16">
                            <path d="M8.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L2.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093L8.95 4.992zm-.92 5.14.92.92a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 1 0-1.091-1.028L9.477 9.417l-.485-.486z" />
                          </svg>
                        </span>
                        <span>Drivetrain Services</span>
                      </li>
                      <li class="py-1 d-flex align-items-center gap-2 col-sm-6">
                        <span class="text-primary">
                          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-check-all" viewBox="0 0 16 16">
                            <path d="M8.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L2.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093L8.95 4.992zm-.92 5.14.92.92a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 1 0-1.091-1.028L9.477 9.417l-.485-.486z" />
                          </svg>
                        </span>
                        <span>Suspension Services</span>
                      </li>
                      <li class="py-1 d-flex align-items-center gap-2 col-sm-6">
                        <span class="text-primary">
                          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-check-all" viewBox="0 0 16 16">
                            <path d="M8.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L2.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093L8.95 4.992zm-.92 5.14.92.92a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 1 0-1.091-1.028L9.477 9.417l-.485-.486z" />
                          </svg>
                        </span>
                        <span>Frame Services</span>
                      </li>
                    </ul>
                  </div>
                </div>

                <div class="card border-0 mb-4 mb-xxl-5 bg-transparent">
                  <div class="card-body p-0">
                    <h4 class="card-title mb-3">Accessory Installation</h4>
                    <ul class="list-unstyled m-0 p-0 d-sm-flex flex-sm-wrap">
                      <li class="py-1 d-flex align-items-center gap-2 col-sm-6">
                        <span class="text-primary">
                          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-check-all" viewBox="0 0 16 16">
                            <path d="M8.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L2.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093L8.95 4.992zm-.92 5.14.92.92a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 1 0-1.091-1.028L9.477 9.417l-.485-.486z" />
                          </svg>
                        </span>
                        <span>Handlebar Tape Installation</span>
                      </li>
                      <li class="py-1 d-flex align-items-center gap-2 col-sm-6">
                        <span class="text-primary">
                          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-check-all" viewBox="0 0 16 16">
                            <path d="M8.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L2.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093L8.95 4.992zm-.92 5.14.92.92a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 1 0-1.091-1.028L9.477 9.417l-.485-.486z" />
                          </svg>
                        </span>
                        <span>Pedal Installation</span>
                      </li>
                      <li class="py-1 d-flex align-items-center gap-2 col-sm-6">
                        <span class="text-primary">
                          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-check-all" viewBox="0 0 16 16">
                            <path d="M8.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L2.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093L8.95 4.992zm-.92 5.14.92.92a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 1 0-1.091-1.028L9.477 9.417l-.485-.486z" />
                          </svg>
                        </span>
                        <span>Fender Installation</span>
                      </li>
                      <li class="py-1 d-flex align-items-center gap-2 col-sm-6">
                        <span class="text-primary">
                          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-check-all" viewBox="0 0 16 16">
                            <path d="M8.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L2.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093L8.95 4.992zm-.92 5.14.92.92a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 1 0-1.091-1.028L9.477 9.417l-.485-.486z" />
                          </svg>
                        </span>
                        <span>Rack and Pannier Installation</span>
                      </li>
                    </ul>
                  </div>
                </div>

                <a href="#!" class="btn btn-accent bsb-btn-2xl">
                  Explore
                  <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-right-short" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M4 8a.5.5 0 0 1 .5-.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5A.5.5 0 0 1 4 8" />
                  </svg>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Client 2 - Bootstrap Brain Component -->
    <div class="py-3 py-md-5 py-xl-8 bg-white">
      <div class="container overflow-hidden">
        <div class="row gy-4">
          <div class="col-6 col-md-4 col-xl-3 text-center">
            <div class="card border-dark">
              <div class="card-body px-4 py-3 px-md-6 py-md-4 px-lg-8 py-lg-5">
                <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="65" fill="currentColor" viewBox="0 0 284 65">
                  <path d="m141.51,52.13c.49-1.29.74-3.39.74-6.31v-12.29c0-2.83-.25-4.9-.74-6.21-.49-1.31-1.36-1.96-2.61-1.96s-2.05.65-2.54,1.96c-.49,1.31-.74,3.38-.74,6.21v12.29c0,2.92.24,5.02.71,6.31.47,1.29,1.33,1.93,2.57,1.93s2.11-.64,2.61-1.93h0Zm-9.98,6.18c-1.78-1.2-3.05-3.07-3.8-5.6-.75-2.53-1.13-5.9-1.13-10.1v-5.73c0-4.25.43-7.66,1.29-10.23.86-2.57,2.2-4.45,4.02-5.63,1.82-1.18,4.22-1.77,7.18-1.77s5.26.6,7.02,1.8c1.76,1.2,3.05,3.08,3.86,5.63.81,2.55,1.22,5.95,1.22,10.2v5.73c0,4.2-.4,7.58-1.19,10.14-.79,2.55-2.08,4.42-3.86,5.6-1.78,1.18-4.19,1.77-7.24,1.77s-5.59-.6-7.37-1.8m137.82-32.22c-.45.56-.75,1.47-.9,2.74-.15,1.27-.22,3.19-.22,5.76v2.83h6.5v-2.83c0-2.53-.09-4.45-.26-5.76-.17-1.31-.48-2.23-.93-2.77-.45-.54-1.15-.81-2.09-.81s-1.64.28-2.09.84h0Zm-1.13,16.61v2c0,2.53.07,4.43.22,5.7.15,1.27.46,2.19.93,2.77.47.58,1.2.87,2.19.87,1.33,0,2.24-.52,2.74-1.55.49-1.03.76-2.75.8-5.15l7.66.45c.04.34.06.82.06,1.42,0,3.65-1,6.37-2.99,8.17-1.99,1.8-4.82,2.7-8.46,2.7-4.38,0-7.44-1.37-9.2-4.12-1.76-2.74-2.64-6.99-2.64-12.74v-6.89c0-5.92.91-10.24,2.74-12.97,1.82-2.72,4.95-4.09,9.36-4.09,3.05,0,5.38.56,7.02,1.67,1.63,1.12,2.78,2.85,3.44,5.21.67,2.36,1,5.62,1,9.78v6.76h-14.87m-158.33-.74l-10.11-36.49h8.82l3.54,16.54c.9,4.08,1.57,7.55,2,10.43h.26c.3-2.06.97-5.51,2-10.36l3.67-16.61h8.82l-10.23,36.49v17.51h-8.75v-17.51m69.97-21.95v39.45h-6.95l-.77-4.83h-.19c-1.89,3.65-4.72,5.47-8.5,5.47-2.62,0-4.55-.86-5.79-2.57-1.24-1.72-1.87-4.4-1.87-8.05v-29.48h8.88v28.96c0,1.76.19,3.01.58,3.76.39.75,1.03,1.13,1.93,1.13.77,0,1.51-.24,2.22-.71.71-.47,1.23-1.07,1.58-1.8v-31.34h8.88m45.56,0v39.45h-6.95l-.77-4.83h-.19c-1.89,3.65-4.72,5.47-8.5,5.47-2.62,0-4.55-.86-5.79-2.57-1.24-1.72-1.87-4.4-1.87-8.05v-29.48h8.88v28.96c0,1.76.19,3.01.58,3.76.39.75,1.03,1.13,1.93,1.13.77,0,1.51-.24,2.22-.71.71-.47,1.23-1.07,1.58-1.8v-31.34h8.88m-21.42-7.4h-8.82v46.86h-8.69V12.62h-8.82v-7.14h26.32v7.14m42.68,29.8c0,2.87-.12,5.13-.36,6.76-.24,1.63-.63,2.79-1.19,3.48-.56.69-1.31,1.03-2.25,1.03-.71,0-1.41-.17-2.03-.52-.62-.34-1.13-.86-1.51-1.54v-22.4c.3-1.07.82-1.95,1.54-2.64.73-.69,1.52-1.03,2.38-1.03.9,0,1.6.35,2.09,1.06.49.71.84,1.9,1.03,3.57.19,1.67.29,4.05.29,7.14v5.09Zm8.14-16.09c-.54-2.49-1.41-4.29-2.61-5.41-1.2-1.12-2.85-1.67-4.96-1.67-1.63,0-3.15.46-4.57,1.38-1.4.9-2.53,2.16-3.28,3.64h-.07V3.48s-8.56,0-8.56,0v55.99h7.34l.9-3.73h.19c.69,1.33,1.72,2.38,3.09,3.15,1.37.77,2.9,1.16,4.57,1.16,3,0,5.21-1.38,6.63-4.15,1.42-2.77,2.12-7.09,2.12-12.97v-6.24c0-4.42-.27-7.87-.8-10.36M89.02,10.84c-1.04-3.88-4.08-6.91-7.96-7.96-7.02-1.88-35.16-1.88-35.16-1.88,0,0-28.14,0-35.16,1.88-3.88,1.04-6.91,4.08-7.96,7.96-1.88,7.02-1.88,21.66-1.88,21.66,0,0,0,14.64,1.88,21.66,1.04,3.88,4.08,6.91,7.96,7.96,7.02,1.88,35.16,1.88,35.16,1.88,0,0,28.14,0,35.16-1.88,3.88-1.04,6.91-4.08,7.96-7.96,1.88-7.02,1.88-21.66,1.88-21.66,0,0,0-14.64-1.88-21.66m-52.12,35.16v-27l23.38,13.5-23.38,13.5Z" />
                </svg>
              </div>
            </div>
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
