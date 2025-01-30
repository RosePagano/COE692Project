<%-- 
    Document   : login
    Created on : Jan 30, 2025, 4:12:59 AM
    Author     : omarsisi
--%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    String correctUsername = "admin";
    String correctPassword = "admin";

    if (username != null && password != null) {
        if (username.equals(correctUsername) && password.equals(correctPassword)) {
            out.println("<h2>Login Successful!</h2>");
            out.println("<p>Welcome, " + username + "!</p>");
        } else {
            out.println("<h2>Login Failed!</h2>");
            out.println("<p>Invalid username or password.</p>");
            out.println("<a href='index.html'>Try Again</a>");
        }
    } else {
        out.println("<h2>Error</h2>");
        out.println("<p>Please enter both username and password.</p>");
        out.println("<a href='index.html'>Go Back</a>");
    }
%>




<!--


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>

-->


    