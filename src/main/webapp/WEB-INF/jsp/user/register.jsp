<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../include/header.jsp"/>
<link rel="stylesheet" href="../../../pub/css/register.css">


<!-- SignIn/Up -->
<div class="container2">
    <div class="buttons">
        <a href="/login/login">
            <button class="signin-btn">Sign Up</button>
        </a>
    </div>
    <div class="form-bg"></div>

    <c:if test="${empty form.id}">
        <h1 class="heading">
            <span class="heading-span-1">Sign Up</span>
        </h1>
    </c:if>

    <c:if test="${not empty form.id}">
        <h1 class="heading">
            <span class="heading-span-1">Edit User</span>
        </h1>
    </c:if>

    <form action="/user/registerSubmit" method="get" class="form sign-in">
        <input type="hidden" name="id" value="${form.id}">

        <!-- Element 1 -->
        <div class="form-input-wrapper">
            <input
                    autocomplete="off"
                    type="text"
                    name="firstName"
                    class="form-input"
                    id="firstNameId"
                    placeholder="First Name"
                    value="${form.firstName}">
            <c:forEach items='${bindingResult.getFieldErrors("firstName")}' var="error">
                <div style="color:red;">${error.getDefaultMessage()}</div>
            </c:forEach>
        </div>

        <!-- Element 2 -->
        <div class="form-input-wrapper">
            <input
                    autocomplete="off"
                    type="text"
                    name="lastName"
                    class="form-input"
                    id="lastNameId"
                    placeholder="Last Name"
                    value="${form.lastName}">
            <c:forEach items='${bindingResult.getFieldErrors("lastName")}' var="error">
                <div style="color:red;">${error.getDefaultMessage()}</div>
            </c:forEach>
        </div>

        <!-- Element 3 -->
        <div class="form-input-wrapper">
            <input
                    autocomplete="off"
                    type="text"
                    name="email"
                    class="form-input"
                    id="emailId"
                    placeholder="Email Address"
                    value="${form.email}">
            <c:forEach items='${bindingResult.getFieldErrors("email")}' var="error">
                <div style="color:red;">${error.getDefaultMessage()}</div>
            </c:forEach>
        </div>
        <!-- Element 4 -->
        <div class="form-input-wrapper">
            <input
                    autocomplete="off"
                    type="password"
                    name="password"
                    class="form-input"
                    id="passwordId"
                    placeholder="Password"
                    value="${form.password}">
            <c:forEach items='${bindingResult.getFieldErrors("password")}' var="error">
                <div style="color:red;">${error.getDefaultMessage()}</div>
            </c:forEach>
        </div>
        <!-- Element 5 -->
        <div class="form-input-wrapper">
            <input
                    autocomplete="off"
                    type="password"
                    name="confirmPassword"
                    class="form-input"
                    id="confirmPasswordId"
                    placeholder="Confirm Password"
                    value="${form.confirmPassword}">
            <c:forEach items='${bindingResult.getFieldErrors("confirmPassword")}' var="error">
                <div style="color:red;">${error.getDefaultMessage()}</div>
            </c:forEach>

        </div>
        <input type="submit" value="Submit" class="form-btn"/>
    </form>
</div>
</div>

<c:if test="${bindingResult.hasErrors()}">
    <br>

    <c:forEach items="${bindingResult.getAllErrors()}" var="error">
        <div style="color:red;">${error.getDefaultMessage()}</div>
    </c:forEach>
</c:if>

</body>

<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
