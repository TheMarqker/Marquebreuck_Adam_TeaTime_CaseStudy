<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<jsp:include page="../include/header.jsp"/>
<link rel="stylesheet" href="../../pub/css/register.css">

<!-- SignIn/Up -->
<div class="container2">
    <h1 class="heading">
        <span class="heading-span-1">Sign In</span>
    </h1>
    <div class="buttons">
        <a href="user/register">
            <button class="signup-btn">SignU In</button>
        </a>
    </div>
    <div class="form-bg"></div>
    <form action="/login/loginSubmit" method="POST" class="form sign-in">

        <div class="form-input-wrapper">
            <input
                    autocomplete="off"
                    type="text"
                    name="username"
                    class="form-input"
                    id="email"
                    placeholder="Email Address"/>
        </div>

        <div class="form-input-wrapper">
            <input
                    autocomplete="off"
                    type="text"
                    name="password"
                    class="form-input"
                    id="password"
                    placeholder="Password"/>
        </div>

        <input type="submit" value="Submit" class="form-btn"/>
    </form>
</div>
</div>

</body>

<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>

</html>