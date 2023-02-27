<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/nav.css">
<script src="./assets/tailwind.js"></script>
<title>Inert title here</title>
</head>
<body >
	<!-- side navigation bar -->
    <!-- side navigation bar -->
                        <div class="side_nav  pt-4 dark:bg-gray-600">

                            <a href="admin_dashboard.jsp" class="color"><i class="fa fa-paw"></i> Dashboard</a>

                            <!-- products drop down -->
                            <!-- products drop down -->
                            <div class="dropdown">
                                <a href="" class="color dropdown-toggle"><i class="fa fa-fw fa-briefcase"></i>
                                    Products</a>
                                <div class="dropdown-contents pl-4">
                                    <a href="add_products.jsp" class="color dropdown-list"><i
                                            class="fa fa-fw fa-briefcase"></i> Add Products</a>
                                    <a href="products_details.jsp" class="color dropdown-list"><i
                                            class="fa fa-fw fa-briefcase"></i> Products details</a>
                                </div>
                            </div>

                            <!-- employees -->
                            <!-- employees -->
                            <div class="dropdown">
                                <a href="" class="color dropdown-toggle"><i
                                        class="fa fa-fw fa-briefcase"></i>Employees</a>
                                <div class="dropdown-contents pl-4">
                                    <a href="add_employee.jsp" class="color dropdown-list"><i
                                            class="fa fa-fw fa-briefcase"></i> Add Employee</a>
                                    <a href="employee_details.jsp" class="color dropdown-list"><i
                                            class="fa fa-fw fa-briefcase"></i> Employees Details</a>
                                </div>
                            </div>

                            <!-- point of sales -->
                            <!-- point of sales -->
                            <div class="dropdown">
                                <a href="" class="color dropdown-toggle"><i class="fa fa-eye"></i> Point of Sale</a>
                                <div class="dropdown-contents pl-4">
                                    <a href="add_sales.jsp" class="color dropdown-list 	"><i
                                            class="fa fa-cart-plus"></i>Make Sale</a>
                                    <a href="sales_details.jsp" class="color dropdown-list"><i
                                            class="fa fa-cart-plus"></i>Sales Details</a>
                                </div>
                            </div>

                            <!-- ORDERS -->
                            <!-- ORDERS -->

                            <div class="dropdown">
                                <a href="" class="color dropdown-toggle"><i class="fa fa-fw fa-briefcase"></i>Orders</a>
                                <div class="dropdown-contents pl-4">
                                    <a href="add_order.jsp" class="color dropdown-list"><i
                                            class="fa fa-fw fa-briefcase"></i> Add order</a>
                                    <a href="order_details.jsp" class="color dropdown-list"><i
                                            class="fa fa-fw fa-briefcase"></i> Order Details</a>
                                </div>
                            </div>


                            <!-- employees -->
                            <!-- employees -->
                            <a href="store.jsp" class="color "><i class="fa fa-fw fa-briefcase"></i> Stores</a>

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
                            <a href="index.jsp" class="color "><i class="fa fa-fw fa-power-off"></i> Logout</a>
                        </div>
	
</body>
</html>