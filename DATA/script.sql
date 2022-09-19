CREATE TABLE Company(
   Id_company COUNTER,
   iata_code VARCHAR(50),
   company_name VARCHAR(50),
   PRIMARY KEY(Id_company)
);

CREATE TABLE Country(
   Id_country COUNTER,
   country_name VARCHAR(50),
   PRIMARY KEY(Id_country)
);

CREATE TABLE City(
   Id_city COUNTER,
   city_name VARCHAR(50),
   Id_country INT NOT NULL,
   PRIMARY KEY(Id_city),
   FOREIGN KEY(Id_country) REFERENCES Country(Id_country)
);

CREATE TABLE Airport(
   Id_airport COUNTER,
   name_airport VARCHAR(50),
   Id_city INT NOT NULL,
   PRIMARY KEY(Id_airport),
   FOREIGN KEY(Id_city) REFERENCES City(Id_city)
);

CREATE TABLE Flight(
   Id_flight COUNTER,
   flight_number VARCHAR(50),
   departure_date DATE,
   hour_Vol TIME,
   arrival_date VARCHAR(50),
   flight_status LOGICAL,
   Id_airport INT NOT NULL,
   Id_airport_1 INT NOT NULL,
   Id_company INT NOT NULL,
   PRIMARY KEY(Id_flight),
   FOREIGN KEY(Id_airport) REFERENCES Airport(Id_airport),
   FOREIGN KEY(Id_airport_1) REFERENCES Airport(Id_airport),
   FOREIGN KEY(Id_company) REFERENCES Company(Id_company)
);

CREATE TABLE Booking(
   Id_reservation COUNTER,
   contact_email VARCHAR(50),
   phone_number VARCHAR(50),
   first_name VARCHAR(50),
   passeport_number VARCHAR(50),
   booking_number VARCHAR(50),
   booking_date DATE,
   booking_status VARCHAR(50),
   Id_flight INT NOT NULL,
   PRIMARY KEY(Id_reservation),
   FOREIGN KEY(Id_flight) REFERENCES Flight(Id_flight)
);

CREATE TABLE Stop(
   Id_flight INT,
   Id_airport INT,
   departure_date DATE,
   arrival_date DATE,
   PRIMARY KEY(Id_flight, Id_airport),
   FOREIGN KEY(Id_flight) REFERENCES Flight(Id_flight),
   FOREIGN KEY(Id_airport) REFERENCES Airport(Id_airport)
);
