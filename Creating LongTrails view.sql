 CREATE VIEW LongTrails AS
 SELECT T.Trail_id, T.Trail_name, T.Trail_location, TD.Trail_length, TD.Trail_elevation, TD.Route_type
 FROM CW1.Trail_details as TD 
 JOIN CW1.Trails AS T ON TD.Trail_id = T.Trail_id
 WHERE Trail_length >= 5;