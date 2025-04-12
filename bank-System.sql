-- Creating Customer Table
CREATE TABLE Customer (
    CustomerID VARCHAR(20) PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100)
);

-- Creating Account Table
CREATE TABLE Account (
    AccountNumber VARCHAR(20) PRIMARY KEY,
    CustomerID VARCHAR(20),
    Balance DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Inserting sample data
INSERT INTO Customer (CustomerID, Name, Email) VALUES ('C001', 'Arun Kumar', 'arun@example.com');
INSERT INTO Account (AccountNumber, CustomerID, Balance) VALUES ('A001', 'C001', 5000.00);

-- Sample query to get account info
SELECT c.Name, a.AccountNumber, a.Balance
FROM Customer c
JOIN Account a ON c.CustomerID = a.CustomerID;
