CREATE TABLE Messages (
    id INT IDENTITY PRIMARY KEY, 
    from_user_wallet NVARCHAR(100) NOT NULL, 
    to_user_wallet NVARCHAR(100) NOT NULL, 
    content NVARCHAR(MAX) NOT NULL,  
    timestamp DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (from_user_wallet) REFERENCES users(walletaddress),  
    FOREIGN KEY (to_user_wallet) REFERENCES users(walletaddress) 
);
