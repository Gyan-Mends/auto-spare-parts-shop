<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<% 
	LocalDateTime currentTime = LocalDateTime.now();
   	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
    String formattedDateTime = currentTime.format(formatter);
    
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
			background-color:#404040;
		}
		
		.fa-edit{
			height:13px !important;
		}
		
		.fa-trash{
			height:13px !important;
		}
		
		
	</style>

	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>


	<!-- ASSETS -->
	<!-- ASSETS -->
	<link rel="stylesheet" href="css/nav.css">
	<script src="./assets/chart.min.js" type="text/javascript"></script>
	<link rel="stylesheet" href="css/customers.css">
	<link rel="stylesheet" href="css/admin_dashboard.css">
	<link rel="stylesheet" href="./assets/all.css">
	<link rel="stylesheet" href="./assets/bootstrap.css">
	<script src="./assets/tailwind.js"></script>
	<link rel="stylesheet" href="./assets/fonts/fonts.css">
	
	
  

</head>

<body class="dark:bg-gray-800" style="font-family:poppins;" >
	

 	 	<!-- including navigation bar -->
		<!-- including navigation bar -->
		<jsp:include page="nav.jsp"/>
						
						
	<div class="pageContent ">
	
		<div class="topnav pt-3 dark:bg-gray-600 "> 
             <h5 class="text-white">AUTO SHOP</h5>
                     <div class="d-flex text-white" style="margin-top:-30px;">
                            <div class="admin-image ml-auto">
                                <img class="admin-image" alt="" src="images/IMG-20210215-WA0080~2.jpg">
                              </div>
                                <p class="ml-2 mt-2">Admin</p>
                      </div>
          </div>
	
		<div class="p-4 mb-4 ml-4 grid grid-cols-1 lg:grid-cols-2">
			<div class="d-flex">
				<h4 class="text-white mt-3">
					 Product Details
				</h4>
				<a href="add_products.jsp">
					<button class="btn btn-primary ml-4"><i class="fa fa-plus"></i></button>
				</a> 
			</div>
			
				<form class="ml-40" action="">
					<input onkeyup="mySearch()" id="myInput" class="h-9 w-[250px] rounded-md p-2 outline-none" type="search" placeholder="Search by product name">
				</form>
		</div><hr class="mb-4 -mt-10">
		
		
		<div class="containe">
			<table id="myTable" class="table table-striped" >
				<thead>
					<tr style="height:8px !important">
						<th class="text-white "> ID</th>
						<th class="text-white "> Name</th>
						<th class="text-white ">Manufacturer</th>
						<th class="text-white "> Category</th>
						<th class="text-white ">Price</th>
						<th class="text-white ">Quantity</th>
						<th class="text-white "> Amount</th>
						<th class="text-white ">Date/Time</th>
						<th class="text-white ">Action</th>
					</tr>
				</thead>
				
				<tbody>
				<%
					
        	
            //Creating statement
            //Creating statement
            Statement statement = conn.createStatement();
            ResultSet select_query= statement.executeQuery("SELECT * FROM products");
            
           
            while(select_query.next()){
				%>
				 
				 	<tr class=" even:bg-gray-600 text-blue-100">
								<td><%= select_query.getString("id") %></td>
								<td><%= select_query.getString("p_name") %></td>
								<td><%= select_query.getString("p_manufacturer") %></td>
								<td><%= select_query.getString("p_category") %></td>
								<td><%= select_query.getString("p_price") %></td>
								<td><%= select_query.getString("p_quantity") %></td>
								<td><%= select_query.getString("p_t_amount") %></td>
								<td>
									<%= formattedDateTime %>
								</td>
								<td class="d-flex">
									<a href="" class="h-0 -mt-4"><button class="bg-blue-600 h-7 w-7 rounded-sm text-white"><i class="fa fa-edit "></i></button></a>
									<a href="delete.jsp?id =<%= select_query.getString("id") %>" class="h-0 -mt-4 "><button class="bg-red-600 h-7 w-7 text-white rounded-sm"><i class="fa fa-trash "></i></button></a>
									
								</td>
							</tr>
					
				<% 
            }
            %>
				</tbody>
			</table>
		</div>
	</div>
	
	<script type="text/javascript">
    	
    	
    	function mySearch(){
    		 // Declare variables
    		  var input, filter, table, tr, td, i, txtValue;
    		  input = document.getElementById("myInput");//getting the search input
    		  filter = input.value.toUpperCase();//converting the input to upper case
    		  table = document.getElementById("myTable");//getting the data in the table
    		  tr = table.getElementsByTagName("tr");
    		  // Loop through all table rows, and hide those who don't match the search query
    		 // Loop through all table rows, and hide those who don't match the search query
    		  for (i = 0; i < tr.length; i++) {
    		    td = tr[i].getElementsByTagName("td")[1];
    		    if (td) {
    		      txtValue = td.textContent || td.innerText;
    		      if (txtValue.toUpperCase().indexOf(filter) > -1) {
    		        tr[i].style.display = "";
    		      } else {
    		        tr[i].style.display = "none";
    		      }
    		    }
    		  }
    	}
    	
    	
    	
    	
    	
    	
    </script>

	<!-- SCRIPTS -->
	<!-- SCRIPTS -->
	<script src="./assets/jquery-3.6.0.min.js"></script>
	<script src="./assets/bootstrap.js"></script>
	<script src="./assets/all.js"></script>
	<script type="chart.min.js"></script>
</body>

</html>