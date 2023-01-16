CREATE TABLE Clients (
    IDClient INT PRIMARY KEY,
    Nom VARCHAR(255),
    Prenom VARCHAR(255),
    Adresse VARCHAR(255),
    Telephone VARCHAR(255),
    AdresseEmail VARCHAR(255),
    DateInscription DATE
);

CREATE TABLE Menus (
    IDMenu INT PRIMARY KEY,
    Nom VARCHAR(255),
    Description VARCHAR(255),
    Image VARCHAR(255),
    Prix FLOAT,
    Categorie VARCHAR(255),
    DateDebut DATE,
    DateFin DATE
);

CREATE TABLE Plats (
    IDPlat INT PRIMARY KEY,
    Nom VARCHAR(255),
    Description VARCHAR(255),
    Image VARCHAR(255),
    IDMenu INT,
    FOREIGN KEY (IDMenu) REFERENCES Menus(IDMenu)
);

CREATE TABLE Commandes (
    IDCommande INT PRIMARY KEY,
    IDClient INT,
    IDPlat INT,
    Quantite INT,
    DateCommande DATE,
    Montant FLOAT,
    FOREIGN KEY (IDClient) REFERENCES Clients(IDClient),
    FOREIGN KEY (IDPlat) REFERENCES Plats(IDPlat)
);

CREATE TABLE Employes (
    IDEmploye INT PRIMARY KEY,
    Nom VARCHAR(255),
    Prenom VARCHAR(255),
    Telephone VARCHAR(255),
    AdresseEmail VARCHAR(255),
    Role VARCHAR(255)
);

CREATE TABLE Ingredients (
    IDIngredient INT PRIMARY KEY,
    Nom VARCHAR(255),
    Description VARCHAR(255)
);

CREATE TABLE UtilisationIngredients (
    IDUtilisationIngredient INT PRIMARY KEY,
    INT,
IDIngredient INT,
Quantite FLOAT,
FOREIGN KEY (IDPlat) REFERENCES Plats(IDPlat),
FOREIGN KEY (IDIngredient) REFERENCES Ingredients(IDIngredient)
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
IDIngredient INT,
Quantite INT,
DateCommande DATE,
Montant FLOAT,
FOREIGN KEY (IDFournisseur) REFERENCES Fournisseurs(IDFournisseur),
FOREIGN KEY (IDIngredient) REFERENCES Ingredients(IDIngredient)
);

CREATE TABLE Reservations (
IDReservation INT PRIMARY KEY,
IDClient INT,
NbPersonnes INT,
DateHeure DATETIME,
FOREIGN KEY (IDClient) REFERENCES Clients(IDClient)
);