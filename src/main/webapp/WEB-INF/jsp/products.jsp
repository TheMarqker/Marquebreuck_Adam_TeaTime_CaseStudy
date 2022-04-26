<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Navigation Menu -->
<jsp:include page="include/header.jsp"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
      integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<link rel="stylesheet" href="../../../pub/css/shop.css"/>
<style>
    h3 {
        z-index: 2;
    }
</style>

<div class="container" style="display:flex;position:absolute;top:0rem;left:30rem;" id="test">
    <div id="notlimited">
        <h1 id="poductheader" style="display:flex;position:absolute;top:5rem;left:30rem;z-index:5;"> Shop Our Selection
            of Premium Teas </h1>
        <div id="test4">
            <div class="product-content">
                <table class="table">
                    <tr>
                        <th>Image</th>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Description</th>
                    </tr>
                    <c:forEach items="${products}" var="product">
                    <option value="${product.id}"></option>
                    <tr>

                        <td><img class="product-img" src="../../pub/images/${product.imageUrl}" alt=""></td>
                        <td>${product.name}
                            <div class="rating">
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="far fa-star"></i></span>
                            </div>
                        </td>
                        <td><a href="#" class="product-name">Pack of 10</a>
                            <p class="product-price">$${product.price}</p>
                            <p class="product-price">$ 9.25</p></td>
                        <td>
                            <div class="product-info-top"><h3>${product.description}</h3></div>
                            <input type="submit" value="Buy" class="btn btn-primary btn-sm mb-3"></td>

                        </td>
            </div>
        </div>

        </tr>
    </div>
    </c:forEach>
    </table>
</div>


<!-- Footer -->
<jsp:include page="include/footer.jsp"/>