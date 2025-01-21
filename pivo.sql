CREATE TABLE země (
    idzemě INT PRIMARY KEY,
    název VARCHAR(45) NOT NULL
);

CREATE TABLE MestoGPS (
    MestoID INT PRIMARY KEY,
    ZS VARCHAR(45) NOT NULL,
    ZD VARCHAR(45) NOT NULL,
    země_idzemě INT NOT NULL,
    FOREIGN KEY (země_idzemě) REFERENCES země(idzemě)
);

CREATE TABLE pivo (
    idpivo INT PRIMARY KEY,
    název VARCHAR(45) NOT NULL,
    pivocol VARCHAR(45) NOT NULL
);

CREATE TABLE Vyrobce (
    idVyrobce INT PRIMARY KEY,
    Nazev VARCHAR(45) NOT NULL,
    Rok_zalozeni VARCHAR(45) NOT NULL,
    MestoGPS_MestoID INT NOT NULL,
    pivo_idpivo INT NOT NULL,
    FOREIGN KEY (MestoGPS_MestoID) REFERENCES MestoGPS(MestoID),
    FOREIGN KEY (pivo_idpivo) REFERENCES pivo(idpivo)
);
