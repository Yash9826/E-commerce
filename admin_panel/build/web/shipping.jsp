<%-- 
    Document   : shipping
    Created on : May 7, 2024, 12:01:15 PM
    Author     : yashc
--%>
<%@page import="dto.Customer"%>
<%@page import="dao.Product"%>
<%
   Product p = (Product)session.getAttribute("currentProduct");
   Customer c = (Customer)session.getAttribute("currentCustomer");
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shipping Page</title>
    
        <!--bootstrap css link-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/myCss.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!--footer icon link-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
    <body>
        <!--importing customer  navbar-->
        <%@include file="customer_navbar.jsp" %>

        <!--Customer purchase shipping starts-->
        <form method="post" action="customerShippingServlet" id="reg-shipping"  >
            <div class="container mt-5   primary-color">
                <div class="card text-center">
                    <div class="card-header primary-background">
                        <font style="color: white">Provide Shipping Details</font>
                    </div>


                    <div class="card-body primary-color">
                        
                         <div class="form-group text-left">
                            <label for="#" class="text-left">Address</label>
                            <input name="address" type="text" class="form-control" placeholder="Enter Address"  maxlength="100">
                        </div>
                        
                        <div class="form-group text-left">
                            <label for="#" class="text-left">City</label>
                            <input name="city" type="text" class="form-control"  placeholder="Enter City" maxlength="45" >
                        </div>


                        <div class="form-row mt-3 text-left">
                            <div class="form-group col-md-6 ">
                                <label for="inputEmail4">Pincode</label>
                                <input name="pincode" type="text" class="form-control"  placeholder="Enter Your Nearby Pincode" maxlength="8" required>

                            </div>
                           
                        </div>
                         
                                <div class="form-row mt-3 text-left">
                            <div class="form-group col-md-6 ">
                                <label for="inputEmail4">Customer ID</label>
                                <input name="customer_id" type="number" class="form-control"  value="<%=c.getId() %>"    readonly>

                            </div>
                           
                        </div>
                      </div>
                </div>

                <div class="card-footer  text-left mt-4">
                    <div class="container text-center" id="loader" style="display: none;">
                        <span class="fa fa-refresh fa-spin fa-3x"></span>
                        <h3>Please Wait...</h3>
                    </div>
                    <button  type="submit" class="submit-btn btn btn-primary">Order!!</button>
                </div>

            </div>
        </div>
    </div>
</div>
</form>
<!--Customer purchase shipping ends-->
    </body>
</html>
