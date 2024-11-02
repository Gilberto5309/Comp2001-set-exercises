CREATE PROCEDURE CW1.UpdateTrail
    @Trail_id INT,
    @NewTrailName VARCHAR(100),
    @NewTrailLocation VARCHAR(255),
    @NewTrailLength DECIMAL (4,2),
    @NewTrailElevation INT,
    @NewRouteType VARCHAR(20),
    @NewTrailProgressPercentage DECIMAL

AS 
BEGIN
    BEGIN TRANSACTION;

    BEGIN TRY  
        UPDATE CW1.Trails
        SET Trail_name = @NewTrailName,
            Trail_location = @NewTrailLocation
        WHERE Trail_id = @Trail_id

        UPDATE CW1.Trail_details
        SET Trail_length = @NewTrailLength,
            Trail_elevation = @NewTrailElevation,
            Route_type = @NewRouteType
        WHERE Trail_id = @Trail_id

        UPDATE CW1.Progress
        SET Progress_percentage = @NewTrailProgressPercentage
        WHERE Trail_id = @Trail_id

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;