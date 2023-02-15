<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%

//starting session
// starting session
		HttpSession Session = request.getSession();

//database connection
//database connection
//database connection
//database connection
Class.forName("org.postgresql.Driver");
Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "root");
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
<link rel="stylesheet" href="css/admin_dashboard.css">
<link rel="stylesheet" href="./assets/all.css">
<link rel="stylesheet" href="./assets/bootstrap.css">

</head>
<body>
	<div class="topnav ">
		<div class="d-flex">
			<div class=logo>
			
			</div>
			
			<h5 class="text-white mt-2 ml-4">
				BEST WAY AUTO SPARE PARTS
			</h5>
			
			<p class="text-white mt-2 ml-4">
				<i class="fa fa-paw"></i>
				DASHBOARD / OVERVIEW
			</p>
			
			<div class="profile">
				<img class="profile" alt="admin profile pic" src="../images/modern-abstract-background-digital-network-technology-other-concept_10585-776.jpg">
			</div>
			<h6 class="text-white mt-2 ml-3 ">
				ADMIN
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

    <!-- page contents -->
    <div class="pageContent">
        

        <div class="row pr-4">
            <!-- Products -->
            <!-- Products -->
            <div class="col-sm-3">
                <div class="dash_items mt-4">
                    <div class="products ">
                        <div class="row ">
                            <div class="col-sm-6 white p">
                                <i class="fa fa-tasks fa-5x ml-3 mt-2"></i>
                            </div>

                            <div class="col-sm-6">
                                <div class="white">
                                    <h1>
                                    	<%
                                    		int count=0;
                                    		// Create a statement object to execute the query
                                        	Statement stmt = conn.createStatement();
                                        	// Execute the query to get the count of rows in the table
                                        	ResultSet rs = stmt.executeQuery("SELECT COUNT(*) FROM products");
                                        	if(rs.next()){
                                        		 count = rs.getInt(1);
                                        		 // Display the count of rows in the table
                                        		  out.println( count );
                                        	}
                                        	
                                    	%>
                                    </h1>
                                    <h6>Products</h6>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div>
                        <div class="row">
                            <div class="col-sm-6 pl-4 pt-2">
                                <p class="p">View Details</p>
                            </div>

                            <div class="col-sm-6">
                                <div class="arrow">
                                    <a href="">
                                        <i class="fa fa-arrow-right"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- customers -->
            <!-- customers -->
            <div class="col-sm-3">
                <div class="customers_item mt-4">
                    <div class="customers">
                        <div class="row ">
                            <div class="col-sm-6 white p">
                                <i class="fa fa-comments fa-5x ml-3 mt-2"></i>
                            </div>

                            <div class="col-sm-6">
                                <div class="white">
                                    <h1>
                                    	<%
                                    		int count2=0;
                                    		// Create a statement object to execute the query
                                        	Statement stmt2 = conn.createStatement();
                                        	// Execute the query to get the count of rows in the table
                                        	ResultSet rs2 = stmt2.executeQuery("SELECT COUNT(*) FROM employees");
                                        	if(rs2.next()){
                                        		 count2 = rs2.getInt(1);
                                        		 // Display the count of rows in the table
                                        		  out.println( count2 );
                                        	}
                                        	
                                    	%>
                                    </h1>
                                    <h6>Staff</h6>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div>
                        <div class="row">
                            <div class="col-sm-6 pl-4 pt-2">
                                <p class="p1">View Details</p>
                            </div>

                            <div class="col-sm-6">
                                <div class="arrow">
                                    <a href="">
                                        <i class="fa fa-arrow-right"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- products categories -->
            <!-- products categories -->
            <div class="col-sm-3">
                <div class="product_cat_item mt-4">
                    <div class="products_cat ">
                        <div class="row ">
                            <div class="col-sm-6 white p">
                                <i class="fa fa-cart-plus fa-5x ml-3 mt-2"></i>
                            </div>

                            <div class="col-sm-6">
                                <div class="white">
                                    <h1>
                                    	<%
                                    		int count3=0;
                                    		// Create a statement object to execute the query
                                        	Statement stmt3 = conn.createStatement();
                                        	// Execute the query to get the count of rows in the table
                                        	ResultSet rs3 = stmt3.executeQuery("SELECT COUNT(*) FROM employees");
                                        	if(rs3.next()){
                                        		 count3 = rs3.getInt(1);
                                        		 // Display the count of rows in the table
                                        		  out.println( count3 );
                                        	}
                                        	
                                    	%>
                                    </h1>
                                    <h6>Products Categories</h6>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div>
                        <div class="row">
                            <div class="col-sm-6 pl-4 pt-2">
                                <p class="p2">View Details</p>
                            </div>

                            <div class="col-sm-6">
                                <div class="arrow">
                                    <a href="">
                                        <i class="fa fa-arrow-right "></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-3">
                <div class="orders_items mt-4">
                    <div class="orders ">
                        <div class="row ">
                            <div class="col-sm-6 white p">
                                <i class="fa fa-table fa-5x ml-3 mt-4"></i>
                            </div>

                            <div class="col-sm-6">
                                <div class="white">
                                    <h1>
                                    	<%
                                    		int count4=0;
                                    		// Create a statement object to execute the query
                                        	Statement stmt4 = conn.createStatement();
                                        	// Execute the query to get the count of rows in the table
                                        	ResultSet rs4 = stmt4.executeQuery("SELECT COUNT(*) FROM orders");
                                        	if(rs4.next()){
                                        		 count4 = rs4.getInt(1);
                                        		 // Display the count of rows in the table
                                        		  out.println( count4 );
                                        	}
                                        	
                                    	%>
                                    </h1>
                                    <h6>Orders</h6>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div>
                        <div class="row">
                            <div class="col-sm-6 pl-4 pt-2">
                                <p class="p3">View Details</p>
                            </div>

                            <div class="col-sm-6">
                                <div class="arrow">
                                    <a href="">
                                        <i class="fa fa-arrow-right"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="row pr-4">
            <!-- Products -->
            <!-- Products -->
            <div class="col-sm-3">
                <div class="earnings_items mt-4">
                    <div class="earnings ">
                        <div class="row ">
                            <div class="col-sm-6 green p">
                                <i class="fa fa-hand-holding-usd fa-5x ml-3 mt-2"></i>
                            </div>

                            <div class="col-sm-6">
                                <div class="green">
                                    <h1>4</h1>
                                    <h6>Earnings</h6>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div>
                        <div class="row">
                            <div class="col-sm-6 pl-4 pt-2">
                                <p class="p">View Details</p>
                            </div>

                            <div class="col-sm-6">
                                <div class="arrow">
                                    <a href="">
                                        <i class="fa fa-arrow-right"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- customers -->
            <!-- customers -->
            <div class="col-sm-3">
                <div class="pending_orders_item mt-4">
                    <div class="pending_orders">
                        <div class="row ">
                            <div class="col-sm-6 brown p">
                                <i class="fa fa-spinner fa-5x ml-3 mt-2"></i>
                            </div>

                            <div class="col-sm-6">
                                <div class="brown">
                                    <h1>
                                    	<%
                                    		int count5=0;
                                    		// Create a statement object to execute the query
                                        	Statement stmt5 = conn.createStatement();
                                        	// Execute the query to get the count of rows in the table
                                        	ResultSet rs5 = stmt5.executeQuery("SELECT COUNT(*) FROM orders");
                                        	if(rs5.next()){
                                        		 count5 = rs5.getInt(1);
                                        		 // Display the count of rows in the table
                                        		  out.println( count5 );
                                        	}
                                        	
                                    	%>
                                    </h1>
                                    <h6>Pending Orders</h6>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div>
                        <div class="row">
                            <div class="col-sm-6 pl-4 pt-2">
                                <p class="p1">View Details</p>
                            </div>

                            <div class="col-sm-6">
                                <div class="arrow">
                                    <a href="">
                                        <i class="fa fa-arrow-right"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- products categories -->
            <!-- products categories -->
            <div class="col-sm-3">
                <div class="completed_orders_item mt-4">
                    <div class="completed_orders ">
                        <div class="row ">
                            <div class="col-sm-5 blue p">
                                <i class="fa fa-check fa-5x ml-3 mt-2"></i>
                            </div>

                            <div class="col-sm-7">
                                <div class="blue">
                                    <h1>4</h1>
                                    <h6>Completed Orders</h6>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div>
                        <div class="row">
                            <div class="col-sm-6 pl-4 pt-2">
                                <p class="p2">View Details</p>
                            </div>

                            <div class="col-sm-6">
                                <div class="arrow">
                                    <a href="">
                                        <i class="fa fa-arrow-right "></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-3">
                <div class="total_coupons_items mt-4">
                    <div class=" total_coupons">
                        <div class="row ">
                            <div class="col-sm-6 red p">
                                <i class="fa fa-percent fa-4x ml-3 mt-2"></i>
                            </div>

                            <div class="col-sm-6">
                                <div class="red">
                                    <h1>98</h1>
                                    <h6>Total Coupons</h6>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div>
                        <div class="row">
                            <div class="col-sm-6 pl-4 pt-2">
                                <p class="p3">View Details</p>
                            </div>

                            <div class="col-sm-6">
                                <div class="arrow">
                                    <a href="">
                                        <i class="fa fa-arrow-right"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
           
    		
        </div>
        
        <div class=" rounded bg-ligh text-white d-flex">
            <canvas id="myChart" style="max-height:500px !important;max-width:500px;margin-top:100px"></canvas>
            
            <div class="container pl-4">
			<table class="table table-striped ml-4" style="margin-top:100px !important;margin-left:30px;">
				<thead>
					<tr>
						<th class="text-white "> ID</th>
						<th class="text-white ">First Name</th>
						<th class="text-white ">Last Name</th>
						<th class="text-white ">Gender</th>
						<th class="text-white ">Phone</th>
						<th class="text-white ">Email</th>
						<th class="text-white ">Role</th>
						<th class="text-white ">Date</th>
						<th class="text-white ">Action</th>
					</tr>
				</thead>
				
				<tbody>
				<%
					
			
            //Creating statement
            //Creating statement
            Statement statement = conn.createStatement();
            ResultSet select_query= statement.executeQuery("SELECT * FROM employees");            
            while(select_query.next()){
				%>
					<tr class="text-white">
						<td><%= select_query.getString("id") %></td>
						<td><%= select_query.getString("e_f_name") %></td>
						<td><%= select_query.getString("e_l_name") %></td>
						<td><%= select_query.getString("e_gender") %></td>
						<td><%= select_query.getString("e_phone") %></td>
						<td><%= select_query.getString("e_email") %></td>
						<td><%= select_query.getString("e_role") %></td>
						<td><%= select_query.getString("date") %></td>
						
						<td class="d-flex"><button class="btn btn-primary"><i class="fa fa-edit"></i></button> <button class="btn btn-danger"><i class="fa fa-trash"></i></button></td>
						
					</tr>
				<% 
            }
            %>
				</tbody>
				
			</table>
		</div>
        </div>
        
        

       
    
    <script src="./assets/chart.min.js">
        
    </script>
    
    <script>
      const ctx = document.getElementById('myChart');
      ctx.height = 10;
    
      new Chart(ctx, {
        type: 'doughnut',
        data: {
          labels: ['Products', 'Customers', 'Products cat', 'orders', 'Earnings', 'Pending Orders','Completed orders','Total Coupons'],
          datasets: [{
            label: '# of Votes',
            data: [10, 14, 19, 65, 4, 17,4,98],
            borderWidth: 1
            
          }]
        },
        options: {
          scales: {
            y: {
              beginAtZero: true
            }
          }
        }
      });
    </script>
    
   		
   		
   
    

    <!-- SCRIPTS -->
	<!-- SCRIPTS -->
	<script src="./assets/jquery-3.6.0.min.js"></script>
	<script src="./assets/bootstrap.js"></script>
	<script src="./assets/all.js"></script>
	
	
	
</body>
</html>