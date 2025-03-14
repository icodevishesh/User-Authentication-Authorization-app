# User-Authentication-Authorization-app

## Overview
This project is a user login and registration web application built using **Spring MVC** and **Spring Security**. It includes authentication and authorization functionalities with **role-based access control**, allowing different levels of user access. The application uses **MySQL** for data storage and **JDBC connectivity** for database interactions. The frontend is implemented using **JSP**.

## Features
- User Registration and Login
- Role-Based Authentication (e.g., Admin, User)
- Secure Password Handling with Encryption
- Spring Security for Authentication and Authorization
- Controller-Based Request Handling
- MySQL Database Integration
- JDBC Connectivity
- JSP for Frontend
- Session Management
- Logout Functionality

## Technologies Used
- **Backend:** Java, Spring MVC, Spring Security, XML Configuration
- **Frontend:** JSP, HTML, CSS
- **Database:** MySQL
- **Connectivity:** JDBC
- **Server:** Apache Tomcat

## Installation & Setup
### Prerequisites
Ensure you have the following installed:
- Java 8 or later
- Apache Tomcat
- MySQL
- Eclipse IDE

### Steps to Run the Project
1. **Clone the Repository:**
   ```sh
   git clone https://github.com/your-username/user-auth-spring-mvc.git
   cd user-auth-spring-mvc
   ```
2. **Set Up MySQL Database:**
   - Create a database:
     ```sql
     CREATE DATABASE user_auth;
     ```
   - Update `application.properties` with your database credentials:
     ```properties
     spring.datasource.url=jdbc:mysql://localhost:3306/user_auth
     spring.datasource.username=root
     spring.datasource.password=yourpassword
     ```
3. **Build and Run the Project:**
   - Import the project into **Eclipse IDE**.
   - Configure **Apache Tomcat** as the server.
   - Ensure all required **JAR files** are added to the `lib` folder.
   - Deploy and run the project from Eclipse.

4. **Access the Application:**
   - Open `http://localhost:8080` in your browser.

## API Endpoints
| Endpoint | Method | Description |
|----------|--------|-------------|
| `/app` | GET | Main application entry point |
| `/register` | POST | Register a new user |
| `/login` | POST | Authenticate user login |
| `/logout` | GET | Logout user |
| `/profile` | GET | View user profile |
| `/user` | GET | User-specific content (Restricted) |
| `/admin` | GET | Admin panel (Restricted) |

## Folder Structure
```
user-auth-spring-mvc/
├── src/
│   ├── main/
│   │   ├── java/com/example/
│   │   │   ├── controller/
│   │   │   ├── model/
│   │   │   ├── service/
│   │   │   ├── config/
│   │   │   ├── repository/
│   │   ├── resources/
│   │   │   ├── application.properties
│   │   ├── webapp/
│   │   │   ├── WEB-INF/
│   │   │   │   ├── views/
│   │   │   │   ├── jsp/
│   │   │   │   ├── static/
├── lib/
├── web.xml
├── README.md
```

## Contributing
Contributions are welcome! Feel free to fork the repository and submit a pull request.

---

### Contact
For any inquiries or improvements, reach out at visheshpurkait23@gmail.com

