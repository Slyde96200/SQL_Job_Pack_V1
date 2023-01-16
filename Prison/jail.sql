CREATE TABLE Prisonniers (
    IDPrisonnier INT PRIMARY KEY,
    Nom VARCHAR(255),
    Prenom VARCHAR(255),
    NumeroIdentification VARCHAR(255),
    DateNaissance DATE,
    Adresse VARCHAR(255),
    RaisonIncarceration VARCHAR(255),
    DateIncarceration DATE,
    DateLiberation DATE
);

CREATE TABLE Surveillants (
    IDSurveillant INT PRIMARY KEY,
    Nom VARCHAR(255),
    Prenom VARCHAR(255),
    Adresse VARCHAR(255),
    Telephone VARCHAR(255),
    AdresseEmail VARCHAR(255),
    Role VARCHAR(255)
);

CREATE TABLE Cellules (
    IDCellule INT PRIMARY KEY,
    Numero INT,
    Capacite INT,
    Type VARCHAR(255)
);

CREATE TABLE AffectationCellules (
    IDAffectationCellules INT PRIMARY KEY,
    IDPrisonnier INT,
    IDCellule INT,
    DateDebut DATE,
    DateFin DATE,
    FOREIGN KEY (IDPrisonnier) REFERENCES Prisonniers(IDPrisonnier),
    FOREIGN KEY (IDCellule) REFERENCES Cellules(IDCellule)
);

CREATE TABLE Visites (
    IDVisite INT PRIMARY KEY,
    IDPrisonnier INT,
    NomVisiteur VARCHAR(255),
    PrenomVisiteur VARCHAR(255),
    LienParente VARCHAR(255),
    DateHeure DATETIME,
    FOREIGN KEY (IDPrisonnier) REFERENCES Prisonniers(IDPrisonnier)
);

CREATE TABLE Incidents (
    IDIncident INT PRIMARY KEY,
    IDPrisonnier INT,
    IDSurveillant INT,
    Description VARCHAR(255),
    DateHeure DATETIME,
    FOREIGN KEY (IDPrisonnier) REFERENCES Prisonniers(IDPrisonnier),
    FOREIGN KEY (IDSurveillant) REFERENCES Surveillants(IDSurveillant)
);