CREATE TABLE Cw1.Trail_details(
    Trail_id INT IDENTITY(1,1) UNIQUE NOT NULL,
    Trail_length DECIMAL(4, 2) NOT NULL,
    Trail_elevation INTEGER NOT NULL,
    Route_type VARCHAR(20) NOT NULL,
    PRIMARY KEY(Trail_id),
    FOREIGN KEY(Trail_id) REFERENCES Cw1.Trails(Trail_id)
);
