<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<!-- Header -->
<header>

    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0 shrink-to-fit=no"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Dosis:300,400,700"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link rel="stylesheet" href="../../../pub/css/main.css"/>


    <title>Tea Time</title>

    <!-- Navigation Menu -->
    <div class="containers">
        <div class="navbar">
            <div class="hamburger-menu">
                <div class="line line-1"></div>
                <div class="line line-2"></div>
                <div class="line line-3"></div>
            </div>

            <ul class="nav-list">
                <li class="nav-item"><a href="/" class="nav-link"><i class="fas fa-home"></i>Home</a></li>
                <li class="nav-item" style=" color: white">
                    <sec:authorize access="isAuthenticated()">
                        <c:set var="username">
                            <sec:authentication property="principal.username"/>
                        </c:set>
                        <a href="/profile/${username}"><i class="fa fa-user-circle">${username}</i></a>
                    </sec:authorize>
                </li>
                <li class="nav-item"><a href="/products" class="nav-link"><i class="fas fa-coffee"></i>Products</a>
                </li>
<%--                <li class="nav-item"><a href="/favorites" class="nav-link"><i class="fas fa-star"></i>Favorites</a>--%>
<%--                </li>--%>
                <li class="nav-item"><a href="/user/register" class="nav-link"><i class="fa fa-address-card"></i>Sign in</a>
                </li>
                <li class="nav-item"><a href="/checkout" class="nav-link"><i class="fas fa-star"></i>Checkout</a>
                </li>
                <li class="nav-item">
                    <sec:authorize access="hasAuthority('ADMIN')">
                        <a href="/admin" class="nav-link"><i class="fa fa-gears"></i>Admin</a>
                    </sec:authorize>
                </li>
                <li class="nav-item">
                    <sec:authorize access="isAuthenticated()">
                        <a class="nav-link" href="/login/logout">Logout</a>
                    </sec:authorize>
                </li>

            </ul>

        </div>
    </div>
</header>

<body>

