
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>


	<!-- ASSETS -->
	<!-- ASSETS -->
	 <link rel="stylesheet" href="./assets/fonts/fonts.css">
	<link rel="stylesheet" href="css/add_product.css">
	<link rel="stylesheet" href="css/admin_dashboard.css">
	<link rel="stylesheet" href="./assets/all.css">
	<link rel="stylesheet" href="./assets/bootstrap.css">
     <script src="./assets/tailwind.js"></script>

</head>

<body style="font-family:poppins;" class="dark:bg-gray-800">
	

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

		<form method="post" action="add_products.jsp">
			<div class="container p-4">

				<div>
					<h4 class="text-white ml-4">Add New Product Here</h4>
				</div><hr>

				<div class="row p-4">
					<div class="col-sm-6">
						<label class="text-white">Product Name</label><br>
						<input class="product_input" type="text" name="Pname" required><br><br>

						<label class="text-white">Select Manufacturer</label><br>
						<select class="product_input" name="pmanufacturer">
							<option></option>
							<option>Toyota </option>
							<option>BMW</option>
							<option>Opel</option>
							<option>Kia</option>
							<option>Ford</option>
						</select><br><br>

						<label class="text-white"  for="second-number-input">Price</label><br>
						<input class="product_input"  id="second-number-input" type="number" name="price"><br><br>
<br><br>	
						
					</div>



					<div class="col-sm-6">
						<label class="text-white">Select Category</label><br>
						<select class="product_input" name="Pcategory">
							<option> </option>
							<option>Engine </option>
							<option>Tyre</option>
							<option>Wheels </option>
						</select><br><br>

						
						<label class="text-white"  for="first-number-input">Quantity</label><br>
						<input  class="product_input" id="first-number-input" type="number" name="quantity"><br><br>

						<label class="text-white" for="result-input">Total Amount</label><br>
						<input class="product_input" id="result-input" type="number" name="total" readonly><br><br>
					</div>

					<div class="ml-auto mr-auto mt-4">
						<input class="btn btn-primary submit bg-blue-600" value="Insert Product" type="submit" name="submit">
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

<%
	//retrieving data from the input field
	//retrieving data from the input field
    String Pname = request.getParameter("Pname");
    String Pmanufacturer = request.getParameter("pmanufacturer");
    String Pcategory = request.getParameter("Pcategory");
    String Pprice =request.getParameter("price");
    String Pquantity = request.getParameter("quantity");
    String Ptamount = request.getParameter("total");
    
  

       if(request.getParameter("submit") != null){
    	   try {
           	
       		//database connection
           	//database connection
               Class.forName("org.postgresql.Driver");
               Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "root");
               
               //creating sql statement
               //creating sql statement
               Statement statement = conn.createStatement();
               int insert_query = statement.executeUpdate("INSERT INTO products(P_Name, P_Manufacturer,P_Category,P_Price,P_Quantity,P_T_Amount) VALUES ('"+Pname+"', '"+Pmanufacturer+"',  '"+Pcategory+"', '"+Pprice+"', '"+Pquantity+"', '"+Ptamount+"')");
               if(insert_query>0) {
                 
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
