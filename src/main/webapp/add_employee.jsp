<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>


	<!-- ASSETS -->
	<!-- ASSETS -->
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
			<H6 class="text-white mt-2 ml-3">
				Full Name
				</H5>
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

		<form>
			<div class="container p-4">

				<div>
					<h4 class="text-white ml-4">Add New Employee</h4>
				</div>
				<hr>

				<div class="row p-4">
					<div class="col-sm-6">

						<label class="text-white">First Name</label><br>
						<input class="customers_input" type="text" name="EFname" required><br><br>

						<label class="text-white">Last Name</label><br>
						<input class="customers_input" type="text"name="ELname" required><br><br>
						
						<label class="text-white">Gender</label><br>
						<select class="customers_input" name="Egender">
							<option>Male</option>
							<option>Female</option>
						</select><br><br>
					</div>



					<div class="col-sm-6">

						<label class="text-white">Phone</label><br>
						<input class="customers_input" type="number" name="Ephone" required><br><br>

						<label class="text-white">Email</label><br>
						<input class="customers_input" type="email" name="Eemail" required><br><br>

						<label class="text-white">Role</label><br>
						<input class="customers_input" type="text" name="Erole" required><br><br>
					</div>

					<div class="ml-auto mr-auto mt-4">
						<input class="btn btn-primary submit" value="Add Customer" type="submit" name="submit">
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
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>

<%
	//retrieving data from the input field
	//retrieving data from the input field
    String EFname = request.getParameter("EFname");
    String ELname = request.getParameter("ELname");
    String Egender = request.getParameter("Egender");
    String Ephone = request.getParameter("Ephone");
    String Eemail =request.getParameter("Eemail");
    String Erole = request.getParameter("Erole");
    
    LocalDateTime currentTime = LocalDateTime.now();
   	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
    String formattedDateTime = currentTime.format(formatter);

       if(request.getParameter("submit") != null){
    	   try {
           	//database connection
           	//database connection
               Class.forName("org.postgresql.Driver");
               Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "root");
               
               //creating sql statement
               //creating sql statement
               Statement statement = conn.createStatement();
               int insert_query = statement.executeUpdate("INSERT INTO employees(E_F_Name,E_L_Name, E_Gender,E_Phone,E_Email,E_Role,Date) VALUES ('"+EFname+"', '"+ELname+"', '"+Egender+"', '"+Ephone+"', '"+Eemail+"', '"+Erole+"', '"+ formattedDateTime +"')");
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