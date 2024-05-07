<%-- 
    Document   : purchase
    Created on : May 7, 2024, 10:17:05 AM
    Author     : yashc
--%>
<%@page import="dto.Customer"%>
<%
    String name = request.getParameter("name");
    String mrp = request.getParameter("mrp");
    Customer c = (Customer)session.getAttribute("currentCustomer");
      if (c == null) {
       response.sendRedirect("home.jsp");
    }
   
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Purchase Page</title>
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

        <!--Customer purchase starts-->
        <form method="post" action="customerPurchaseServlet" id="reg-customer"  >
            <div class="container mt-5   primary-color">
                <div class="card text-center">
                    <div class="card-header primary-background">
                        <font style="color: white">Provide Details</font>
                    </div>


                    <div class="card-body primary-color">
                        
                         <div class="form-group text-left">
                            <label for="#" class="text-left">Customer ID</label>
                            <input name="c_id" type="number" class="form-control" value=<%=c.getId()%>  readonly>
                        </div>
                        
                        <div class="form-group text-left">
                            <label for="#" class="text-left">Product Name</label>
                            <input name="p_name" type="text" class="form-control"  value=<%= name%> maxlength="50" readonly>
                        </div>


                        <div class="form-row mt-3 text-left">
                            <div class="form-group col-md-6 ">
                                <label for="inputEmail4">Qunatity</label>
                                <input name="p_qnty" type="number" class="form-control"  placeholder="Enter Your Quantity" required>

                            </div>
                            <div class="form-group col-md-6">
                                <label for="#">Product MRP</label>

                                <input name="p_mrp" type="text" class="form-control" value=<%= mrp%> required maxlength="10" readonly >
                            </div>
                        </div>
                        <div class="form-row mt-3 text-left">
                            <div class="form-group col-md-6 ">
                                <label>Pricing</label>
                                <input name="p_pricing" type="text" class="form-control" placeholder="Enter Your Total"  required maxlength="20">

                            </div>



                        </div>




                    </div>
                </div>

                <div class="card-footer  text-left mt-4">
                    <div class="container text-center" id="loader" style="display: none;">
                        <span class="fa fa-refresh fa-spin fa-3x"></span>
                        <h3>Please Wait...</h3>
                    </div>
                    <button  type="submit" class="submit-btn btn btn-primary">Click here for Shipping</button>
                </div>

            </div>
        </div>
    </div>
</div>
</form>
<!--Customer purchase ends-->
</body>
</html>
