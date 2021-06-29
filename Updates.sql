USE [Nikita's Car Rental Company];
GO

UPDATE PriceList
SET DAILY_LIMIT = DAILY_LIMIT + 15
WHERE CAR_TYPE = 'Coupe'; 

UPDATE Rentals  
SET RESTRICTIONS = NULL 
FROM Rentals
INNER JOIN Customers ON Rentals.CUSTOMER_ID = Customers.CUSTOMER_ID
WHERE Customers.PHONE_NUMBER = '+4389546948503'; 

UPDATE Employees
SET FIRST_NAME = 'Igor'
WHERE LAST_NAME = 'Kelt';

UPDATE Rentals
SET DISTANCE = DISTANCE + 100
FROM Rentals
INNER JOIN Cars ON Rentals.VIN_NUMBER = Cars.VIN_NUMBER
WHERE Cars.CREATION_YEAR < 2006









