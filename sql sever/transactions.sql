CREATE TABLE transactions (
    transaction_id INT IDENTITY PRIMARY KEY, 
    user_id INT FOREIGN KEY REFERENCES users(id), 
    Type NVARCHAR(20),  
    amount DECIMAL(25,2) NOT NULL,  
    transaction_date DATETIME DEFAULT GETDATE(),  
    senderwallet NVARCHAR(100),  
    receiverwallet NVARCHAR(100) 
);
