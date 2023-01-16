CREATE TABLE Clients (
    IDClient INT PRIMARY KEY,
    Nom VARCHAR(255),
    Prenom VARCHAR(255),
    Adresse VARCHAR(255),
    Telephone VARCHAR(255),
    AdresseEmail VARCHAR(255),
    DateInscription DATE
);

CREATE TABLE Produits (
    IDProduit INT PRIMARY KEY,
    Nom VARCHAR(255),
    Description VARCHAR(255),
    Image VARCHAR(255),
    Prix FLOAT,
    Stock INT,
    Categorie VARCHAR(255)
);

CREATE TABLE Commandes (
    IDCommande INT PRIMARY KEY,
    IDClient INT,
    IDProduit INT,
    Quantite INT,
    DateCommande DATE,
    Montant FLOAT,
    FOREIGN KEY (IDClient) REFERENCES Clients(IDClient),
    FOREIGN KEY (IDProduit) REFERENCES Produits(IDProduit)
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
    IDProduit INT,
    IDIngredient INT,
    Quantite FLOAT,
FOREIGN KEY (IDProduit) REFERENCES Produits(IDProduit),
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

CREATE TABLE Itineraires (
IDItineraire INT PRIMARY KEY,
IDCamion INT,
Lieu VARCHAR(255),
HeureDebut DATETIME,
HeureFin DATETIME,
FOREIGN KEY (IDCamion) REFERENCES Camions(IDCamion)
);

CREATE TABLE Camions (
IDCamion INT PRIMARY KEY,
Immatriculation VARCHAR(255),
Marque VARCHAR(255),
Modele VARCHAR(255),
Capacite INT
);