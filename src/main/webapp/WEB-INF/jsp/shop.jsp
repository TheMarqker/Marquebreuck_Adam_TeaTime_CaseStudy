<!DOCTYPE html>
<html lang="en">
<jsp:useBean id="shop" class="com.example.tea_time.formbean.BookCart" scope="session"/>
<jsp:setProperty name="shop" property="*" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
      integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<head>
    <meta charset="UTF-8">
        <title>
                Buy My Books!
        </title>
</head>
    <body>
        <h1>What book do you want to buy?</h1>

        <form action="/shop1" method="GET">

            <input type="submit" value="Buy" > &nbsp; &nbsp;
            Electronics All-in-one for dummies<br> <br>
        </form>

         <form action="/shop2" method="GET">

                    <input type="submit" value="Buy" > &nbsp; &nbsp;
                  Networking  All-in-one for dummies<br> <br>
                </form>

                 <form action="/shop3" method="GET">

                            <input type="submit" value="Buy" > &nbsp; &nbsp;
                            Java All-in-one Desk reference for dummies<br> <br>
                        </form>

                        <br><h2>Your cart contains: </h2>

                        <jsp:getProperty name="shop" property="list" />

    </body>

</html>