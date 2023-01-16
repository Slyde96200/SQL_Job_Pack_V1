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

CREATE TABLE Clients (
    IDClient INT PRIMARY KEY,
    Nom VARCHAR(255),
    Prenom VARCHAR(255),
    Adresse VARCHAR(255),
    Telephone VARCHAR(255),
    AdresseEmail VARCHAR(255),
    DateInscription DATE
);

CREATE TABLE Entrepots (
    IDEntrepot INT PRIMARY KEY,
    Nom VARCHAR(255),
    Adresse VARCHAR(255),
    Telephone VARCHAR(255),
    Capacite INT
);

CREATE TABLE Stock (
    IDStock INT PRIMARY KEY,
    IDEntrepot INT,
    IDProduit INT,
    Quantite INT,
    FOREIGN KEY (IDEntrepot) REFERENCES Entrepots(IDEntrepot),
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

CREATE TABLE Livraisons (
    IDLivraison INT PRIMARY KEY,
    IDEntrepot INT,
    IDProduit INT,
    Quantite INT,
    DateLivraison DATE,
    FOREIGN KEY (IDEntrepot) REFERENCES Entrepots(IDEntrepot),
    FOREIGN KEY (IDProduit) REFERENCES Produits(IDProduit)
);

CREATE TABLE Fournisseurs (
    IDFournisseur INT PRIMARY KEY,
    Nom VARCHAR(255),
    Adresse VARCHAR(255),
    Telephone VARCHAR(255),
    AdresseEmail VARCHAR(255)
);