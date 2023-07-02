
# Đồ án Thiết kế phần mềm
![os](https://img.shields.io/badge/-android-32DE84)
![framework](https://img.shields.io/badge/-dart-2196F3)
![framework](https://img.shields.io/badge/-flutter-2196F3)

<br>

<p align="center">
 <img src="./assets/images/onboard3.png" alt="ViPT Logo" height = "400"></a>
</p>
<p align="center">
<b>Flight Booking</b>
<br/>
</p>

## 📄 Introduction
Flight Booking is a web application for managing airports and flights. Users can book flights using the mobile app.
## 📲All Features

### 🖱️Account
* Each Admin or User is provided with an account for login purposes.
* There is a feature to recover a forgotten account by entering an email and sending a recovery email.
* Registering a new account will generate a verification code sent to the email.
##Admin
#### 🐼Overview
* Admins have the ability to view an overview of airport and flight information.
* Various statistics and data are presented through charts and graphs.
#### ✈️Flight 
* Admins can view a list of flights.
* They can also access detailed information about each flight, including general information, ticket types, and the flight itinerary.
* Admins can add new flights to the system.
* They have the ability to delete flights.
* Admins can edit existing flight information.
* They can view the list of stopovers for a specific flight.
* Admins can add the quantity and price for each ticket type of a particular flight.
* They can search for flights by name.
* Admins can paginate the list of flights, displaying a limited number of flights per page for easier navigation and improved performance.
* Admins can filter flights by airline, departure location, and destination.
#### 🛬Airport
* Admins can view a list of airports.
* They can access detailed information about each airport, including general information, incoming and outgoing flights, and upcoming flights.
* Admins can display the list of airports sorted by name.
* They can paginate the airport list, displaying a limited number of airports per page.
* Admins have the ability to add new airports, with the option to utilize an API that supports Vietnamese provinces and cities to add destinations for flights.
* They can edit existing airport information.
* Admins can delete airports from the system. System will show dialog of all cofig flight. Admin should change to another airport of flight.
#### 💂‍♀️Customemr 
* Admins can view a list of customers.
* They have the ability to add new customers to the system.
* Admins can view detailed information about each customer, including general information and their most recent purchase invoice.
* They can display a list of invoices and flight information associated with each invoice.
* Admins can delete customers from the system.
* They can also edit customer information.
#### 💵Ticket
* Admins can view a list of flight tickets available for each flight.
* They can access the list of ticket types for each flight.
* The system supports both list view and grid view for displaying flight tickets.
* Admins can add new flight tickets to the system.
* They can view flight tickets in a seat map format, displaying the seating arrangement for each flight.
* Admins have the ability to book flight tickets.
* They can select the payment method for ticket bookings.
#### 🐸Payment
* Admins can view a list of invoices.
* They have the ability to edit invoices.
* Admins can access detailed information about each invoice.
* They can delete invoices from the system.
* Admins can process payments for invoices that are still outstanding.
* The system provides a chart to display revenue and sales data.
#### 🐛Setting
* Admins can edit their personal information.
* They have the ability to change their password.
* Admins can modify the system's rules and regulations.

## Employee
#### Same aAdmin


## Customer 
* Users can view a list of flights.
* They can access a list of airports.
* Users have the ability to book flight tickets online.
* They can edit their credit card information.
* Users can add items to a wishlist or favorites list.



## 💻 Tech
* Language: Dart, java
* Framework: Flutter
* Database: MySQl
* Backend: SpringBoot

## 👨‍💻 Members
* Nguyễn Minh Hưng: 20120491
* Trương Huỳnh Đức Hoàng: 20120483
* Data: Lê Xuân Huy - 20120495
* Data and support backend: Trần Nhât Nguyên - 20120340

## 💻Backend
https://github.com/nguyenminhhung2011/dream-ticket

## 🐼 Layer
* The project applies the clean architecture principles to implement the code.

```
lib/

|- data/
|  |- repositories/  => providing data access
|  |- models/ => representing data structures
|  |- datasources/ => used to communicate with data sources such as a database or API
|     |- local/ 
|     |- remote/ 
|
|- domain/
|  |- repositories/ => communicating with the data.repositories layer
|  |- entities/ => representing objects within the application
|  |- usecases/ => contains the implementation of the application's use cases
|
|- presentation_mobile/
|- presentation/
|  |- screens/ 
|  |- widgets/
|  |- bloc/
|     |- model_state.dart
|     |- state.dart
|     |- event.dart
|     |- bloc.dart
|- app.dart
|- main.dart

```
## 🐸Configuration file.

``` dart
|- configurations/
|  |- env/
|     |- env_prod.dart
          final Map<String, dynamic> environmentProd = {
            'name': 'Flight Booking',
            'environment': 'prod',
            'baseUrl': 'http://192.168.1.104:8080/',
            'mode': 'mobile', // => change web for web version and change to mobile for mobile version 
          };
|  |- configurations.dart 
|  |- defautl_config.dart
```

## 📱 UI
### 💻Web

|  Page1 | Page2 | Page3 | 
|:--:|:--:|:--:|
|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/6592abf3-fb97-45f3-abbc-371af925aa63)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/1f874db4-0faf-4fd0-9ce5-4d37d6630893)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/8bc6133b-ed4a-4111-916c-91507db94e1b)|
|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/b1f92f11-0578-4317-b7f4-d46bc146d1c5)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/be525aa4-2659-4284-be07-f4d7ab3fe511)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/4707ea49-7a2f-4d60-ad8c-b4bb7a20c9b3)|
|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/263ae9fa-5297-4439-b20f-2414955f522a)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/508e739f-8d66-4c61-9d1d-244e6d0d9da8)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/076f755c-c310-40ac-9ac4-aa5f22738f26)|
|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/705e41de-fc33-4632-b7d8-1c12fafd519d)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/c3580f74-14a4-4167-89db-5ed0c8fd3e41)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/987dbcf0-043b-418e-8db6-c6d0a7c1b587)|
|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/76c084c7-be07-468e-87fa-48d49d939385)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/f0422882-351d-464c-9e63-dca82a919f0f)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/bbc139f9-8e0c-421f-9df7-8baf76c9721f)|
|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/1b89ef9c-b535-4642-bbaa-4e80f19d3375)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/a9744447-12ba-4edb-8c36-849e1153f2fc)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/1bbb71ae-f2eb-460c-8d37-48522735b3b1)|
|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/427a3b8b-a3b9-4470-9537-93532252d5aa)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/67a75822-750b-44ec-82cc-b6ad01228802)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/0d6b050e-f07b-4a2c-b144-7ceb87c4d8e0)|
|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/ffb83849-e5f3-456b-a288-24754f72573e)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/dbe188ae-9f42-488a-9561-925fb781e174)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/38465d5c-b69a-43a4-bd09-d9776d41a6c2)|
|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/2bfdffe5-a56e-4311-a9bf-148ee5d7950e)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/4910d8ad-017c-4669-967d-3ae3b7cd37cd)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/f820474a-0ef8-49b6-9c63-3b8251b4afb0)|

