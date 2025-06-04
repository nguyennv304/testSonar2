<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<header id="header" class="bsb-tpl-bg-50 sticky-top bsb-spacer-top-3 bsb-spacer-top-md-5 bsb-spacer-top-xl-6 bsb-tpl-header-sticky bsb-tpl-header-sticky-animation">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="navbar navbar-expand-lg bsb-navbar bsb-navbar-hover bsb-navbar-caret bsb-tpl-navbar-sticky bg-white border border-dark px-xl-3" data-bsb-sticky-target="#header">
                    <div class="container">
                        <a class="navbar-brand" href="home">
                            <img src="./assets/img/branding/presta-logo.svg" class="bsb-tpl-logo" alt="">
                        </a>
                        <button class="navbar-toggler border-0" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z" />
                            </svg>
                        </button>

                        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
                            <div class="offcanvas-header">
                                <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Menu</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                            </div>

                            <div class="offcanvas-body">
                                <ul class="navbar-nav justify-content-end flex-grow-1">
                                    
                                    <c:if test="${sessionScope.acc == 2}">
                                        <li class="nav-item">
                                            <a class="nav-link" href="manager">Manage Product</a>
                                        </li>
                                    </c:if>
                                    
                                    <li class="nav-item">
                                        <a class="nav-link active" aria-current="page" href="home">Home</a>
                                    </li>

                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#!" id="blogDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Blog</a>
                                        <ul class="dropdown-menu border-0 shadow bsb-zoomIn" aria-labelledby="blogDropdown">
                                            <li><a class="dropdown-item" href="blog">News</a></li>
                                        </ul>
                                    </li>

                                    <li class="nav-item">
                                        <a class="nav-link" href="shop">Shop</a>
                                    </li>

                                    <li class="nav-item">
                                        <a class="nav-link" href="about">About</a>
                                    </li>

                                    <!-- Cart Icon with badge -->
                                    <c:if test="${sessionScope.bcc == 1 || sessionScope.bcc == null}">
                                    <li class="nav-item">
                                        <a class="nav-link position-relative" href="showcart">
                                            <i class="fas fa-shopping-cart"></i> Cart
                                            <c:if test="${not empty sessionScope.cartList}">
                                                <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                                    ${fn:length(sessionScope.cartList)}
                                                </span>
                                            </c:if>
                                        </a>
                                    </li>
                                    </c:if>

                                    <c:if test="${sessionScope.userID != null}">
                                        <li class="nav-item">
                                            <a class="nav-link" href="logout">Logout</a>
                                        </li>
                                    </c:if>
                                    
                                    <c:if test="${sessionScope.userID == null}">
                                        <li class="nav-item">
                                            <a class="nav-link" href="login.jsp">Login</a>
                                        </li>
                                    </c:if>
                                    
                                </ul>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</header>
