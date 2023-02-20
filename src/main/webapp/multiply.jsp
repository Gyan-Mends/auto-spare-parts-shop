<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" %>
<%
  int input1 = Integer.parseInt(request.getParameter("input1"));
  int input2 = Integer.parseInt(request.getParameter("input2"));
  int result = input1 * input2;
  out.println(result);
%>
