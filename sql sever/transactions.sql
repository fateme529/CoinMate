CREATE TABLE Transactions (
    transaction_id INT IDENTITY PRIMARY KEY,  
    user_id INT NOT NULL,  
    transaction_type NVARCHAR(20) NOT NULL,  
    amount DECIMAL(25,2) NOT NULL,  
    transaction_date DATETIME DEFAULT GETDATE(),  
    sender_wallet NVARCHAR(100) NOT NULL,  
    receiver_wallet NVARCHAR(100) NOT NULL,  
    FOREIGN KEY (user_id) REFERENCES users(id),  
    FOREIGN KEY (sender_wallet) REFERENCES users(walletaddress),  
    FOREIGN KEY (receiver_wallet) REFERENCES users(walletaddress),  
    CONSTRAINT CHK_TransactionType CHECK (transaction_type IN ('Deposit', 'Withdrawal'))
);
