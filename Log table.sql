CREATE TABLE CW1.trail_log (
    log_id INT IDENTITY(1,1) UNIQUE NOT NULL,
    trail_id INT NOT NULL,
    trail_name VARCHAR(255),
    added_by VARCHAR(255),
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
    PRIMARY KEY(log_id),
    FOREIGN KEY (trail_id) REFERENCES CW1.Trails(Trail_id)
);