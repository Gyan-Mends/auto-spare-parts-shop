<%@ page import="java.sql.*" %>
<%
		// starting session
		// starting session
		HttpSession Session = request.getSession();
	//Retrieving data from the form
	//Retrieving data from the form
    String Email = request.getParameter("email");
    	session.setAttribute("Email", Email);
    String Password = request.getParameter("password");
    	session.setAttribute("Password", Password);
    
    if(Email != null && Password != null){
        try {
        	//database connection
        	//database connection
            Class.forName("org.postgresql.Driver");
            Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "root");
            
            //checking if login details exist in the database
            //checking if login details exist in the database
            Statement admin_statement = conn.createStatement();
            Statement staff_statement =conn.createStatement();
            
            ResultSet admin_check = admin_statement.executeQuery("SELECT FROM admin_login WHERE EMAIL='"+Email+"' AND PASSWORD='"+Password+"'");
            ResultSet staff_check = staff_statement.executeQuery("SELECT FROM staff_login WHERE EMAIL='"+Email+"' AND PASSWORD='"+Password+"'") ;
            
            if(admin_check.next()) {
               response.sendRedirect("admin_dashboard.jsp");
            } else if(staff_check.next()){
            	response.sendRedirect("add_customers.html");
            }else {
            		%>
            		 <script type="text/javascript">
        				alert(" Invalid Email or Password ");
    				</script>
    				<%
            	}
            
            conn.close();
            
            //code to b executed if connection is not successful
            //code to b executed if connection is not successful
        } catch (Exception e) {
            out.println("Error: " + e);
        }
    }
%>



<html>
	<head>
		<title>Form to database example</title>
		
	<!-- ASSETS -->
	<!-- ASSETS -->
	<link rel="stylesheet" href="css/login.css">
	<link rel="stylesheet" href="./assets/all.css">
	<link rel="stylesheet" href="./assets/bootstrap.css">
	</head>
<body>

	
<!-- HTML form -->
<!-- HTML form -->
<div class="ml-auto mr-auto  text-center p-4">
		<h2 class="text-white mb-4">Login Form</h2>
		<form action="index.jsp" method="post">
			<!-- EMAIL -->
			<!-- EMAIL -->
			<input class="mb-4 input text-white" type="text" placeholder="Email id" name="email">
			<!-- PASSWORD -->
			<!-- PASSWORD -->
			<input class="mb-4 input text-white" id="pass" type="password" placeholder="Password" name="password"><br>
			<!-- RESET PASSWORD AND SHOW PASSWORD --
			<!-- RESET PASSWORD AND SHOW PASSWORD -->
			<input class="resset rounded mb-4  " type="reset" placeholder="Email id">
			<!-- SUBMIT -->
			<!-- SUBMIT -->
			<input class="mb-4 submit mt-4" value="LOGIN"  type="submit"  >
		</form>
</div>


	<!-- SCRIPTS -->
	<!-- SCRIPTS -->
	<script src="./assets/jquery-3.6.0.min.js"></script>
	<script src="./assets/bootstrap.js"></script>
	<script src="./assets/all.js"></script>
</body>
</html>
