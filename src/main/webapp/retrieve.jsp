<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 5px;
  text-align: left;    
}
</style>
</head>
<body>

<h2>Data from PostgreSQL Database</h2>

<table style="width:100%">
  <tr>
    <th>Email</th>
    <th>Password</th>
     <th>Password</th>
  </tr>
  <%
 
    try {
      Class.forName("org.postgresql.Driver");
      Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "root");
      Statement statement = connection.createStatement();
      ResultSet resultSet = statement.executeQuery("SELECT * FROM LOGIN");
      while (resultSet.next()) {
  %>
  <tr>
    <td><%= resultSet.getString("EMAIL") %></td>
    <td><%= resultSet.getString("PASSWORD") %></td>
    <td><button>save </button></td>
  </tr>
  <%
      }
    } catch (Exception e) {
      e.printStackTrace();
    
    }
  %>
</table>

</body>
</html>
