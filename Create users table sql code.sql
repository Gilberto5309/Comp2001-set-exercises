CREATE TABLE Cw1.Users
(
    User_id INTEGER IDENTITY(1,1) UNIQUE NOT NULL,
    Username VARCHAR(50) UNIQUE,
    Email VARCHAR(255) UNIQUE,
    User_Password VARCHAR(255),
    Created_at DATETIME NOT NULL,
    Last_login DATETIME,
    PRIMARY KEY(User_id)
);

INSERT INTO Cw1.Users(
    Username,
    Email,
    User_Password,
    Created_at,
    Last_login
)
VALUES (
    'John Smith',
    'JohnSmith007@gmail.com',
    'Noodles321',
    CURRENT_TIMESTAMP,
    NULL
);

INSERT INTO Cw1.Users(
    Username,
    Email,
    User_Password,
    Created_at,
    Last_login
)
VALUES (
    'Mark Stewart',
    'MarkStewart04@gmail.com',
    'F00ty2124',
    CURRENT_TIMESTAMP,
    NULL
);
