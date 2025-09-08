<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Flight Details</title>
</head>
<body>
    <h2>Available Flights</h2>

    <form action="flights" method="post">
        <input type="submit" value="Show Available Flights">
    </form>

    <c:if test="${not empty flights}">
        <h3>Available Flights:</h3>
        <ul>
            <c:forEach var="f" items="${flights}">
                <li>${f}</li>
            </c:forEach>
        </ul>
    </c:if>

    <p><a href="register.jsp">Back to Booking Page</a></p>
</body>
</html>
