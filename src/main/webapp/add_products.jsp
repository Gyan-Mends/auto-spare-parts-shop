
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>


	<!-- ASSETS -->
	<!-- ASSETS -->
	<link rel="stylesheet" href="css/add_product.css">
	<link rel="stylesheet" href="css/admin_dashboard.css">
	<link rel="stylesheet" href="./assets/all.css">
	<link rel="stylesheet" href="./assets/bootstrap.css">

</head>

<body>
	<div class="topnav p-1">
		<div class="d-flex">
			<div class=logo>

			</div>

			<h5 class="text-white mt-2 ml-4">
				SPARE PARTS
			</h5>

			<p class="text-white mt-2 ml-4">
				<i class="fa fa-paw"></i>
				PRODUCTS || ADD PRODUCTS
			</p>

			<div class="profile">

			</div>
			<h6 class="text-white mt-2 ml-3">
				Full Name
				</h6>
		</div>
	</div>


	 <!-- side navigation bar -->
	 <!-- side navigation bar -->
    <div class="side_nav d-block">
        <a href="admin_dashboard.html" class="color"><i class="fa fa-paw"></i> Dashboard</a>
        
        <!-- products drop down -->
        <!-- products drop down -->
        <div class="dropdown">
        	<a href="" class="color dropdown-toggle"><i class="fa fa-fw fa-briefcase"></i> Products</a>
        	<div class="dropdown-contents pl-4">
        		<a href="add_products.html" class="color dropdown-list"><i class="fa fa-fw fa-briefcase"></i> Add Products</a>
        		<a href="products_details.html" class="color dropdown-list"><i class="fa fa-fw fa-briefcase"></i> Products details</a>
        	</div>
        </div>
       
       <!-- products categories -->
       <!-- products categories -->
       <div class="dropdown">
       		 <a href="" class="color dropdown-toggle"><i class="fa fa-cart-plus"></i> Categories</a>
       		 <div class="dropdown-contents pl-4">
       		 		 <a href="" class="color dropdown-list 	"><i class="fa fa-cart-plus"></i> Toyota</a>
       		 		  <a href="" class="color dropdown-list"><i class="fa fa-cart-plus"></i> Kia</a>
       		 		  <a href="" class="color dropdown-list"><i class="fa fa-cart-plus"></i> Kia</a>
       		 		  <a href="" class="color dropdown-list"><i class="fa fa-cart-plus"></i> Kia</a>
       		 </div>
       </div>
       
       <!-- employees -->
       <!-- employees -->
        <a href="" class="color dropdown-toggle"><i class="fa fa-fw fa-briefcase"></i> Stores</a>
        <div class="dropdown">
        	<a href="" class="color dropdown-toggle"><i class="fa fa-fw fa-briefcase"></i>Employees</a>
        	<div class="dropdown-contents pl-4">
        		<a href="add_employees.html" class="color dropdown-list"><i class="fa fa-fw fa-briefcase"></i> Add Employee</a>
        		<a href="employee_details.html" class="color dropdown-list"><i class="fa fa-fw fa-briefcase"></i> Employees Details</a>
        	</div>
        </div>
        
         <!-- employees -->
       <!-- employees -->
        <a href="" class="color dropdown-toggle"><i class="fa fa-fw fa-briefcase"></i> Stores</a>
        <div class="dropdown">
        	<a href="" class="color dropdown-toggle"><i class="fa fa-fw fa-briefcase"></i>Oders</a>
        	<div class="dropdown-contents pl-4">
        	<a href="orders_create.html" class="color dropdown-list"><i class="fa fa-fw fa-briefcase"></i> Add order</a>
        		<a href="order_completed.html" class="color dropdown-list"><i class="fa fa-fw fa-briefcase"></i> Completed orders</a>
        		<a href="orders_pending.html" class="color dropdown-list"><i class="fa fa-fw fa-briefcase"></i> Pending orders</a>
        	</div>
        </div>
        
        <!-- payments -->
       <!-- payments -->
       <div class="dropdown">
       		 <a href="" class="color dropdown-toggle"><i class="fa fa-eye"></i> Point of Sale</a>
       		 <div class="dropdown-contents pl-4">
       		 		 <a href="add_sales.html" class="color dropdown-list 	"><i class="fa fa-cart-plus"></i>Make Sale</a>
       		 		  <a href="sales_details.html" class="color dropdown-list"><i class="fa fa-cart-plus"></i>Sales Details</a>
       		 </div>
       </div>
        <a href="" class="color "><i class="fa fa-book"></i> Report</a>
        <a href="" class="color "><i class="fa fa-fw fa-power-off"></i> Logout</a>
    </div>


	<div class="pageContent">

		<form method="post" action="add_products.jsp">
			<div class="container p-4">

				<div>
					<h4 class="text-white ml-4">Add New Product Here</h4>
				</div><hr>

				<div class="row p-4">
					<div class="col-sm-6">
						<label class="text-white">Product Name</label><br>
						<input class="product_input" type="text" name="Pname"><br><br>

						<label class="text-white">Select Manufacturer</label><br>
						<select class="product_input" name="pmanufacturer">
							<option>Toyota </option>
							<option>BMW</option>
							<option>Opel</option>
							<option>Kia</option>
							<option>Ford</option>
						</select><br><br>

						<label class="text-white">Year Model</label><br>
						<input type="number" class="product_input" name="Pymodel"><br><br>

						
					</div>



					<div class="col-sm-6">
						<label class="text-white">Select Category</label><br>
						<select class="product_input" name="Pcategory">
							<option>Engine </option>
							<option>Tyre</option>
							<option>Wheels </option>
						</select><br><br>

						<label class="text-white">Price</label><br>
						<input class="product_input" type="number" name="Pprice"><br><br>

						<label class="text-white">Quantity</label><br>
						<input class="product_input" type="number" name="Pquantity"><br><br>
						
						<label class="text-white">Total Amount</label><br>
						<input class="product_input" type="number" name="Ptamount"><br><br>
					</div>

					<div class="ml-auto mr-auto mt-4">
						<input class="btn btn-primary submit" value="Insert Product" type="submit" name="submit">
					</div>
				</div>
			</div>
		</form>
	</div>





	<!-- SCRIPTS -->
	<!-- SCRIPTS -->
	<script src="./assets/jquery-3.6.0.min.js"></script>
	<script src="./assets/bootstrap.js"></script>
	<script src="./assets/all.js"></script>
	<script type="chart.min.js"></script>
