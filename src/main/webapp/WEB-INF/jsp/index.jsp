<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<jsp:include page="include/header.jsp"/>

<!-- Internal Style -->
<style>
    h2 {
        color: white;
        box-shadow: black;
    }
</style>

<div class="con">
    <section class="wrapper">
        <div class="banner">
            <h1 class="banner-text">Welcome to Tea Time</h1>
        </div>
        <!-- Original Teas -->
        <nav class="navbars">
            <ul class="nav-listt">
                <li class="nav-itemlist">
                    <a href="#" class="nav-linklist">Original Teas</a>
                    <ul class="dropdown">
                        <li class="dropdown-item">
                            <a href="#" class="dropdown-link">Black Tea</a>
                            <p>
                                Our black teas are fully oxidized before being processed and dried, which gives it our
                                bold signature profile.
                            </p>
                        </li>
                        <li class="dropdown-item">
                            <a href="#" class="dropdown-link">Green Tea</a>
                            <p>
                                Our mild green teas have a slight toasted taste with lots of antioxidants.
                            </p>
                        </li>
                        <li class="dropdown-item">
                            <a href="#" class="dropdown-link">White Tea</a>
                            <p>
                                While low in caffeine this mild tea has sweet hints of honey.
                            </p>
                        </li>
                    </ul>
                </li>
                <!-- Specialty Teas -->
                <li class="nav-itemlist">
                    <a href="#" class="nav-linklist">Specialty Teas</a>
                    <ul class="dropdown">
                        <li class="dropdown-item">
                            <a href="#" class="dropdown-link">Chai</a>
                            <p>
                                This tea is sweet and spicy, renowned for its fragrant aroma.
                            </p>
                        </li>
                        <li class="dropdown-item">
                            <a href="#" class="dropdown-link">Hibiscus</a>
                            <p>
                                This almost fruity tea has a great sweet armoa of flowers and has tarty hints to it.
                            </p>
                        </li>
                        <li class="dropdown-item">
                            <a href="#" class="dropdown-link">Blueberry</a>
                            <p>
                                Our signature blueberry tea has hints of fruity blueberry sweetness and smells delicous.
                            </p>
                        </li>
                        <li class="dropdown-item">
                            <a href="#" class="dropdown-link">Orange</a>
                            <p>
                                This tea has slight hints of orange smell and taste.
                            </p>
                        </li>
                        <li class="dropdown-item">
                            <a href="#" class="dropdown-link">Lemon</a>
                            <p>
                                This tea has hints of lemon and honey and is great for colds.
                            </p>
                        </li>
                    </ul>
                </li>
                <!-- Other Beverages -->
                <li class="nav-itemlist">
                    <a href="#" class="nav-linklist">Other Beverages</a>
                    <ul class="dropdown">
                        <li class="dropdown-item">
                            <a href="#" class="dropdown-link">Original Hot Chocolate</a>
                            <p>
                                This hot chocolate is a thicker, richer beverage made of melted, solid chocolate. Blend
                                with your choice of milk/cream/water for it's
                                creamier and it tastes very much like you're drinking a chocolate bar</p>
                        </li>
                        <li class="dropdown-item">
                            <a href="#" class="dropdown-link">White Hot Chocolate</a>
                            <p>
                                This hot chocolate is a thicker beverage made of melted, solid white chocolate. Blend
                                with your choice of milk/cream/water for it's
                                creamier and it tastes very much like you're drinking a chocolate bar</p>
                            </p>
                        </li>
                    </ul>
                </li>
            </ul>
            <div class="dropdown-bg"></div>
        </nav>
    </section>
</div>

<!-- Radio/ Checkbox plus inline Css-->
<form style="display:flex;position:fixed;top:50rem;left:20rem;">
    <h2><p style="left:10rem;">Please Choose Your Favorite Type of Tea </p>&nbsp;</h2>
    <h3><input type="checkbox" name="Black">&nbsp; Black &nbsp;</h3>
    <h3><input type="checkbox" name="Green">&nbsp; Green &nbsp;</h3>
    <h3><input type="checkbox" name="White">&nbsp; White &nbsp;</h3>
    <input type="submit" value="Submit" style="width: 80px; height: 30px"/>
</form>
<form style="display:flex;position:fixed;top:52rem;left:30rem;">
    <h2><p>Vote for our next new tea! &nbsp;</h2>
    <h3><input type="radio" value=1>&nbsp; Oolong &nbsp;</h3>
    <h3><input type="radio" value=2>&nbsp; Matcha &nbsp;</h3>
    <input type="submit" value="Submit">
    </p>
</form>


<jsp:include page="include/footer.jsp"/>