### 🐳Mobile
|  Light1 | Dark1 | Light2 | Dark2 | Light3 | Dark3 | 
|:--:|:--:|:--:|:--:|:--:|:--:|
|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/4b009430-cb31-4c67-ac9c-27827d4fa5fc)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/a90dfa21-d2e9-4f5b-9d70-3e16fdd6c629)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/bcc33bad-2a61-4307-9469-0d0434a96a43)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/9d9ca3a9-3918-4bc7-ab01-91dc1fcef49b)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/845167a9-0e54-4c02-90a8-68f23861a391)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/85c9e589-e6f0-4591-8f90-b4687e1dcc75)|
|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/9f60e2bb-756c-4c07-a5d4-beccf16a381d)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/5322372e-f1e6-4fd8-90c4-faa9c4ef0a64)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/d385221d-a46c-4be1-9baa-2abd79a403d2)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/ed04c487-9b85-4105-87ea-465a9791a664)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/93e9cddf-94c6-451a-a4ad-c09167b299cf)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/2184f167-a2e7-4d24-91a8-2b5a8ba2f7c8)|
|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/557ff7d9-e237-4b3c-aa93-c36b324192c2)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/7a7d9912-cdd5-483d-ae90-d26e22e4c67d)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/1587ae6b-6287-4b68-9aa3-832c34cbcea6)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/434c544c-3857-4d18-b52b-6d787842ecfb)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/4e8da382-6d09-4ef1-95e8-367d0748145d)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/9c6bd3ce-8aff-4ddb-8132-90c21f29c553)|
|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/e331b478-3ff8-4349-a970-eac7248fb7af)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/92bd4aeb-ce66-475b-8e53-87169326e071)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/b1eeee45-bfcf-4987-a291-23c611cec590)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/75e9961b-ec17-45b2-9a2e-b3e19ea7d957)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/2bca7c06-4afb-4343-a5b1-dda794851094)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/0a1438ce-3d6d-40e4-9b26-1967da77fc9d)|
|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/cfca09a0-08d9-4d71-b515-c758b5e0f930)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/390999a8-9903-4010-a8e8-eb941547a5a6)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/fb1bc845-78af-40da-ad6c-cde1c3cc669d)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/bd260814-e643-481a-91a4-b8441ce8f768)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/ef6bae30-de47-49a2-830d-590d6b23a34c)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/f2455f53-a2bf-4760-ac8c-69b3685cb6e1)|
|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/644201d6-35dd-40b7-b1c1-defd2eba2142)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/50b6b8f8-448e-40ae-842b-c3866028e17d)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/17fe63ca-03cc-4f15-b0bc-c20ea206f8b2)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/f30bac52-fa04-419e-896d-981fa0cb4595)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/6921c497-4906-4a41-b0bc-c12f7b402226)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/50f05611-0072-48ec-ade4-0af35bb8ecc5)|
|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/d1c77fb7-03b6-4496-9b52-bea48b60d11d)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/c14851a0-615f-4e92-8b4f-8ead491f0c3d)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/9c66f2cf-4f5f-4cb3-8e3b-930d5a1267ae)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/f0748462-3788-4258-9170-1ec588f5d8c6)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/29afe653-3d4e-4b41-af73-5b9f3e505299)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/81930065-6da3-4836-a5cc-44167eb38948)|
|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/c4903547-6dbf-434b-9b4f-59dd3f4cea94)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/9aa2a6c0-f0c7-4307-b744-a366db0f4730)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/af0df2a6-95c1-4987-85a8-564ffcbc3fc1)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/9c7d0a0d-2f94-4ccb-a595-4eb1a68fe401)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/eadeed24-1a56-4b56-9a60-e1a51c85a85e)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/11dd7f56-2832-4770-94d9-17fbe85f2c73)|
|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/b928fada-8524-49c6-b8b4-398b97b6cf2b)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/8e538f57-d170-4c40-bdf3-ff13eed935df)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/be259e13-2c47-4815-a8c6-fd4d9c835a36)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/811cb977-d85b-4e7e-8ec9-fe457a0d80b5)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/a854a6ff-9bae-4e66-8db5-2b8967d69fe9)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/44f88daa-9728-43f9-90d4-57039200f3eb)|
|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/91ec3197-7964-41e3-9a24-28ac76c60af7)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/456aa315-5c91-4d15-9b57-6d3c52b50929)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/7cad54fe-e012-4822-a45f-225e8dde5acf)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/78ea1ae6-908f-4516-af75-37aa81de4fe4)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/55bda327-3ccb-400a-accc-6156768c5926)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/1863f5f6-f6bb-4802-a528-6275f10c16f5)|
|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/82b166bc-4fc4-43c5-8ccb-80de08d6c143)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/ab92fd1d-0aa9-41bc-b18f-491c341b7950)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/925ac82a-561c-42dc-a0ba-090ba141622a)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/aa801968-a793-495a-86bd-f6021f1b9e05)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/52f63e5b-59bd-4587-96f8-2fc87d5aec92)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/f426a73c-8945-4cdd-a0cc-6fe669ae723c)|
|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/14025201-47e3-42ae-964d-a903c3a0b886)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/b51b92d8-f4fc-4176-8553-f11e8f7f0018)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/4458dfa2-3d7a-45d1-b3d8-7ac23253ecc3)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/5d429911-dd49-4720-a104-246b9d692744)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/c618b225-65d2-4720-a955-b2ccc8c6cd84)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/facf062b-9924-40a6-a393-6a55f0f8acc2)|
|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/95a5198b-9943-4e5b-88ca-936749f83e32)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/586405ae-1751-4386-ae08-d440a566cb8b)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/b2cbb481-2f8b-4a1b-ac5b-856228c99fed)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/3b07a23d-715b-49aa-b9d2-cf51f3388015)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/dceec965-e565-456b-8f12-f1be39bd2c2d)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/a92086a1-95e7-45cd-bcd8-e321b0fafaf0)|
|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/fcf535c4-32d6-47b7-923c-1c83ee1fccdc)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/747c3fc0-2531-4d59-be01-7ca145d9cd82)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/1c33f013-6fd8-48ad-b969-5fecb0beadd7)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/3a143e7a-9514-41fb-9fed-7bf5bdbdb2af)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/56cf618f-c49c-418f-afd1-cd184bace726)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/cb4648fd-22a3-4a14-b2f3-c9f2ab9e614b)|
|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/504d0497-e74f-4358-a852-4e89c5f64a9f)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/c06f8d95-be74-4870-aaee-2cb37b959be3)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/39f19324-bab4-4371-8c66-ecb3b8169cab)|![image](https://github.com/nguyenminhhung2011/Flight-Booking/assets/90996598/4d6d3758-7a84-4dd2-a11c-fbd163ed76d5)|||


## 📺 Video demo
https://www.youtube.com/watch?v=Jsqp5dMqoac




