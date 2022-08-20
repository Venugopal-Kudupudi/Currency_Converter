# Currency_Converter

Title : Currency Converter

Objective : To provide the client with Realtime Exchange rates of currency.

Description : This application will ask the users select the countries for which they want to know the excchange rates. and ask him to enter the value. Based on the input given realtime exchange rates will be provided.

Technologies Used : HTML, CSS, JavaScript, Java, Springboot, REST API.

Challenges : The main challlenge in fetching the Currency rates from the API providers is, limitation of API Requests per month, as i opted for free subscription only.

Solution : To overcome the above challenge, I have used Singleton Design patteren, with this I'm fetching the data from API layer Only for First time and I am reuseing the same data for the next conversions by storing the values in a local object.
![Currency_Converter-1](https://user-images.githubusercontent.com/110471357/185733976-857f6495-7ebc-446c-a1f2-d811ed2967a5.png)
![Currency_Converter-2](https://user-images.githubusercontent.com/110471357/185733986-00c705fa-4533-4992-92bf-2ace9ee8cbb6.png)
![Currency_Converter-3](https://user-images.githubusercontent.com/110471357/185734003-5ea79b01-b7a2-45ae-8c0b-2c89bf5f3e40.png)
![Currency_Converter-4](https://user-images.githubusercontent.com/110471357/185734006-fe74d5f0-c2e1-49a3-a783-adff783ddd81.png)
![Currency_Converter-5](https://user-images.githubusercontent.com/110471357/185734009-5a759ce9-b3b8-4797-b23d-dc746db0dd46.png)
