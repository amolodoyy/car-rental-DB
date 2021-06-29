USE [Nikita's Car Rental Company];
GO

INSERT INTO Employees
(FIRST_NAME, LAST_NAME)
VALUES
('Alex', 'Kelt'),
('Ivan', 'Ivanov'),
('Nikita', 'Amol'),
('John', 'Smith'),
('Yaroslav', 'Suslin'),
('Adam', 'Mickiewicz'),
('Taras', 'Shevchenko'),
('Winston','Churchill')

INSERT INTO Cars
(VIN_NUMBER, MAKE, MODEL, CREATION_YEAR, CAR_TYPE, CAR_LOCATION, EMPLOYEE_ID, MILEAGE, AVAILABLE)
VALUES 
('AA2AAAAAAABB4BBCC', 'ZX35', 'Chevrolet', 2005, 'Sedan', 'Warsaw', 1, 15285, 1),
('PP3PPKKKKKLLLLLA8', 'L200', 'Toyota', 2005, 'Pickup', 'Wroclaw', 4, 85678, 1),
('NIKITAAMOLTHEBEST', 'Gallardo', 'Lamborghini', 2013, 'Supercar', 'Kyiv', 3, 10000, 0),
('YAROSLAVSUSLINTOP', 'F430', 'Ferrari', 2009, 'Supercar', 'Kyiv',5,9999,0),
('O123KPRTOE35MVVCR', 'Impreza', 'Subaru', 2007, 'Hatchback', 'Gdansk', 2, 23987, 1),
('TE1IN4FEKTROANSXI', 'Mustang', 'Ford', 2010, 'Coupe', 'Krakow', 6, 104932, 1)

INSERT INTO Customers
(FIRST_NAME, LAST_NAME, CUSTOMER_ADDRESS, PHONE_NUMBER, CUSTOMER_EMAIL, CUSTOMER_CITY, DISCOUNT)
VALUES
('Sergei', 'Brin', '3rd street 21, Los Angeles', '+15559993219', 'sergeibrin@someemail.com', 'Warsaw', NULL),
('Alexander', 'Thegreat', 'Big street 55, London', '+232403495930', NULL, 'Wroclaw', NULL),
('Roman', 'Romanov', 'Witney street 1, Witney', '+2549773298894', 'roman@email.ua', 'Kyiv', NULL),
('Will', 'Smith', 'Cisowa street 228, Krakow', '+489205856891', 'willsm@rrr.pl', 'Krakow', NULL),
('Max', 'Vovk', 'Heroiv Dnipra street 21, Kyiv', '+380934567129', 'maxvovk@icloudik.com', 'Kyiv', NULL),
('Paul', 'Smith', 'Wawelska street 41, Gdansk', '+480238282911', NULL, 'Gdansk', NULL),
('Dima', 'Amol', 'Heroiv Stalingrada street, Kyiv', '+380932194371', 'dmitryoj@icloudik.com', 'Warsaw', 0.1),
('Anastasia', 'Sorochenko', 'Blyadei street, Paris', '+38034982375', NULL, 'Wroclaw', NULL),
('Alina', 'Sobaka', 'Majowa street, Gdansk', '+4389546948503', 'sobaka@iii.ua', 'Gdansk', 0.1),
('Julia', 'Korot', 'Pusta street, Gdansk', '+85638023829323', 'juliajulia@email.pl', 'Krakow', NULL) 


INSERT INTO DriverInfo 
(DRIVER_LICENSE, CREDIT_CARD, CUSTOMER_ID)
VALUES
('abcd1234', '4444555566667777', 1),
('qwerty78', '5678111133334545',2),
('yui2ip3455', '4333222109094471',3),
('ere12nvs', '5887531954719341',4),
('gby348ne9', '4927395710562847',5),
('lcweunv2', '5789024592075647',6),
('78ffaaovr', '5900262367898712',7),
('567dfvn22', '4567987623801843', 8),
('238bvu277', '5467728492732938',9),
('347r8gbv', '4959995992919999',10)

INSERT INTO PriceList
(CAR_TYPE, DAILY_RATE, WEEKLY_RATE, DAILY_LIMIT, EXTRA_FEE)
VALUES
('Sedan', 35.50, 249.50, 50, 9.99),
('Supercar', 149.9, 999.9, 75, 29.99),
('Coupe', 45.90, 380, 60, 13.99),
('Pickup', 55.90, 420, 100, 10.49),
('Hatchback', 39.99, 290, 55, 10.99)


INSERT INTO Reservations
(VIN_NUMBER, RESERVATION_DATE, PICKUP_LOCATION, RETURN_LOCATION, CUSTOMER_ID)
VALUES
('AA2AAAAAAABB4BBCC', '20210423 11:14:43 AM', 'Warsaw', 'Warsaw', 1),
('AA2AAAAAAABB4BBCC', '20210313 07:17:36 PM', 'Wroclaw', 'Kyiv', 2),
('TE1IN4FEKTROANSXI', '20201226 08:09:22 AM', 'Gdansk', 'Krakow', 3),
('PP3PPKKKKKLLLLLA8', '20210201 05:20:03 AM', 'Kyiv', 'Gdansk', 4),
('NIKITAAMOLTHEBEST', '20210521 02:03:04 PM', 'Kyiv', 'Kyiv', 5),
('O123KPRTOE35MVVCR', '20210418 05:03:12 PM', 'Warsaw', 'Wroclaw', 6)

INSERT INTO Rentals
(VIN_NUMBER, RENTAL_DATE, PICKUP_LOCATION, RETURN_LOCATION, CUSTOMER_ID, RESTRICTIONS, DISTANCE, RETURN_DATE)
VALUES
('AA2AAAAAAABB4BBCC', '20210518 02:03:00 AM', 'Kyiv', 'Kyiv', 1, 'KM Limit: 200 km', 43, '20210520 02:03:00 AM'),
('NIKITAAMOLTHEBEST', '20210521 02:03:04 PM', 'Kyiv', 'Kyiv', 7, NULL, 88, '20210522 11:13:34 AM'),
('NIKITAAMOLTHEBEST', '20210303 11:44:40 AM', 'Kyiv', 'Warsaw', 3, 'Full tank', 614, '20210324 04:57:09 PM'),
('TE1IN4FEKTROANSXI', '20201226 08:09:22 AM', 'Gdansk', 'Krakow', 2, NULL, 51, '20201229 08:00:14 PM'),
('O123KPRTOE35MVVCR', '20210418 05:03:12 PM', 'Warsaw', 'Wroclaw', 8, 'KM Limit: 130 km', 129, '20210527 05:12:37 PM'),
('AA2AAAAAAABB4BBCC', '20210313 07:17:36 PM', 'Wroclaw', 'Kyiv', 4, NULL, 688.5, '20210412 07:16:17 AM'),
('PP3PPKKKKKLLLLLA8', '20210201 05:20:03 AM', 'Kyiv', 'Gdansk', 2, 'Need to pump up the wheels', 893.8, '20210429 03:57:23 AM'),
('YAROSLAVSUSLINTOP', '20210522 05:05:05 PM', 'Warsaw', 'Warsaw', 5, NULL, 91, '20210523 01:01:15 PM'),
('YAROSLAVSUSLINTOP', '20210404 11:04:03 PM', 'Gdansk', 'Warsaw', 2, NULL, 156, '20210418 04:17:43 AM'),
('O123KPRTOE35MVVCR', '20210115 03:47:40 AM', 'Kyiv', 'Wroclaw', 9, 'Full tank', 797.8, '20210119 10:18:03 PM'),
('AA2AAAAAAABB4BBCC', '20200427 08:29:00 AM', 'Krakow', 'Krakow', 1, NULL, 32.6, '20200501 11:37:41 PM'),
('PP3PPKKKKKLLLLLA8', '20210209 01:30:28 PM', 'Krakow', 'Gdansk', 6, NULL, 432.2, '20210308 06:13:17 AM'),
('NIKITAAMOLTHEBEST', '20210501 07:56:09 PM', 'Gdansk', 'Kyiv', 7, 'KM Limit: 70 km', 804.58, '20210523 01:02:03 PM')
