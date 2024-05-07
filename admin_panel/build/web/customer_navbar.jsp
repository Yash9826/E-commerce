<!--Navbar starting-->

<!-- Navbar As a heading -->
<div class="container py-3 py-lg-3  ">
    <div class="row ">
        </br>
        <div class="col-sm-8 primary-color"><font color="dodgerblue">
            <h2><span class="fas fa-shopping-cart mt-4 ">
                    <b>Shopping...</br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </b></span></h2></font>
        </div>

        <div class=" input-group col-sm-4 mt-2 py-4 " >

           
                
            <form method="post" action="searchCustomerServlet">
                <input type="text" name ="city" class="form-control text-left" placeholder="Search" >
            <div class="input-group-append">
                <button class="btn inline-block " type="submit">
                        <i class="fa fa-search"></i>
                </button>
            </div>
            </form>


        </div>
    </div>
</div>
<!--navbar haeding ending-->


<!--navbar content starts-->
<nav class="navbar navbar-expand-lg navbar-dark primary-background ">
    <div class="container">

        <div class="collapse navbar-collapse  " id="navbarSupportedContent">
            <ul class="navbar-nav">


                <li class="nav-item active">
                    <a class="nav-link" href="home.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;HOME <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="product.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PURCHASE <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PRODUCTS DETAILS <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="customerLogoutServlet">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LOGOUT <span class="sr-only">(current)</span></a>

                </li>


            </ul>






        </div>
    </div>

</nav>
<!--navbar content ends-->













