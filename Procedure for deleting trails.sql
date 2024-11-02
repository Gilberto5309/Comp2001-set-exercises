CREATE PROCEDURE CW1.DeleteTrail @TrailID INT
AS
BEGIN
    BEGIN TRANSACTION;

    BEGIN TRY
        DELETE FROM CW1.Trails WHERE Trail_id = @TrailID;
        DELETE FROM CW1.Trail_details WHERE Trail_id = @TrailID;
        DELETE FROM CW1.Progress WHERE Trail_id = @TrailID;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;