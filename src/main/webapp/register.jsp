<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Passenger Registration & Booking</title>
</head>
<body>
    <h2><b>Passenger Registration & Flight Booking</b></h2>

    <form action="booking" method="post">
        <label>Name:</label>
        <input type="text" name="username" required><br><br>

        <label>Email:</label>
        <input type="email" name="email" required><br><br>

        <label>Password:</label>
        <input type="password" name="password" required><br><br>

        <label>Flight No:</label>
        <input type="text" name="flightNo" required><br><br>

        <input type="submit" value="Book Flight">
    </form>

    <!-- Display confirmation or error message -->
    <c:if test="${not empty message}">
        <h3 style="color:green;">${message}</h3>
    </c:if>
    <c:if test="${not empty error}">
        <h3 style="color:red;">${error}</h3>
    </c:if>

    <p><a href="loginpage.jsp">Go to Flight List Page</a></p>
</body>
</html>
