<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<% 
	LocalDateTime currentTime = LocalDateTime.now();
   	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
    String formattedDateTime = currentTime.format(formatter);
    						
   %>






<!DOCTYPE html>
<html lang="en">

<head>
	<style type="text/css">
		thead {
			background-color: #0095FF !important;
		}
		tr:nth-child(even){
			background-color:#202020;
		}
		
	</style>

	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>


	<!-- ASSETS -->
	<!-- ASSETS -->
	<script src="./assets/chart.min.js" type="text/javascript"></script>
	<link rel="stylesheet" href="css/customers.css">
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
				DASHBOARD / OVERVIEW
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
        		<a href="add_products.jsp" class="color dropdown-list"><i class="fa fa-fw fa-briefcase"></i> Add Products</a>
        		<a href="products_details.jsp" class="color dropdown-list"><i class="fa fa-fw fa-briefcase"></i> Products details</a>
        	</div>
        </div>
        
        <!-- employees -->
        <!-- employees -->
        <div class="dropdown">
        	<a href="" class="color dropdown-toggle"><i class="fa fa-fw fa-briefcase"></i>Employees</a>
        	<div class="dropdown-contents pl-4">
        		<a href="add_employee.jsp" class="color dropdown-list"><i class="fa fa-fw fa-briefcase"></i> Add Employee</a>
        		<a href="employee_details.jsp" class="color dropdown-list"><i class="fa fa-fw fa-briefcase"></i> Employees Details</a>
        	</div>
        </div>
        
        <!-- point of sales -->
       <!-- point of sales -->
       <div class="dropdown">
       		 <a href="" class="color dropdown-toggle"><i class="fa fa-eye"></i> Point of Sale</a>
       		 <div class="dropdown-contents pl-4">
       		 		 <a href="add_sales.jsp" class="color dropdown-list 	"><i class="fa fa-cart-plus"></i>Make Sale</a>
       		 		  <a href="sales_details.jsp" class="color dropdown-list"><i class="fa fa-cart-plus"></i>Sales Details</a>
       		 </div>
       </div>
       
       <!-- ORDERS -->
       <!-- ORDERS -->
        
        <div class="dropdown">
        	<a href="" class="color dropdown-toggle"><i class="fa fa-fw fa-briefcase"></i>Orders</a>
        	<div class="dropdown-contents pl-4">
        		<a href="add_order.jsp" class="color dropdown-list"><i class="fa fa-fw fa-briefcase"></i> Add order</a>
        		<a href="order_details.jsp" class="color dropdown-list"><i class="fa fa-fw fa-briefcase"></i> Order Details</a>
        		<a href="orders_pending.html" class="color dropdown-list"><i class="fa fa-fw fa-briefcase"></i> Pending orders</a>

        	</div>
        </div>
       
        
        <!-- employees -->
       <!-- employees -->
        <a href="" class="color dropdown-toggle"><i class="fa fa-fw fa-briefcase"></i> Stores</a>
        
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
        
       
        <a href="" class="color "><i class="fa fa-book"></i> Report</a>
        <!-- logout -->
       <a href="" class="color "><i class="fa fa-fw fa-power-off"></i> Logout</a>
    </div>

	<div class="pageContent">
	
		<div class="p-4 mb-4 ml-4 ">
			<div class="d-flex">
				<h4 class="text-white mt-3">
					 Product Details
				</h4>
				<a href="add_products.jsp">
					<button class="btn btn-primary ml-4"><i class="fa fa-plus"></i></button>
				</a>
				 
			</div>
			<hr>
		</div>
		
		
		<div class="containe">
			<table class="table table-striped" >
				<thead>
					<tr>
						<th class="text-white ">Product ID</th>
						<th class="text-white ">Product Name</th>
						<th class="text-white ">Manufacturer</th>
						<th class="text-white ">Year Model</th>
						<th class="text-white ">Product Category</th>
						<th class="text-white ">Price</th>
						<th class="text-white ">Quantity</th>
						<th class="text-white ">Total Amount</th>
						<th class="text-white ">Date/Time</th>
						<th class="text-white ">Action</th>
					</tr>
				</thead>
				
				<tbody>
				<%
					//database connection
					//database connection
					//database connection
        	//database connection
            Class.forName("org.postgresql.Driver");
            Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "root");
			
            //Creating statement
            //Creating statement
            Statement statement = conn.createStatement();
            ResultSet select_query= statement.executeQuery("SELECT * FROM products");
            
           
            while(select_query.next()){
				%>
				 
					<tr class="text-white">
						<td><%= select_query.getString("id") %></td>
						<td><%= select_query.getString("P_Name") %></td>
						<td><%= select_query.getString("P_Manufacturer") %></td>
						<td><%= select_query.getString("P_Y_Model") %></td>
						<td><%= select_query.getString("P_Category") %></td>
						<td><%= select_query.getString("P_Price") %></td>
						<td><%= select_query.getString("P_Quantity") %></td>
						<td><%= select_query.getString("p_t_amount") %></td>
						<td>
							<%= formattedDateTime %>
						</td>
						<td class="d-flex">
						<a href=""><button class="btn btn-primary"><i class="fa fa-edit "></i></button></a>
						<a href="product_details.jsp?id=<%= select_query.getString("id") %>"><button class="btn btn-danger "><i class="fa fa-trash"></i></button></a></td>
						
					</tr>
				<% 
            }
            %>
				</tbody>
			</table>
		</div>
	</div>

	<!-- SCRIPTS -->
	<!-- SCRIPTS -->
	<script src="./assets/jquery-3.6.0.min.js"></script>
	<script src="./assets/bootstrap.js"></script>
	<script src="./assets/all.js"></script>
	<script type="chart.min.js"></script>
</body>

</html>