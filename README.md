# codsoft_task4
# Currency Converter Application
💱 Currency Converter Web Application
A real-time currency converter web application built using Spring Boot. This application enables users to select currencies, input an amount, and view the converted result using live exchange rates fetched from an external API.

🌍 Features
Currency Selection: Users can choose a base currency and a target currency from a dropdown list.

Real-Time Exchange Rates: Fetches up-to-date conversion rates from a reliable third-party API (e.g., exchangerate-api.com or exchangeratesapi.io).

Amount Input: Allows users to enter the amount they wish to convert.

Live Conversion: Instantly converts the amount from the base to the target currency using current rates.

Result Display: Shows the converted amount along with the appropriate currency symbol or code.

🏗️ Tech Stack
Layer	Technology
Backend	Spring Boot, Java
Frontend	jsp/ CSS
API Access	RestTemplate(Spring)
Build Tool	Maven
Data Format	JSON

⚙️ How It Works
User selects a base and target currency from dropdowns.

User enters an amount to convert.

The app sends a request to a live exchange rate API.

Exchange rate is retrieved and the amount is converted.

Result is displayed with currency symbol (e.g., ₹, $, €).

