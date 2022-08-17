![Screenshot (15)](https://user-images.githubusercontent.com/110471357/184891384-076c21fa-fa60-4c81-b025-42a5cf43ae20.png)
![Screenshot (14)](https://user-images.githubusercontent.com/110471357/184891403-83c4eee3-7152-42aa-bd52-f24177572533.png)
![Screenshot (13)](https://user-images.githubusercontent.com/110471357/184891412-cf02a6f9-a034-4186-b63e-4ca48d60195c.png)
![Screenshot (12)](https://user-images.githubusercontent.com/110471357/184891423-4e0793a1-4729-4d14-9059-0287d1792308.png)
#Currency_Converter

Title : Currency Converter

Objective : To provide the client with Realtime Exchange rates of currency.

Description : This application will ask the users select the countries for which they want to know the excchange rates. and ask him to enter the value. Based on the input given realtime exchange rates will be provided.

Technologies Used : HTML, CSS, JavaScript, Java, Springboot, REST API.

Challenges : The main challlenge in fetching the Currency rates from the API providers is, limitation of API Requests per month, as i opted for free subscription only.

Solution : To overcome the above challenge, I have used Singleton Design patteren, with this I'm fetching the data from API layer Only for First time and I am reuseing the same data for the next conversions by storing the values in a local object.
