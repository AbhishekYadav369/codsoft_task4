<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Currency Converter</title>
    <style>
        body {
            font-family: Arial;
            margin: 40px;
        }
        .options{
            display:flex;
            align-content:stretch;
        }

        .hidden {
            display: none;
        }

        .form-container {
            margin-top: 20px;
            padding: 20px;
            border: 1px solid #ccc;
            width: 400px;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input, select {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
        }

        button {
            padding: 10px 20px;
        }

        .options {
            margin-bottom: 30px;
        }
    </style>

    <script>
        function showSection(sectionId) {
            document.getElementById("viewCurrenciesForm").classList.add("hidden");
            document.getElementById("convertCurrencyForm").classList.add("hidden");
            document.getElementById(sectionId).classList.remove("hidden");
        }
    </script>
</head>
<body>

<h2>Currency Converter Application</h2>

<div class="options">
    <button onclick="showSection('viewCurrenciesForm')">1. View All Currencies</button>
    <button onclick="showSection('convertCurrencyForm')">2. Convert Currency</button>
</div>

<!-- View All Currencies Form -->
<div id="viewCurrenciesForm" class="form-container hidden">
    <form action="./fetchAll" method="get">
        <h3>View All Currencies</h3>
        <button type="submit">Show All Currencies</button>
    </form>
</div>

<!-- Convert Currency Form -->
<div id="convertCurrencyForm" class="form-container hidden">
    <form action="./convert" method="post">
        <h3>Convert Currency</h3>
        <label for="baseCurrency">Base Currency Code:</label>
<%--        <input type="text" name="baseCode" id="baseCode" placeholder="e.g. USD" required>--%>
        <select name="baseCode" id="baseCode">
            <option value="AUD">AUD</option>
            <option value="BGN">BGN</option>
            <option value="BRL">BRL</option>
            <option value="CAD">CAD</option>
            <option value="CHF">CHF</option>
            <option value="CNY">CNY</option>
            <option value="CZK">CZK</option>
            <option value="DKK">DKK</option>
            <option value="EUR">EUR</option>
            <option value="GBP">GBP</option>
            <option value="HKD">HKD</option>
            <option value="HRK">HRK</option>
            <option value="HUF">HUF</option>
            <option value="IDR">IDR</option>
            <option value="ILS">ILS</option>
            <option value="INR">INR</option>
            <option value="ISK">ISK</option>
            <option value="JPY">JPY</option>
            <option value="KRW">KRW</option>
            <option value="MXN">MXN</option>
            <option value="MYR">MYR</option>
            <option value="NOK">NOK</option>
            <option value="NZD">NZD</option>
            <option value="PHP">PHP</option>
            <option value="PLN">PLN</option>
            <option value="RON">RON</option>
            <option value="RUB">RUB</option>
            <option value="SEK">SEK</option>
            <option value="SGD">SGD</option>
            <option value="THB">THB</option>
            <option value="TRY">TRY</option>
            <option value="ZAR">ZAR</option>
        </select>


        <label for="targetCurrency">Target Currency Code:</label>
<%--        <input type="text" name="targetCode" id="targetCode" placeholder="e.g. INR" required>--%>
        <select name="targetCode" id="targetCode">
            <option value="AUD">AUD</option>
            <option value="BGN">BGN</option>
            <option value="BRL">BRL</option>
            <option value="CAD">CAD</option>
            <option value="CHF">CHF</option>
            <option value="CNY">CNY</option>
            <option value="CZK">CZK</option>
            <option value="DKK">DKK</option>
            <option value="EUR">EUR</option>
            <option value="GBP">GBP</option>
            <option value="HKD">HKD</option>
            <option value="HRK">HRK</option>
            <option value="HUF">HUF</option>
            <option value="IDR">IDR</option>
            <option value="ILS">ILS</option>
            <option value="INR">INR</option>
            <option value="ISK">ISK</option>
            <option value="JPY">JPY</option>
            <option value="KRW">KRW</option>
            <option value="MXN">MXN</option>
            <option value="MYR">MYR</option>
            <option value="NOK">NOK</option>
            <option value="NZD">NZD</option>
            <option value="PHP">PHP</option>
            <option value="PLN">PLN</option>
            <option value="RON">RON</option>
            <option value="RUB">RUB</option>
            <option value="SEK">SEK</option>
            <option value="SGD">SGD</option>
            <option value="THB">THB</option>
            <option value="TRY">TRY</option>
            <option value="USD">USD</option>
            <option value="ZAR">ZAR</option>
        </select>
        <label for="amount">Amount:</label>
        <input type="number" name="amount" id="amount" step="0.01" required>
        <button type="submit">Convert</button>
    </form>

</div>

</body>
</html>
