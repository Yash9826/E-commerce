<%-- 
    Document   : product
    Created on : May 7, 2024, 8:50:47 AM
    Author     : yashc
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="db.ConnectionProvider"%>
<%@page import="dao.CustomerDAO"%>
<%@page import="dao.Product"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Products page</title>
        <!--bootstrap css link-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/myCss.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!--footer icon link-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    </head>
    <body>
        <!--importing customer navbar-->
        <%@include file="customer_navbar.jsp" %>

        <div class="container mt-5">
            <div class="card-deck">
                <div class="card">
                    <img class="card-img-top" src="img/bottel.jpg" alt="Card image cap" style="height: 300px;width: 277px;">
                    <div class="card-body">
                        <h5 class="card-title">Bottle</h5>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">Last updated 3 mins ago</small>
                    </div>
                    <a href="purchase.jsp?name=bottle&mrp=250"  > <button  type="submit" class="submit-btn btn btn-primary">Buy</button></a>                        
                </div>
                <div class="card">
                    <img class="card-img-top" src="img/desk.jpg" alt="Card image cap" style="height: 300px;width: 277px;">
                    <div class="card-body">
                        <h5 class="card-title">Desk</h5>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">Last updated 3 mins ago</small>
                    </div>
                    <a href="purchase.jsp?name=desk&mrp=700"  > <button  type="submit" class="submit-btn btn btn-primary">Buy</button></a>                        
                </div>
                <div class="card">
                    <img class="card-img-top" src="img/laptop.jpg" alt="Card image cap" style="height: 300px;width: 277px;">
                    <div class="card-body">
                        <h5 class="card-title">Laptop</h5>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">Last updated 3 mins ago</small>
                    </div>
                    <a href="purchase.jsp?name=laptop&mrp=56000"  > <button  type="submit" class="submit-btn btn btn-primary">Buy</button></a>                        
                </div>
            </div>
            <div class="card-deck mt-5">
                <div class="card">
                    <img class="card-img-top" style="height: 300px;width: 277px;" src="img/watch.jpeg" alt="Card image cap" style="height: 300px;width: 277px;">
                    <div class="card-body">
                        <h5 class="card-title">Watch</h5>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">Last updated 3 mins ago</small>
                    </div>
                    <a href="purchase.jsp?name=watch&mrp=800"  > <button  type="submit" class="submit-btn btn btn-primary">Buy</button></a>                        
                </div>
                <div class="card">
                    <img class="card-img-top" src="img/mobile.png" alt="Card image cap" style="height: 300px;width: 277px;">
                    <div class="card-body">
                        <h5 class="card-title">Mobile</h5>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">Last updated 3 mins ago</small>
                    </div>
                    <a href="purchase.jsp?name=mobile&mrp=12000"  > <button  type="submit" class="submit-btn btn btn-primary">Buy</button></a>                        
                </div>
                <div class="card">
                    <img class="card-img-top" src="img/speaker.jpg" alt="Card image cap" style="height: 300px;width: 277px;">
                    <div class="card-body">
                        <h5 class="card-title" >Speaker</h5>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted ">Last updated 3 mins ago</small>

                    </div>
                    <a href="purchase.jsp?name=speaker&mrp=18000" ><button  type="submit" class="submit-btn btn btn-primary text-center">Buy</button></a>                        

                </div>
            </div>
        </div>
    </body>
</html>
