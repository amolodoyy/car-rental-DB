# car-rental-DB
The purpose of this program is to get knowledge about database design and possible manipulations e.g. queries, indexes, stored procedures. The exact explanation of the solution is in file [report car-rental-DB.pdf](https://github.com/amolodoyy/car-rental-DB/files/6733613/report.car-rental-DB.pdf)
Descriprion of the problem:
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
