<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>


	<!-- ASSETS -->
	<!-- ASSETS -->
	 <link rel="stylesheet" href="./assets/fonts/fonts.css">
	<link rel="stylesheet" href="css/customers.css">
	<link rel="stylesheet" href="css/admin_dashboard.css">
	<link rel="stylesheet" href="./assets/all.css">
	 <link rel="stylesheet" href="./assets/fontawesome/css/all.css">
	<link rel="stylesheet" href="./assets/bootstrap.css">
	<link rel="stylesheet" href="css/nav.css">
	<script src="./assets/tailwind.js"></script>
</head>

<body style="font-family:poppins;" class="dark:bg-gray-800">
	
	<!-- including navigation bar -->
	<!-- including navigation bar -->
	<jsp:include page="nav.jsp"/>
	
	<div class="pageContent">
		<div class="row">
		
		<div class="col-sm-8">
			<div class="topnav pt-3 dark:bg-gray-600">
              <h5 class="text-white">AUTO SHOP</h5>
                    <div class="d-flex text-white" style="margin-top:-30px;">
                        	<div class="admin-image ml-auto">
                             	<img class="admin-image" alt="" src="images/IMG-20210215-WA0080~2.jpg">
                             </div>
                              <p class="ml-2 mt-2">Admin</p>
                     </div>
         </div>


		<form method="post" action="add_sales.jsp">
			<div class="container p-4">

				<div>
					<h4 class="text-white ml-4">Add Sales Here</h4>
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
		
		<div class="col-sm-4">
			<div class="cart-container p-2 dark:bg-gray-600 flex flex-col justify-between ">
							<div class="flex-1 overflow-y-scroll">
								<%
					//databaseconnection 
					//database connection 
					Class.forName("org.postgresql.Driver"); 
					Connection connn=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres" , "root" );
						Statement stmt =connn.createStatement();
						 ResultSet select_query= stmt.executeQuery("SELECT * FROM check_out");            
				            while(select_query.next()){
								%>
									<div class="cart-details mt-2 rounded ml-auto mr-auto text-center  text-white bg-white">
										<h5 class="text-dark text-lg"><%= select_query.getString("product_name") %></h5>
										<form action="add_sales.jsp" method="post">
											<div class="grid grid-cols-1 lg:grid-cols-3 mt-2 ">
												<div class="text-left"><input  value="gh<%= select_query.getString("product_quantity") %>" type="text" class=" bg-gray-400 w-[55px] !text-center ml-2 h-8 rounded-sm" readonly></div>
												<div class=""><input value=" <%= select_query.getString("product_price") %>" type="text" class=" w-[55px] h-8 rounded-sm bg-gray-400" readonly></div>
												<div class=""><input value=" gh<%= select_query.getString("product_total_amount") %>" type="text" class=" w-[55px] h-8 rounded-sm bg-gray-400" readonly></div>
											</div>
											<div class="mt-3 grid grid-cols-1 lg:grid-cols-2">
												<div>
													<button   class="ml-2 rounded text-white h-7 w-7 bg-red-600"><i class="fa fa-trash"></i></button></td>												
												</div>
												<div>
													<button  class="ml-2 rounded text-white h-7 w-7 bg-blue-600"><i class="fa fa-edit"></i></button></td>												
												</div>	
											</div>											
										</form>
									</div>
								<% 
				            }
				            %>
							</div>
				            
				            <div class="h-15 flex flex-col mt-4">
				            	<form action="add_sales.jsp" method="post" >
				            		<div class="">
				            		<label class="text-white mr-2 mt-2">Total:</label>
				        			<input class=" bg-white  w-[200px]  ml-2 h-8 rounded-sm" type="text" value="ghc<% 	
                                     Statement stmt2=connn.createStatement(); 
                                     ResultSet rs=stmt2.executeQuery("SELECT SUM(product_total_amount) AS total FROM check_out");
                                     rs.next();
                                     int total = rs.getInt("total");
                                     out.print(total);
                                      %>
				        				 
				        			" readonly>
				            	</div >
				            	<div class="flex items-center justify-center">
				         			<input class="btn btn-primary bg-[#0095FF] h-10 w-40 mt-6" type="submit" name="check_out" value="Check Out">
				            		
				            	</div>
				            	</form>
				            </div>
						</div>

					</div>
	
		</div>
				 	
				 	
				 	
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

    
    Class.forName("org.postgresql.Driver");
    Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "root");
    
    if(request.getParameter("check_out") != null){
 	   try{
            Statement statements = conn.createStatement();
            int insert_query = statements.executeUpdate("DELETE FROM check_out");
           %>
           		<script>
					window.location.href="add_sales.jsp";				
				</script>
           <%
 	   }catch(Exception e){
 		   out.print(e);
 	   }
    }

       if(request.getParameter("insert") != null){
    	   try {
           	
       		//database connection__
           	//database connection
            
               
               //creating sql statement
               //creating sql statement
               Statement statement = conn.createStatement();
               int insert_query = statement.executeUpdate("INSERT INTO sales( Spare_Part,Quantity,Price,Total,Date) VALUES ( '"+spare_parts+"', '"+Quantity+"', '"+Price+"', '"+Total+"', '"+formattedDateTime+"')");
               Statement statement2=conn.createStatement();
       			int	insert_query2=statement2.executeUpdate("INSERT INTO check_out(Product_Name,Product_Price,Product_Quantity,Product_Total_Amount) VALUES (  '"+spare_parts+"' , '"+Quantity+"', '		"+Price+"','"+Total+"' )"); 
				
       			%>
       				<script>
						window.location.href="add_sales.jsp";				
					</script>
       			<% 
               
               conn.close();
       	
       } catch (Exception e) {
           out.println("Error: " + e);
       }
  
       }
       
       
 
%>
