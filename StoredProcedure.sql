USE [Nikita's Car Rental Company];
GO

CREATE PROCEDURE AssignCar(@reservationNumber BIGINT)
AS
BEGIN

	print('the process began');
	SET NOCOUNT OFF;

	DECLARE @resNum BIGINT;
	SET @resNum = @reservationNumber; -- RESERVATION_ID

	DECLARE @vinnum VARCHAR(17);
	SET @vinnum = (SELECT VIN_NUMBER FROM Reservations WHERE @resNum = RESERVATION_ID);
	 
	DECLARE @available BIT; 
	SET @available = (SELECT AVAILABLE FROM Cars WHERE VIN_NUMBER = @vinnum);

	
	IF @available = 0
	BEGIN

		print('car is not available.');
		DECLARE @location VARCHAR(30); -- needed location
		SET @location = (SELECT CAR_LOCATION FROM Cars WHERE VIN_NUMBER = @vinnum);

		DECLARE @type VARCHAR(20); -- needed car type
		SET @type = (SELECT CAR_TYPE FROM Cars WHERE VIN_NUMBER = @vinnum);

		DECLARE @newAvailableCarCount INT; -- new vin number
		SET @newAvailableCarCount = (SELECT COUNT(*) FROM (SELECT TOP 1 VIN_NUMBER FROM Cars WHERE CAR_LOCATION = @location and CAR_TYPE = @type and AVAILABLE = 1) AS c);

		IF @newAvailableCarCount > 0 -- in case we found the car in the same location and of the same type
		BEGIN 
			print('car with the same type and location was found');
			DECLARE @newAvailableCar VARCHAR(17);
			SET @newAvailableCar = (SELECT TOP 1 VIN_NUMBER FROM Cars WHERE CAR_LOCATION = @location and CAR_TYPE = @type and AVAILABLE = 1);
			UPDATE Reservations
			SET VIN_NUMBER = @newAvailableCar
			WHERE RESERVATION_ID = @resNum;
		END
		ELSE -- in case we did not find the car in the same location and of the same type
		BEGIN
			print('car with the same type and location was NOT found.');
			DECLARE @differentLocationCarCount INT;
			SET @differentLocationCarCount = (SELECT COUNT(*) FROM (SELECT TOP 1 VIN_NUMBER FROM Cars WHERE CAR_TYPE = @type and AVAILABLE = 1) AS cnt);
			IF @differentLocationCarCount > 0 -- found, update
			BEGIN
				print('car with the same type was found');
				DECLARE @differentLocationCar VARCHAR(17)
				SET @differentLocationCar = (SELECT TOP 1 VIN_NUMBER FROM Cars WHERE CAR_TYPE = @type);
				UPDATE Reservations
				SET VIN_NUMBER = @differentLocationCar
				WHERE RESERVATION_ID = @resNum;
			END
			ELSE -- not found, give discount, delete reservation
			BEGIN 
				print('nothing was found, giving discount');
				UPDATE Customers
				SET DISCOUNT = CASE WHEN DISCOUNT IS NULL THEN 0.25 ELSE DISCOUNT + 0.25 END
				WHERE CUSTOMER_ID = (SELECT CUSTOMER_ID FROM Reservations WHERE RESERVATION_ID = @resNum);
				DELETE FROM Reservations WHERE RESERVATION_ID = @resNum;
			END
		END
	END
END
GO