</body>

</html>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
	//retrieving data from the input field
	//retrieving data from the input field
    String Pname = request.getParameter("Pname");
    String Pmanufacturer = request.getParameter("pmanufacturer");
    String Pymodel = request.getParameter("Pymodel");
    String Pcategory = request.getParameter("Pcategory");
    String Pprice =request.getParameter("Pprice");
    String Pquantity = request.getParameter("Pquantity");
    String Ptamount = request.getParameter("Ptamount");
  

       if(request.getParameter("submit") != null){
    	   try {
           	
       		//database connection
           	//database connection
               Class.forName("org.postgresql.Driver");
               Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "root");
               
               //creating sql statement
               //creating sql statement
               Statement statement = conn.createStatement();
               int insert_query = statement.executeUpdate("INSERT INTO products(P_Name, P_Manufacturer,P_Y_Model,P_Category,P_Price,P_Quantity,P_T_Amount) VALUES ('"+Pname+"', '"+Pmanufacturer+"', '"+Pymodel+"', '"+Pcategory+"', '"+Pprice+"', '"+Pquantity+"', '"+Ptamount+"')");
               if(insert_query>0) {
                  %>
                  		<script>
   						alert("Product has been added successfully");
   					</script>
                  <% 
               } else {
               	 %>
               		<script>
   						alert("Product has been added successfully");
   					</script>
               	<% 
               }
               conn.close();
       	
       } catch (Exception e) {
           out.println("Error: " + e);
       }
  
       }
 
%>
