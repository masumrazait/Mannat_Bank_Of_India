# **Mannat Bank of India - Spring Boot Application**

Mannat Bank of India is a banking application built using Spring Boot, which handles user authentication, transactions, and loan management. The application provides a simple and secure way to manage user accounts, perform financial transactions, and request loans.

## **Project Overview**

This project is designed to simulate basic banking operations and provide a secure platform for users to:

- Register, log in, and manage their user profiles.
- View and manage their account transactions.
- Apply for loans with different options and track loan status.

The application consists of a back-end implemented using Spring Boot, with RESTful APIs to manage user authentication, transactions, and loan management. It also provides a simple front-end UI for users to interact with the system.

## Project Structure
```plaintext
Mannat-bank-of-India
│
├── src/main/java/com/mannatbank
│   ├── entity
│   │   ├── User.java
│   │   ├── Transaction.java
│   │   ├── Loan.java
│   │   └── Beneficiary.java
│   │
│   ├── repository
│   │   ├── UserRepository.java
│   │   ├── TransactionRepository.java
│   │   └── LoanRepository.java
│   │
│   ├── service
│   │   ├── UserService.java
│   │   └── TransactionService.java
│   │
│   ├── controller
│   │   ├── UserController.java
│   │   └── TransactionController.java
│   │
│   └── MannatBankApplication.java
│
├── src/main/resources
│   ├── application.properties
│
└── pom.xml
```


### **Key Components:**
1. **Entities**: Defines the core data models like `User`, `Transaction`, and `Loan`.
2. **Repositories**: Interfaces for database operations using Spring Data JPA.
3. **Services**: Business logic layer to handle core operations for users, transactions, and loans.
4. **Controllers**: REST controllers that expose APIs for user authentication, transactions, and loan requests.
5. **Frontend**: Simple HTML, CSS, and JavaScript for the UI, allowing users to interact with the bank's core features.



## **Features**

- **User Authentication:**
  - User registration and login functionality.
  - Password hashing for secure authentication.
  - Role-based access control.

- **Transaction Management:**
  - Ability to transfer funds between user accounts.
  - View transaction history.
  - Deposit and withdraw money securely.

- **Loan Management:**
  - Apply for personal loans.
  - Track loan application status.
  - Loan approval and repayment functionality.

---

## **Technologies Used**

- **Backend:**
  - Spring Boot
  - Spring Data JPA
  - Spring Security (for authentication and authorization)
  - H2 Database (for development purposes, can be switched to other databases like MySQL or PostgreSQL)
  - Thymeleaf (for rendering HTML templates)

- **Frontend:**
  - HTML
  - CSS
  - JavaScript

- **Build Tool:**
  - Apache Maven

---

## **Installation**

To set up the project locally, follow these steps:

### **Step 1: Clone the repository**
```bash
git clone https://github.com/yourusername/mannat-bank-of-india.git
cd mannat-bank-of-india
