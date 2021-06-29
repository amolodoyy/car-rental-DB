# car-rental-DB
The purpose of this program is to get knowledge about database design and possible manipulations e.g. queries, indexes, stored procedures. The exact explanation of the solution is [here](https://github.com/amolodoyy/car-rental-DB/files/6733613/report.car-rental-DB.pdf). This file only specifies the task details.
## Description
### Database design
1. A car rental company rents cars to private customers and has offices in many cities.
2. Each car is described by a VIN number, make, model, year and type. Each car is assigned to a 
location and there is a responsible person assigned to each vehicle. 
3. Customer data include the name, address, phone number, email (optional), and the city where 
the customer rents cars
4. Also, for each rented car, the company keeps the driver's license information and the credit card 
number
5. The system has a price list based on a car type, daily or weekly rate, daily kilometer limit, an 
extra fee for return in a different location.
6. Cars can be reserved earlier (date, pickup location, return location)
7. Each rental is described by date, pickup location and return location, customer id, restrictions  (e.g., full tank, km limit). The kilometers driven are written to the car record after the return.
8. Each car undergoes a week-long service once a year or after each 5000 km (it’s not available for rental then)

### Creating, inserting and updating tables
* Creating data model tables designed in Task 1 (taking into account primary and foreign keys)
* Insert of sample rows into each table (min. 5 rows for each table and min. 10 ship orders)
* Modification of rows for a selected table (min. 3 rows to be modified)


### Indexes design
Design of indexes for newly created tables with specification of indexing key, uniqueness, type of index 
(clustered or not) and the reason for index creation (e.g. speed-up of specific type of queries).

### SELECT reports
1. Total number of rentals in each location in daily windows.
2.  A list of 10 longest (time-wise) rentals for each client, in which an suv was used.
3.  A list of cars which made more than 150% of average number of kilometers per car.
4.  Total number of rentals in which a pick up and a return location were different, and the client made more than 2000 km in all rentals.

### Stored procedure
Preparation of a stored procedure for an automatic assignment of another car when the original one is unavailable.
1. The procedure takes the reservation number for validation (as an input parameter)
2. It checks whether a vehicle assigned to the reservation is available (not used in another rental and not in service) 
3. In case it’s not available, it looks for another car of the same type in the same location
4. In case a vehicle is unavailable it checks other locations
5. If there are no available cars it cancels the reservation but gives the client a discount for the next rental
6. In case a vehicle is unavailable it checks other locations.
