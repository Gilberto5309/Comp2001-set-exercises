CREATE PROCEDURE CW1.InsertIntoTrail @TrailId INT, @TrailName VARCHAR(100), @TrailLocation VARCHAR(255)
AS
BEGIN
    BEGIN TRANSACTION;

    BEGIN TRY
        INSERT INTO CW1.Trails(
            Trail_id,
            Trail_name,
            Trail_location
        )
        VALUES(
            @TrailId,
            @TrailName,
            @TrailLocation
        )

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;