<%--
  Created by IntelliJ IDEA.
  User: Abhishek Yadav
  Date: 28-07-2025
  Time: 17:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Currency Rates</title>
    <style>
        table {
            width: 60%;
            margin: auto;
            border-collapse: collapse;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ccc;
            text-align: center;
        }

        th {
            background-color: #f4f4f4;
        }

        h2 {
            text-align: center;
            color: #333;
        }
    </style>
</head>
<body>

<h2>Available Currencies & Exchange Rates</h2>

<c:if test="${not empty currencies}">
    <table>
        <thead>
        <tr>
            <th>Code</th>
            <th>Name</th>
            <th>Symbol</th>
            <th>Rate</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="currency" items="${currencies}">
            <tr>
                <td>${currency.code}</td>
                <td>${currency.name}</td>
                <td>${currency.symbol}</td>
                <td>${currency.rate}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</c:if>

<c:if test="${empty currencies}">
    <p style="text-align:center; color: red;">No currencies available to display.</p>
</c:if>

</body>
</html>

