CREATE TABLE users (
    id INT IDENTITY PRIMARY KEY, 
    username NVARCHAR(100) UNIQUE NOT NULL, 
    passwordhash NVARCHAR(256) NOT NULL, 
    walletaddress NVARCHAR(100) UNIQUE NOT NULL, 
    balance DECIMAL(25,2) DEFAULT 0 
);

