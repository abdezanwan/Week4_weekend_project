
CREATE TABLE Customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    phone_number VARCHAR(15),
    address VARCHAR(60)
);

CREATE TABLE Salesman (
    salesman_id SERIAL PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30)
);


CREATE TABLE Car (
    car_id SERIAL PRIMARY KEY,
    car_model VARCHAR(50),
    car_make VARCHAR(50),
    car_year INTEGER,
    car_color VARCHAR(50)
);

CREATE TABLE Service_mechanic (
    serv_mech_id SERIAL PRIMARY KEY,
    hours NUMERIC(5, 2),
    rate NUMERIC(7, 2),
    comment VARCHAR(50),
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE Parts (
    part_id SERIAL PRIMARY KEY,
    part_name VARCHAR(50),
    price NUMERIC(7, 2),
    comment VARCHAR(50)
);

CREATE TABLE Invoice (
    invoice_id SERIAL PRIMARY KEY,
    date NUMERIC(5, 2),
    salesman_id INTEGER,
    customer_id INTEGER,
    serv_mech_id INTEGER,
    car_total NUMERIC(6, 2),
    part_total NUMERIC(6, 2),
    quote BOOLEAN,
    car_id INTEGER,
    FOREIGN KEY (salesman_id) REFERENCES Salesman (salesman_id),
    FOREIGN KEY (customer_id) REFERENCES Customer (customer_id),
    FOREIGN KEY (serv_mech_id) REFERENCES Service_mechanic (serv_mech_id),
    FOREIGN KEY (car_id) REFERENCES Car (car_id)
);
