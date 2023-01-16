CREATE TABLE Clients (
    IDClient INT PRIMARY KEY,
    Nom VARCHAR(255),
    Prenom VARCHAR(255),
    Adresse VARCHAR(255),
    Telephone VARCHAR(255),
    AdresseEmail VARCHAR(255),
    DateInscription DATE
);

CREATE TABLE Boissons (
    IDBoisson INT PRIMARY KEY,
    Nom VARCHAR(255),
    Description VARCHAR(255),
    Image VARCHAR(255),
    Type VARCHAR(255),
    Prix FLOAT
);

CREATE TABLE Commandes (
    IDCommande INT PRIMARY KEY,
    IDClient INT,
    IDBoisson INT,
    Quantite INT,
    DateCommande DATE,
    FOREIGN KEY (IDClient) REFERENCES Clients(IDClient),
    FOREIGN KEY (IDBoisson) REFERENCES Boissons(IDBoisson)
);

CREATE TABLE Employes (
    IDEmploye INT PRIMARY KEY,
    Nom VARCHAR(255),
    Prenom VARCHAR(255),
    Telephone VARCHAR(255),
    AdresseEmail VARCHAR(255),
    Role VARCHAR(255)
);

CREATE TABLE Fournisseurs (
    IDFournisseur INT PRIMARY KEY,
    Nom VARCHAR(255),
    Adresse VARCHAR(255),
    Telephone VARCHAR(255),
    AdresseEmail VARCHAR(255)
);

CREATE TABLE CommandesFournisseurs (
    IDCommandeFournisseur INT PRIMARY KEY,
    IDFournisseur INT,
    NomProduit VARCHAR(255),
    Quantite INT,
    DateCommande DATE,
    Montant FLOAT,
    FOREIGN KEY (IDFournisseur) REFERENCES Fournisseurs(IDFournisseur)
);

CREATE TABLE Tables (
IDTable INT PRIMARY KEY,
Numero INT,
Capacite INT
);

CREATE TABLE Reservations (
IDReservation INT PRIMARY KEY,
IDClient INT,
IDTable INT,
DateHeure DATETIME,
FOREIGN KEY (IDClient) REFERENCES Clients(IDClient),
FOREIGN KEY (IDTable) REFERENCES Tables(IDTable)
);

CREATE TABLE Evenements (
IDEvenement INT PRIMARY KEY,
Nom VARCHAR(255),
Description VARCHAR(255),
DateHeure DATETIME,
Image VARCHAR(255)
);

