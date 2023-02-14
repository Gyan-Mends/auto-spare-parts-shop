<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="com.mit.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="obj" class="com.mit.CustomerBean"/>
	<jsp:setProperty property="*" name="obj"/>
	
	<%
		int status= CustomerDAO.insertCustomer(obj);
	if(status>0){
		System.out.println("Inserted successfull");
	}else{
		System.out.println("Data notInsertde ");
	}
	%>
</body>
</html>