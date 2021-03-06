<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<jsp:include page="include/header.jsp"/>


<link href="../../pub/css/checkout.css" rel="stylesheet"/>
<div class="contained">
    <div class="card">
        <button class="proceed"><svg class="sendicon" width="24" height="24" viewBox="0 0 24 24">
            <path d="M4,11V13H16L10.5,18.5L11.92,19.92L19.84,12L11.92,4.08L10.5,5.5L16,11H4Z"></path>
        </svg></button>
        <img src="https://seeklogo.com/images/V/VISA-logo-62D5B26FE1-seeklogo.com.png" class="logo-card">
        <label>Card number:</label>
        <input id="user" type="text" class="input cardnumber"  placeholder="1234 5678 9101 1121">
        <label>Name:</label>
        <input class="input name"  placeholder="Name on Card">
        <label class="toleft">CCV:</label>
        <input class="input toleft ccv" placeholder="321">
    </div>
    <div class="receipt">
        <div class="col"><p>Cost:</p>
            <h2 class="cost">$400</h2><br>
            <p>Name:</p>
            <h2 class="seller">Tea Time</h2>
        </div>
        <div class="col">
            <p>Bought Items:</p>
            <h3 class="bought-items">ItemNamePlaceholder</h3>
            <p class="bought-items description">Desc</p>
            <p class="bought-items price">$200 (50% discount)</p><br>
        </div>
    </div>
</div>


<!-- Footer -->
<jsp:include page="include/footer.jsp" />

</html>