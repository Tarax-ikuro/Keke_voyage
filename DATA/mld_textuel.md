
**Modèle logique de données textuels**
**Company** = (Id_company COUNTER, iata_code VARCHAR(50), company_name VARCHAR(50));
**Country** = (Id_country COUNTER, country_name VARCHAR(50));
**City** = (Id_city COUNTER, city_name VARCHAR(50), #Id_country);
**Airport** = (Id_airport COUNTER, name_airport VARCHAR(50), #Id_city);
**Flight** = (Id_flight COUNTER, flight_number VARCHAR(50), departure_date DATE, hour_Vol TIME, arrival_date VARCHAR(50), flight_status LOGICAL, #Id_airport, #Id_airport_1, #Id_company);
**Booking** = (Id_reservation COUNTER, contact_email VARCHAR(50), phone_number VARCHAR(50), first_name VARCHAR(50), passeport_number VARCHAR(50), booking_number VARCHAR(50), booking_date DATE, booking_status VARCHAR(50), #Id_flight);
**Stop** = (#Id_flight, #Id_airport, departure_date DATE, arrival_date DATE);
