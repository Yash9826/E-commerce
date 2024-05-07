<%-- 
    Document   : customer_register
    Created on : May 7, 2024, 6:53:29 AM
    Author     : yashc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Register</title>
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


        <!--Customer Register starts-->
        <form method="post" action="customerRegisterServlet" id="reg-customer"  >
            <div class="container mt-5   primary-color">
                <div class="card text-center">
                    <div class="card-header primary-background">
                        <font style="color: white">Register Here</font>
                    </div>


                    <div class="card-body primary-color">
                        <div class="form-group text-left">
                            <label for="#" class="text-left">Name</label>
                            <input name="customer_name" type="text" class="form-control"  placeholder="Enter Your Name" maxlength="50" required>
                        </div>


                        <div class="form-row mt-3 text-left">
                            <div class="form-group col-md-6 ">
                                <label for="inputEmail4">Email Id</label>
                                <input name="customer_email" type="email" class="form-control" id="inputEmail4" placeholder="Enter Your Email" required>
                                <small id="emailHelp" class="form-text text-muted text-left">We'll never share your email with anyone else.</small>

                            </div>
                            <div class="form-group col-md-6">
                                <label for="#">Mobile No.</label>
                                <input name="customer_mobileno" type="text" class="form-control"  placeholder="Enter Your Contact No." required maxlength="10" >
                            </div>
                        </div>
                        <div class="form-row mt-3 text-left">
                            <div class="form-group col-md-6 ">
                                <label>City</label>
                                <input name="customer_city" type="text" class="form-control"  placeholder="Enter your city" required maxlength="20">

                            </div>
                            
                            <div class="form-group col-md-6 ">
                                <label>Password</label>
                                <input id="myPass" name="customer_password" type="password" class="form-control"  placeholder="Enter Your Password" maxlength="8">
                                <!-- An element to toggle between password visibility -->

                                <!--<input type="checkbox" onclick="myFunction()">&nbsp;Show Password-->
                            </div>


                        </div>



                      
                    </div>
                </div>

                <div class="card-footer  text-left mt-4">
                    <div class="container text-center" id="loader" style="display: none;">
                        <span class="fa fa-refresh fa-spin fa-3x"></span>
                        <h3>Please Wait...</h3>
                    </div>
                    <button  type="submit" class="submit-btn btn btn-primary">Click here to Register</button>
                </div>

            </div>
        </div>
    </div>
</div>
</form>
        <!--Customer Register ends-->


<!--bootstrap jquery,javascript link-->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>



 
</body>
</html>
