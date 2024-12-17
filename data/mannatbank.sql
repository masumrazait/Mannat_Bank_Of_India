CREATE DATABASE mannatbank;

USE mannatbank;

-- Users Table
CREATE TABLE users (
    user_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(255),
    account_type VARCHAR(50),
    balance DOUBLE
);

-- Transactions Table
CREATE TABLE transactions (
    transaction_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT,
    type VARCHAR(20),
    amount DOUBLE,
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Loans Table
CREATE TABLE loans (
    loan_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT,
    loan_type VARCHAR(50),
    loan_amount DOUBLE,
    interest_rate DOUBLE,
    tenure_months INT,
    status VARCHAR(20),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Dummy Data
INSERT INTO users (name, email, password, account_type, balance)
VALUES ('Rahul Sharma', 'rahul@gmail.com', 'password123', 'Savings', 50000.0),
       ('Anita Verma', 'anita@gmail.com', 'pass456', 'Current', 80000.0);

INSERT INTO transactions (user_id, type, amount) VALUES (1, 'Credit', 10000.0), (1, 'Debit', 2000.0);

INSERT INTO loans (user_id, loan_type, loan_amount, interest_rate, tenure_months, status)
VALUES (1, 'Home Loan', 500000.0, 7.5, 240, 'Active');
