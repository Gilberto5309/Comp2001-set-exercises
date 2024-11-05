CREATE TABLE CW1.Trails(
    Trail_id INT IDENTITY(1,1) UNIQUE NOT NULL,
    Trail_name VARCHAR(100) NOT NULL,
    Trail_location VARCHAR(255) NOT NULL,
    PRIMARY KEY(Trail_id)
)