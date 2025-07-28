<%--
  Created by IntelliJ IDEA.
  User: Abhishek Yadav
  Date: 28-07-2025
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Currency Conversion</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background-color: #f8f9fa;
        }

        .result-container {
            background-color: #e0f7fa;
            padding: 30px;
            border-radius: 10px;
            width: 400px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        .result-title {
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 15px;
        }

        .converted-value {
            font-size: 24px;
            color: #00796b;
        }
    </style>
</head>
<body>

<div class="result-container">
    <div class="result-title">Currency Conversion Result:</div>

    <%
        Double convertedValue = (Double) request.getAttribute("convertedValue");
        if (convertedValue != null) {
    %>
    <div class="converted-value">
        Converted Amount: <%= String.format("%.4f", convertedValue) %>
    </div>
    <%
    } else {
    %>
    <div style="color: red;">No conversion result available.</div>
    <%
        }
    %>
</div>

</body>
</html>
