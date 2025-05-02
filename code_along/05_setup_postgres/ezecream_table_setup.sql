CREATE SCHEMA IF NOT EXISTS ezecream_05;


SET search_path TO ezecream_05;

CREATE TABLE IF NOT EXISTS
    Customer (
        customer_id SERIAL PRIMARY KEY,
        first_name VARCHAR(50),
        last_name VARCHAR(50),
        address VARCHAR(100),
        email VARCHAR(255) UNIQUE 
    );





SELECT * FROM customer;

