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
    DateCommande DATE,
    Montant FLOAT,
    Statut VARCHAR(255),
    FOREIGN KEY (IDClient) REFERENCES Clients(IDClient)
);

CREATE TABLE LignesCommandes (
    IDLigneCommande INT PRIMARY KEY,
    IDCommande INT,
    IDProduit INT,
    Quantite INT,
    FOREIGN KEY (IDCommande) REFERENCES Commandes(IDCommande),
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

CREATE TABLE Employes (
    IDEmploye INT PRIMARY KEY,
    Nom VARCHAR(255),
    Prenom VARCHAR(255),
    Telephone VARCHAR(255),
    AdresseEmail VARCHAR(255),
    Fonction VARCHAR(255)
);

CREATE TABLE EntreesStock (
    IDEntreeStock INT PRIMARY KEY,
    IDProduit INT,
    Quantite INT,
    DateEntree DATE,
    FOREIGN KEY (IDProduit) REFERENCES Produits(IDProduit)
);

CREATE TABLE SortiesStock (
    IDSortieStock INT PRIMARY KEY,
    IDProduit INT,
    Quantite INT,
    DateSortie DATE,
    FOREIGN KEY (IDProduit) REFERENCES Produits(IDProduit)
);