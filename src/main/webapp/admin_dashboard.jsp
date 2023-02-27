<%@ page import="java.sql.*" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <%@ page import="java.time.LocalDateTime" %>
            <%@ page import="java.time.format.DateTimeFormatter" %>
                <% //starting session // starting session 
                	HttpSession Session=request.getSession(); 
                    //database connection 
                    //database connection 
                    Class.forName("org.postgresql.Driver"); 
                	Connection conn=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres" , "root" );
                %>


                    <!DOCTYPE html>
                    <html lang="en">
                    <head style="font-family: poppins !important;">
                       
                        <meta charset="UTF-8">
                        <meta http-equiv="X-UA-Compatible" content="IE=edge">
                        <meta name="viewport" content="width=device-width, initial-scale=1.0">
                        <title>Document</title>

                        <!-- ASSETS -->
                        <!-- ASSETS -->
                        <link rel="stylesheet" href="./assets/fonts/fonts.css">
                        <link rel="stylesheet" href="css/nav.css">
                        <link rel="stylesheet" href="css/admin_dashboard.css">
                        <link rel="stylesheet" href="./assets/all.css">
                        <link rel="stylesheet" href="./assets/fontawesome/css/all.css">
                        <link rel="stylesheet" href="./assets/bootstrap.css">
                        <script src="./assets/tailwind.js"></script>

                    </head>

                    <body class="dark:bg-gray-800">
						<!-- including navigation bar -->
						<!-- including navigation bar -->
						<jsp:include page="nav.jsp"/>
						
		
                        <!-- page contents -->
                      <div class="pageContent">
                            <div class="topnav pt-3 dark:bg-gray-600">
                                <h5 class="text-white">AUTO SHOP</h5>
                                
                                <div class="d-flex text-white -mt-8" >
                                	<div class="admin-image ml-auto">
                                		<img class="admin-image" alt="" src="images/IMG-20210215-WA0080~2.jpg">
                                	</div>
                                	<p class="ml-2 mt-2">Admin</p>
                                </div>
                            </div>

                            <div class="row pr-4">
                                <!-- Products -->
                                <!-- Products -->
                                <div class="col-sm-3">
                                    <div class="dash_items mt-4">
                                        <div class="products ">
                                            <div class="row d-flex">
                                                <div class="col-sm-6 white p">
                                                    <i class="fa fa-tasks fa-4x ml-3 mt-2"></i>
                                                </div>

                                                <div class="col-sm-6">
                                                    <div class="white">
                                                        <h3>
                                                            <% int count=0; // Create a statement object to execute the query
                                                                 Statement stmt=conn.createStatement(); 
                                                              // Execute the query to get the count of rows in the table
                                                                ResultSet rs=stmt.executeQuery("SELECT COUNT(*) FROM products");
                                                                 if(rs.next()){ count=rs.getInt(1); 
                                                                //Display the count of rows in the table 
                                                                out.println(count );
                                                                 } %>
                                                        </h3>
                                                        <h6>Products</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div>
                                            <div class="row d-flex">
                                                <div class="col-sm-6 pl-4 pt-2">
                                                	<p class="p">View Details</p>
                                                
                                                </div>

                                                <div class="col-sm-6">
                                                    <div class="arrow ">
                                                        <a href="products_details.jsp">
                                                            <i class="fa fa-arrow-right text-blue-600"></i>
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
                                                    <i class="fa fa-users fa-4x ml-3 mt-2"></i>
                                                </div>

                                                <div class="col-sm-6">
                                                    <div class="white">
                                                        <h3>
                                                            <% int count2=0; 
                                                            // Create a statement object to execute th query 
                                                              Statement stmt2=conn.createStatement(); 
                                                            // Execute the query to get the count of rows in the table
                                                                ResultSet rs2=stmt2.executeQuery("SELECT COUNT(*) FROM employees"); 
                                                            if(rs2.next()){ count2=rs2.getInt(1); 
                                                                //Display the count of rows in the table 
                                                                out.println(count2 ); 
                                                                } 
                                                            %>
                                                        </h3>
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
                                                        <a href="employee_details.jsp">
                                                            <i class="fa fa-arrow-right text-green-600"></i>
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
                                                    <i class="fa fa-table fa-4x ml-3 mt-2"></i>
                                                </div>

                                                <div class="col-sm-6">
                                                    <div class="white">
                                                        <h3>
                                                            <% int count3=0; // Create a statement object to execute the query
                                                                 Statement stmt3=conn.createStatement(); 
                                                              // Execute the query to get the count of rows in the table
                                                                ResultSet rs3=stmt3.executeQuery("SELECT COUNT(*) FROM employees");
                                                                 if(rs3.next()){ count3=rs3.getInt(1); 
                                                                //Display the count of rows in the table 
                                                                out.println( count3 );
                                                                } %>
                                                        </h3>
                                                        <h6> Categories</h6>
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
                                                            <i class="fa fa-arrow-right text-yellow-500"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>





                                <!-- pending orders -->
                                <!-- pending order -->
                                <div class="col-sm-3">
                                    <div class="pending_orders_item mt-4">
                                        <div class="pending_orders">
                                            <div class="row ">
                                                <div class="col-sm-6 brown p">
                                                    <i class="fa fa-spinner fa-4x ml-3 mt-2"></i>
                                                </div>

                                                <div class="col-sm-6">
                                                    <div class="brown">
                                                        <h3>
                                                            <% 
                                                            int count5=0; 
                                                            // Create a statement object to execute the query
                                                           
                                                                Statement stmt5=conn.createStatement(); 
                                                             // Execute the query to get the count of rows in the table
                                                                ResultSet rs5=stmt5.executeQuery("SELECT COUNT(*) FROM orders");
                                                                 if(rs5.next()){ count5=rs5.getInt(1);
                                                               // Display the count of rows in the table 
                                                               out.println(count5 );
                                                                 } %>
                                                        </h3>
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
                                                        <a href="order_details.jsp">
                                                            <i class="fa fa-arrow-right text-green-600" ></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- completed orders -->
                                <!-- completed orders  -->
                                <div class="col-sm-3">
                                    <div class="completed_orders_item mt-4">
                                        <div class="completed_orders ">
                                            <div class="row ">
                                                <div class="col-sm-5 blue p">
                                                    <i class="fa fa-check fa-4x ml-3 mt-2"></i>
                                                </div>

                                                <div class="col-sm-7">
                                                    <div class="blue">
                                                        <h3>4</h3>
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
                                                            <i class="fa fa-arrow-right text-yellow-600"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- earning  -->
                                <!--  Earnings -->
                                <div class="col-sm-3">
                                    <div class="total_coupons_items mt-4">
                                        <div class=" total_coupons">
                                            <div class="row ">
                                                <div class="col-sm-6 red p">
												<i class="fa-solid fa-cedi-sign fa-4x !ml-2"></i>                                                </div>

                                                <div class="col-sm-6">
                                                    <div class="red">
                                                        <h1>98</h1>
                                                        <h6>Earnings</h6>
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
                                                            <i class="fa fa-arrow-right text-red-400"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                          
                            <!-- SCRIPTS -->
                            <!-- SCRIPTS -->
                            <script src="./assets/jquery-3.6.0.min.js"></script>
                            <script src="./assets/bootstrap.js"></script>
                            <script src="./assets/all.js"></script>
                            <script src="nav.js"></script>
                            <script src="./assets/tailwind.js"></script>



                    </body>

                    </html>