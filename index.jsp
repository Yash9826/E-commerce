<%-- 
    Document   : index
    Created on : May 6, 2024, 8:25:22 PM
    Author     : yashc
--%>

<%@page import="dto.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <!--bootstrap css link-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/myCss.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!--footer icon link-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        
        
    </head>
    <body>
        
<!--    including normal navbar which is accesible to all-->
        <%@include file="normal_navbar.jsp" %>
        
        
         <!--customer login starts-->
        <form method="POST" action="customerLoginServlet">
            <div class="container mt-5  primary-color ">
                <div class="card text-center">
                    <div class="card-header primary-background">
                        <font style="color: white">Customer Login</font>
                    </div>

                    <%
                        Message m = (Message) session.getAttribute("msg");
                        if (m != null) {
                    %>

                    <div class="alert <%= m.getCssClass()%>"  role="alert">
                        <%= m.getContent()%>
                    </div>

                    <%
                            session.removeAttribute("msg");
                        }
                    %>

                    <div class="card-body primary-color">

                        <div class="form-group text-left">
                            <label for="exampleInputEmail1">Email address</label>
                            <input name="customer_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your Email">
                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>
                        <div class="form-group text-left">
                            <label for="exampleInputPassword1">Password</label>
                            <input name="customer_password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter Your Password">
                        </div>
                        <div class="card-footer  text-left mt-4">
                            <button  type="submit" class="btn btn-primary">Login</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <!--customer login ends-->
        
        
        
        <!--bootstrap jquery,javascript link-->
        <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        
    </body>
</html>
