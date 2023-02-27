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
     <script src="./assets/tailwind.js"></script>
     <link rel="stylesheet" href="./assets/fonts/fonts.css">

</head>

<body style="font-family:poppins" class="dark:bg-gray-800">
	
	<!-- including navigation bar -->
	<!-- including navigation bar -->
	<jsp:include page="nav.jsp"/>
	
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
		
		<form>
			<div class="container p-4">

				<div>
					<h4 class="text-white ml-4">Add Order Here</h4>
				</div>
				<hr>

				<div class="row p-4">
					<div class="col-sm-6">

						<label class="text-white">Spare part</label><br>
						<input class="customers_input" type="text" name="spare-parts" required><br><br>
						
						<label class="text-white"  for="second-number-input">Price</label><br>
						<input class="customers_input"  id="second-number-input" type="number" name="price"><br><br>
<br><br>
					</div>



					<div class="col-sm-6">

						<label class="text-white"  for="first-number-input">Quantity</label><br>
						<input  class="customers_input" id="first-number-input" type="number" name="quantity"><br><br>

						<label class="text-white" for="result-input">Total Amount</label><br>
						<input class="customers_input" id="result-input" type="number" name="total" readonly><br><br>
					</div>
					
					
					

					<div class="ml-auto mr-auto mt-4">
						<input class="btn bg-blue-500 text-white submit" value="Make sales" type="submit" name="insert">
					</div>
				</div>
			</div>
		</form>
	</div>



	<script >
    
      const firstNumberInput = document.getElementById('first-number-input');
      const secondNumberInput = document.getElementById('second-number-input');
      const resultInput = document.getElementById('result-input');

      function updateResultInput() {
        const firstNumberValue = parseFloat(firstNumberInput.value);
        const secondNumberValue = parseFloat(secondNumberInput.value);
        const resultValue = firstNumberValue * secondNumberValue;
        resultInput.value = resultValue;
      }

      firstNumberInput.addEventListener('keyup', updateResultInput);
      secondNumberInput.addEventListener('keyup', updateResultInput);


</script>




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
   
    String spare_parts = request.getParameter("spare-parts");
    String Quantity = request.getParameter("quantity");
    String Price = request.getParameter("price");
    String Total =request.getParameter("total");
   
    LocalDateTime currentTime = LocalDateTime.now();
   	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
    String formattedDateTime = currentTime.format(formatter);

    
  

       if(request.getParameter("insert") != null){
    	   try {
           	
       		//database connection
           	//database connection
               Class.forName("org.postgresql.Driver");
               Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "root");
               
               //creating sql statement
               //creating sql statement
               Statement statement = conn.createStatement();
               int insert_query = statement.executeUpdate("INSERT INTO orders( Spare_Part,Quantity,Price,Total,Date) VALUES ( '"+spare_parts+"', '"+Quantity+"', '"+Price+"', '"+Total+"', '"+formattedDateTime+"')");
               if(insert_query>0) {
                 
               } else {
               	 %>
               		<script>
   						alert("Unable to make order successfully");
   					</script>
               	<% 
               }
               conn.close();
       	
       } catch (Exception e) {
           out.println("Error: " + e);
       }
  
       }
       %>