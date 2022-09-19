
**Modèle logique de données textuels**
**compagnie** = (Id_COMPAGNIE COUNTER, nom_compagnie VARCHAR(50), code_iata VARCHAR(50));
pays = (Id_pays COUNTER, nom_pays VARCHAR(50));
ville = (Id_ville COUNTER, nom_ville VARCHAR(50), #Id_pays);
**aeroport** = (Id_aeroport COUNTER, nom_aeroport VARCHAR(50), #Id_ville);
vol = (Id_vol COUNTER, numero_Vol VARCHAR(50), date_vol DATE, heure_Vol TIME, aeroport_depart VARCHAR(50), aerorport_arrivé VARCHAR(50), date_depart DATE, date_arrivé VARCHAR(50), etat_vol LOGICAL, #Id_aeroport, #Id_aeroport_1, #Id_COMPAGNIE);
**reservation** = (Id_reservation COUNTER, email_contact VARCHAR(50), numero_Téléphone VARCHAR(50), nom VARCHAR(50), numero_Passeport VARCHAR(50), numero_Reservation VARCHAR(50), date_Reservation DATE, etat_Reservation VARCHAR(50), #Id_vol);
**Escales** = (#Id_vol, #Id_aeroport, heure_arrivé_escales TIME, date_arrivé_escale DATE, date_depart_escale DATE);
