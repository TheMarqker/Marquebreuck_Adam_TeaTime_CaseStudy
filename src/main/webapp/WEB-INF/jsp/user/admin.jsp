<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../include/header.jsp"/>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
      integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<style>
    h3 {
        color: white;
        box-shadow: black;
    }
</style>

<div class="container" style="width:40vw;display:flex;position:fixed;top:20rem;left:18rem;" id="test">
    <div style="align-self: center; text-align: center;">
        <br>
        <form action="/admin" method="GET">
            <h3> Lookup Customer by First Name : </h3><input type="text" name="firstName" value="${firstName}">
            <button type="submit" class="btn btn-info col-2">Search</button>
        </form>

        <br>

        <c:if test="${not empty firstName}">
            <h3>Found ${usersModelKey.size()}</h3>
            <br>
        </c:if>


        <table class="table table-bordered table-striped">
            <thead class="thead-dark">
            <tr scope="row">
                <th><h3>Email</h3></th>
                <th><h3>First Name</h3></th>
                <th><h3>Last Name</h3></th>
                <th><h3>Address</h3></th>
                <th><h3>Phone</h3></th>

                <th><h3>Edit</h3></th>
                <th><h3>Delete</h3></th>
            </tr>
            </thead>
            <c:forEach items="${usersModelKey}" var="user">
                <tr scope="row">
                    <td style="background-color: rgb(184, 184, 184);">${user.email}</td>
                    <td style="background-color: rgb(184, 184, 184);">${user.firstName}</td>
                    <td style="background-color: rgb(184, 184, 184);">${user.lastName}</td>
                    <td style="background-color: rgb(184, 184, 184);">${user.address}</td>
                    <td style="background-color: rgb(184, 184, 184);">${user.phone}</td>
                    <td style="background-color: rgb(184, 184, 184);"><a class="btn btn-primary btn-sm mb-3"
                                                                         href="/user/edit/${user.id}">Edit</a></td>
                    <td style="background-color: rgb(184, 184, 184);"><a class="btn btn-danger btn-sm"
                                                                         href="/user/delete/${user.id}">Delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>


<!-- Add products table -->
<div class="tainer" style="width:40vw;position:fixed;top:20rem;left:85rem;">

    <h3><p class="h4 mb-4">Add Products</p></h3>

    <form action="/admin/productSubmit" method="GET">

        <input type="text" name="productName" value="${tea.productName}" class="form-control mb-4 col-4"
               placeholder="Product Name">

        <input type="text" name="description" value="${tea.description}" class="form-control mb-4 col-4"
               placeholder="Description">


        <input type="text" name="price" value="${tea.price}" class="form-control mb-4 col-4" placeholder="Price">


        <input type="text" name="imageURL" value="${tea.imgUrl}" class="form-control mb-4 col-4"
               placeholder="Picture link">

        <button type="submit" class="btn btn-info col-2">Save</button>
    </form>
</div>

<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>