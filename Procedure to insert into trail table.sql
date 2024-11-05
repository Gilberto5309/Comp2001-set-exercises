CREATE PROCEDURE CW1.InsertIntoTrail @TrailName VARCHAR(100), @TrailLocation VARCHAR(255)
AS
BEGIN
    BEGIN TRANSACTION;

    BEGIN TRY
        INSERT INTO CW1.Trails(
            Trail_name,
            Trail_location
        )
        VALUES(
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