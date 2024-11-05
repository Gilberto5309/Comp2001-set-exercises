CREATE TABLE CW1.Progress(
    User_id INTEGER  NOT NULL,
    Trail_id INTEGER  NOT NULL,
    Progress_percentage DECIMAL
    PRIMARY KEY(User_id, Trail_id)
    FOREIGN KEY (User_id) REFERENCES CW1.Users(User_id), 
    FOREIGN KEY (Trail_id) REFERENCES CW1.Trails(trail_id)
)