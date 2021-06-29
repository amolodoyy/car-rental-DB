USE [Nikita's Car Rental Company];
GO

-- Cars
CREATE NONCLUSTERED INDEX IX_CARS_FK_EMPLOYEE_ID	-- FK; not unique since I assume 1 employee can be responsible for
ON Cars (EMPLOYEE_ID);								-- multiple cars

CREATE NONCLUSTERED INDEX IX_CARS_CAR_LOCATION		-- quite a good idea because it will be used in task 5 
ON Cars (CAR_LOCATION);								

CREATE NONCLUSTERED INDEX IX_CARS_MILEAGE			-- used in task 4
ON Cars (MILEAGE);

-- Customers

CREATE NONCLUSTERED INDEX IX_CUSTOMERS_FirstLastName -- not unique because there may be customers with same name and surname
ON Customers (FIRST_NAME, LAST_NAME)				 -- is composite since we are always interested in person's first and last name
													 -- not only one of them

-- DriverInfo

CREATE NONCLUSTERED INDEX IX_DRIVERINFO_CUSTOMER_ID -- FK, not unique because 1 person may have different credit cards
ON DriverInfo (CUSTOMER_ID);


-- PriceList

CREATE NONCLUSTERED INDEX IX_PRICELIST_CAR_TYPE -- task 5
ON PriceList(CAR_TYPE);

-- Reservations

CREATE NONCLUSTERED INDEX IX_RESERVATIONS_VIN_NUMBER -- FK
ON Reservations(VIN_NUMBER);

CREATE NONCLUSTERED INDEX IX_RESERVATIONS_CUSTOMER_ID -- FK
ON Reservations(CUSTOMER_ID);
-- Rentals

CREATE NONCLUSTERED INDEX IX_RENTALS_VIN_NUMBER -- FK
ON Rentals(VIN_NUMBER);

CREATE NONCLUSTERED INDEX IX_RENTALS_CUSTOMER_ID -- FK
ON Rentals(CUSTOMER_ID);

CREATE NONCLUSTERED INDEX IX_RENTALS_DISTANCE	-- to quickly sort by distance (task 4.3 , 4.4 , 4.5)
ON Rentals(DISTANCE);

CREATE NONCLUSTERED INDEX IX_RENTALS_RENTAL_DATE  -- task 4
ON Rentals(RENTAL_DATE)

CREATE NONCLUSTERED INDEX IX_RENTALS_RETURN_DATE -- task 4
ON Rentals(RETURN_DATE);

