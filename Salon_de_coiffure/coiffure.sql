CREATE TABLE Clients (
    IDClient INT PRIMARY KEY,
    Nom VARCHAR(255),
    Prenom VARCHAR(255),
    Adresse VARCHAR(255),
    Telephone VARCHAR(255),
    AdresseEmail VARCHAR(255),
    DateInscription DATE
);

CREATE TABLE Services (
    IDService INT PRIMARY KEY,
    Nom VARCHAR(255),
    Description VARCHAR(255),
    Image VARCHAR(255),
    Prix FLOAT,
    Categorie VARCHAR(255)
);

CREATE TABLE RendezVous (
    IDRendezVous INT PRIMARY KEY,
    IDClient INT,
    IDService INT,
    IDEmploye INT,
    DateHeure DATETIME,
    FOREIGN KEY (IDClient) REFERENCES Clients(IDClient),
    FOREIGN KEY (IDService) REFERENCES Services(IDService),
    FOREIGN KEY (IDEmploye) REFERENCES Employes(IDEmploye)
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
    IDProduit INT,
    Quantite INT,
    DateCommande DATE,
    Montant FLOAT,
    FOREIGN KEY (IDFournisseur) REFERENCES Fournisseurs(IDFournisseur),
    FOREIGN KEY (IDProduit) REFERENCES Produits(IDProduit)
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