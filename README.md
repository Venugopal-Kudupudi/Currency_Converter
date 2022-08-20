# Currency_Converter

Title : Currency Converter

Objective : To provide the client with Realtime Exchange rates of currency.

Description : This application will ask the users select the countries for which they want to know the excchange rates. and ask him to enter the value. Based on the input given realtime exchange rates will be provided.

Technologies Used : HTML, CSS, JavaScript, Java, Springboot, REST API.

Challenges : The main challlenge in fetching the Currency rates from the API providers is, limitation of API Requests per month, as i opted for free subscription only.

Solution : To overcome the above challenge, I have used Singleton Design patteren, with this I'm fetching the data from API layer Only for First time and I am reuseing the same data for the next conversions by storing the values in a local object.
