CREATE TABLE compagnie(
   Id_COMPAGNIE COUNTER,
   nom_compagnie VARCHAR(50),
   code_iata VARCHAR(50),
   PRIMARY KEY(Id_COMPAGNIE)
);

CREATE TABLE pays(
   Id_pays COUNTER,
   nom_pays VARCHAR(50),
   PRIMARY KEY(Id_pays)
);

CREATE TABLE ville(
   Id_ville COUNTER,
   nom_ville VARCHAR(50),
   Id_pays INT NOT NULL,
   PRIMARY KEY(Id_ville),
   FOREIGN KEY(Id_pays) REFERENCES pays(Id_pays)
);

CREATE TABLE aeroport(
   Id_aeroport COUNTER,
   nom_aeroport VARCHAR(50),
   Id_ville INT NOT NULL,
   PRIMARY KEY(Id_aeroport),
   FOREIGN KEY(Id_ville) REFERENCES ville(Id_ville)
);

CREATE TABLE vol(
   Id_vol COUNTER,
   numero_Vol VARCHAR(50),
   date_vol DATE,
   heure_Vol TIME,
   aeroport_depart VARCHAR(50),
   aerorport_arrivé VARCHAR(50),
   date_depart DATE,
   date_arrivé VARCHAR(50),
   etat_vol LOGICAL,
   Id_aeroport INT NOT NULL,
   Id_aeroport_1 INT NOT NULL,
   Id_COMPAGNIE INT NOT NULL,
   PRIMARY KEY(Id_vol),
   FOREIGN KEY(Id_aeroport) REFERENCES aeroport(Id_aeroport),
   FOREIGN KEY(Id_aeroport_1) REFERENCES aeroport(Id_aeroport),
   FOREIGN KEY(Id_COMPAGNIE) REFERENCES compagnie(Id_COMPAGNIE)
);

CREATE TABLE reservation(
   Id_reservation COUNTER,
   email_contact VARCHAR(50),
   numero_Téléphone VARCHAR(50),
   nom VARCHAR(50),
   numero_Passeport VARCHAR(50),
   numero_Reservation VARCHAR(50),
   date_Reservation DATE,
   etat_Reservation VARCHAR(50),
   Id_vol INT NOT NULL,
   PRIMARY KEY(Id_reservation),
   FOREIGN KEY(Id_vol) REFERENCES vol(Id_vol)
);

CREATE TABLE Escales(
   Id_vol INT,
   Id_aeroport INT,
   heure_arrivé_escales TIME,
   date_arrivé_escale DATE,
   date_depart_escale DATE,
   PRIMARY KEY(Id_vol, Id_aeroport),
   FOREIGN KEY(Id_vol) REFERENCES vol(Id_vol),
   FOREIGN KEY(Id_aeroport) REFERENCES aeroport(Id_aeroport)
);
