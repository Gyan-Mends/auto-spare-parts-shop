<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert data into Oracle database</title>
</head>
<body>

<%
String name = request.getParameter("name");
String age = request.getParameter("age");



String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String username = "system";
String password = "root";

try {
  Class.forName(driver);
  Connection con = DriverManager.getConnection(url, username, password);

  String query = "insert into LOGIN(EMAIL, PASSWORD) values(?,?)";
  PreparedStatement stmt = con.prepareStatement(query);
  stmt.setString(1, name);
  stmt.setString(2, age);
  int i = stmt.executeUpdate();

  if (i > 0) {
    out.println("Data inserted successfully");
  } else {
    out.println("Data insert failed");
  }

  con.close();

} catch (Exception e) {
  out.println(e);
}
%>

</body>
</html>
