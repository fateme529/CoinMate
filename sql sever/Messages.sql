CREATE TABLE Messages (
    id INT IDENTITY PRIMARY KEY,  
    from_user_id INT NOT NULL,  
    to_user_id INT NOT NULL,  
    content NVARCHAR(MAX) NOT NULL,  
    timestamp DATETIME DEFAULT GETDATE(),  
    FOREIGN KEY (from_user_id) REFERENCES users(id),  
    FOREIGN KEY (to_user_id) REFERENCES users(id)  
);
