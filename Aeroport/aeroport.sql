CREATE TABLE Vols (
    NumVol INT PRIMARY KEY,
    NomCompagnieAerienne VARCHAR(255),
    NumLigneAerienne INT,
    DateDepart DATE,
    HeureDepart TIME,
    DateArrivee DATE,
    HeureArrivee TIME,
    Terminal VARCHAR(255),
    PorteEmbarquement INT,
    Statut VARCHAR(255)
);

CREATE TABLE Passagers (
    NumReservation INT PRIMARY KEY,
    Nom VARCHAR(255),
    Prenom VARCHAR(255),
    NumPasseport VARCHAR(255),
    NumVol INT,
    FOREIGN KEY (NumVol) REFERENCES Vols(NumVol)
);

CREATE TABLE CompagniesAeriennes (
    NomCompagnieAerienne VARCHAR(255) PRIMARY KEY,
    Adresse VARCHAR(255),
    Telephone VARCHAR(255),
    SiteWeb VARCHAR(255)
);

CREATE TABLE Terminaux (
    NomTerminal VARCHAR(255) PRIMARY KEY,
    NbPortesEmbarquement INT,
    NbRestaurants INT,
    NbMagasins INT
);

CREATE TABLE ServicesAeroport (
    NomService VARCHAR(255) PRIMARY KEY,
    Emplacement VARCHAR(255),
    HeuresOuverture TIME,
    Description VARCHAR(255)
);

CREATE TABLE Employes (
    IDEmploye INT PRIMARY KEY,
    Nom VARCHAR(255),
    Prenom VARCHAR(255),
    Telephone VARCHAR(255),
    AdresseEmail VARCHAR(255),
    Fonction VARCHAR(255)
);

CREATE TABLE Maintenance (
    IDMaintenance INT PRIMARY KEY,
    DateMaintenance DATE,
    HeureMaintenance TIME,
    Description VARCHAR(255),
    Avion INT,
    FOREIGN KEY (Avion) REFERENCES Vols(NumVol)
);