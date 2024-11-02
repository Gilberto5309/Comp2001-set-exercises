CREATE TABLE CW1.trail_log (
    log_id INT NOT NULL UNIQUE,
    trail_id INT NOT NULL UNIQUE,
    trail_name VARCHAR(255),
    user_id int,
    username VARCHAR(255),
    added_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (trail_id) REFERENCES CW1.Trails(Trail_id)
);
