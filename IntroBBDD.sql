--1. Escribe una consulta que identifique los vuelos que han llegado a tiempo.
SELECT flight_id, 
flight_no,
status
FROM flights
WHERE status = 'On Time';

--2.Extraer todas las columnas de booking que han supuesto una cantidad mayor a un millón de unidades monetarias.
SELECT *
FROM bookings
WHERE total_amount >= 1000000;

--3.Todas las columnas de todos los modelos de aviones disponibles.
SELECT DISTINCT *
FROM aircrafts_data
ORDER BY aircraft_code;

--4.Escribe una consulta que extraiga los identificadores de vuelos que han volado con un Boeing 737.
SELECT flight_id,
flight_no,
aircraft_code
FROM flights
WHERE aircraft_code = '733';
--Opción con JOIN JSON
SELECT flight_id,
flight_no,
aircrafts.aircraft_code,
aircrafts.model
FROM flights
LEFT JOIN aircrafts_data aircrafts ON aircrafts.aircraft_code = flights.aircraft_code 
WHERE aircrafts.model::text LIKE '%Boeing 737%'

--5.Extraer todas las pasajeras que se llamen 'Irina'
SELECT *
FROM tickets
WHERE passenger_name LIKE 'IRINA%'


