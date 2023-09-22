INSERT INTO Customer (first_name, last_name, phone_number, address)
VALUES ('Rahiem', 'Adam', '333-323-1000', '123 Main St');
SELECT * 
FROM customer

INSERT INTO Salesman (first_name, last_name)
VALUES ('Mo', 'Ali');
SELECT * 
FROM Salesman

INSERT INTO Car (car_model, car_make, car_year, car_color)
VALUES ('toyto', 'RV4', 2022, 'Red');
SELECT * 
FROM Car

INSERT INTO Service_mechanic (hours, rate, comment, first_name, last_name)
VALUES (43.3, 45.00, 'Thank you ', 'Samer', 'Hassen');
SELECT * 
FROM Service_mechanic

INSERT INTO Parts (part_name, price, comment)
VALUES ('transmission', 500.99, 'We recommend to get the new transmission');
SELECT * 
FROM Parts

INSERT INTO Invoice (date, salesman_id, customer_id, serv_mech_id, car_total, part_total, quote, car_id)
VALUES (09222023, 22, 88, 5, 400.00, 500.99, false, 4);
SELECT * 
FROM Invoice


