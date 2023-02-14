<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
			<H6 class="text-white mt-2 ml-3 ">
				ADMIN
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
        	<a href="" class="color dropdown-toggle"><i class="fa fa-fw fa-briefcase"></i>Orders</a>
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
                                    <h1>10</h1>
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
                                    <h1>14</h1>
                                    <h6>Customers</h6>
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
                                    <h1>19</h1>
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
                                    <h1>65</h1>
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
                                    <h1>17</h1>
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
						<th class="text-white ">First Name</th>
						<th class="text-white ">Last Name</th>
						<th class="text-white ">Phone</th>
						<th class="text-white ">Date</th>
						<th class="text-white ">Actions</th>
					</tr>
				</thead>
				
				<tbody>
					<tr>
						<td class="text-white"> Mends  </td>
						<td class="text-white"> Gyan</td>
						<td class="text-white"> 0548348485</td>
						<td class="text-white"> 30-01-2023</td>
						<td class="text-center">
							<button class="btn btn-primary ml-4"><i class="fa fa-edit"></i></button>
							<button class="btn btn-danger ml-4"><i class="fa fa-trash "></i></button>
						</td>
					</tr>
					
					<tr>
						<td class="text-white"> Emmanuel Oppong  </td>
						<td class="text-white"> Coffie</td>
						<td class="text-white"> 0548348485</td>
						<td class="text-white"> 30-01-2023</td>
						<td class="text-center">
							<button class="btn btn-primary ml-4"><i class="fa fa-edit"></i></button>
							<button class="btn btn-danger ml-4"><i class="fa fa-trash "></i></button>
						</td>
					</tr>
					
					<tr>
						<td class="text-white"> Well  </td>
						<td class="text-white"> Done</td>
						<td class="text-white"> 0548348485</td>
						<td class="text-white"> 30-01-2023</td>
						<td class="text-center">
							<button class="btn btn-primary ml-4"><i class="fa fa-edit"></i></button>
							<button class="btn btn-danger ml-4"><i class="fa fa-trash "></i></button>
						</td>
					</tr>
					
					<tr>
						<td class="text-white"> Fati  </td>
						<td class="text-white"> Qwarm</td>
						<td class="text-white"> 0548348485</td>
						<td class="text-white"> 30-01-2023</td>
						<td class="text-center">
							<button class="btn btn-primary ml-4"><i class="fa fa-edit"></i></button>
							<button class="btn btn-danger ml-4"><i class="fa fa-trash "></i></button>
						</td>
					</tr>
					
					<tr>
						<td class="text-white"> Godfred  </td>
						<td class="text-white"> Qwarm</td>
						<td class="text-white"> 0548348485</td>
						<td class="text-white"> 30-01-2023</td>
						<td class="text-center">
							<button class="btn btn-primary ml-4"><i class="fa fa-edit"></i></button>
							<button class="btn btn-danger ml-4"><i class="fa fa-trash "></i></button>
						</td>
					</tr>
					
					<tr>
						<td class="text-white"> Mends  </td>
						<td class="text-white"> Gyan</td>
						<td class="text-white"> 0548348485</td>
						<td class="text-white"> 30-01-2023</td>
						<td class="text-center">
							<button class="btn btn-primary ml-4"><i class="fa fa-edit"></i></button>
							<button class="btn btn-danger ml-4"><i class="fa fa-trash "></i></button>
						</td>
					</tr>
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