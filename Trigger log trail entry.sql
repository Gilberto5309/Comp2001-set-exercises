CREATE TRIGGER CW1.LogTrailAddition
ON CW1.Trails 
AFTER INSERT
AS
BEGIN

    DECLARE @current_user VARCHAR(100); 
    SET @current_user = CURRENT_USER;


    INSERT INTO CW1.trail_log(trail_id, trail_name, added_by)
    SELECT trail_id, trail_name, @current_user
    FROM CW1.Trails;

END 

