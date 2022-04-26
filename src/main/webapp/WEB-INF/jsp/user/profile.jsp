<!-- Navigation Menu -->
<jsp:include page="../include/header.jsp"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="../../pub/css/profile.css"/>


<style>
    h3 {
        color: white;
        box-shadow: black;
    }

    .form-input-wrapper {
        margin: 1.5rem 0;
        box-shadow: 0.5rem 0.5rem 0.5rem rgb(0, 0, 0);
        border-radius: 5rem;
        position: relative;
    }

    .form {
        display: flex;
        flex-direction: column;
        z-index: 100;
    }

    .container2 {
        display: flex;
        flex-direction: column;
        top: 10rem;
        left: 55rem;
        position: fixed;
    }


</style>

<div class="containerp">
    <div class="card" style="width:310px">
        <img class="card-img-center" src="/../pub/images/profile.jpg" alt="Card image" style="width:100%">
        <div class="card-body">
            <h4 class="card-title">${firstName}</h4>
            <p class="card-text">${lastName}</p>
            <a href="/favorites" class="btn btn-primary">Favorite Teas</a>
            <div class="btn btn-primary">Edit</div>
            <br>
            <br>
            <input class="form-control" type="email" placeholder="${email}" aria-label="Disabled input example"
                   disabled>
            <br>
            <input class="form-control" type="text" placeholder="${phone}" aria-label="Disabled input example" disabled>
        </div>
    </div>
</div>


<!-- Profile Info -->
<div class="container2">
    <h1 class="heading">
        <span class="heading-span-1"><h3>Mailing Address</h3></span>
    </h1>
    <div class="form-bg"></div>
    <form class="form sign-in">

        <div class="form-input-wrapper">

            <label class="form-label"><H3>Address</H3></label>
            <input
                    aria-label="Disabled input example" disabled
                    autocomplete="off"
                    type="text"
                    name="address"
                    class="form-input"
                    id="address"
                    placeholder="${address}"/>
        </div>

        <div class="form-input-wrapper">

            <label class="form-label"><H3>City</H3></label>
            <input
                    aria-label="Disabled input example" disabled
                    autocomplete="off"
                    type="text"
                    name="city"
                    class="form-input"
                    id="city"
                    placeholder="${city}"/>/>
        </div>
        <div class="form-input-wrapper">

            <label class="form-label"><H3>State</H3></label>
            <select id="states" class="form-input" aria-label="Disabled input example" disabled>
                <option selected>${state}</option>
                <option>Alabama</option>
                <option>Alaska</option>
                <option>Arizona</option>
                <option>Arkansas</option>
                <option>California</option>
                <option>Colorado</option>
                <option>Connecticut</option>
                <option>Delaware</option>
                <option>Florida</option>
                <option>Georgia</option>
                <option>Hawaii</option>
                <option>Idaho</option>
                <option>Illinois</option>
                <option>Indiana</option>
                <option>Iowa</option>
                <option>Kansas</option>
                <option>Kentucky</option>
                <option>Louisiana</option>
                <option>Maine</option>
                <option>Maryland</option>
                <option>Massachusetts</option>
                <option>Michigan</option>
                <option>Minnesota</option>
                <option>Mississippi</option>
                <option>Missouri</option>
                <option>Montana</option>
                <option>Nebraska</option>
                <option>Nevada</option>
                <option>New Hampshire</option>
                <option>New Jersey</option>
                <option>New Mexico</option>
                <option>New York</option>
                <option>North Carolina</option>
                <option>North Dakota</option>
                <option>Ohio</option>
                <option>Oklahoma</option>
                <option>Oregon</option>
                <option>Pennsylvania</option>
                <option>Rhode Island</option>
                <option>South Carolina</option>
                <option>South Dakota</option>
                <option>Tennessee</option>
                <option>Texas</option>
                <option>Utah</option>
                <option>Vermont</option>
                <option>Virginia</option>
                <option>Washington</option>
                <option>West Virginia</option>
                <option>Wisconsin</option>
                <option>Wyoming</option>
            </select>
        </div>

        <div class="form-input-wrapper">

            <label class="form-label"><H3>Zip</H3></label>
            <input
                    aria-label="Disabled input example" disabled
                    autocomplete="off"
                    type="text"
                    name="zip"
                    class="form-input"
                    id="zip"
                    placeholder="${zip}"/>/>
        </div>

        <a href="/profile/address"><input type="submit" value="Edit" class="form-btn"/></a>
    </form>
</div>
</div>


</div>
</div>
</div>

</body>

<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>

</html>