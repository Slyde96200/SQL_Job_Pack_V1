CREATE TABLE Clients (
    IDClient INT PRIMARY KEY,
    Nom VARCHAR(255),
    Prenom VARCHAR(255),
    Adresse VARCHAR(255),
    Telephone VARCHAR(255),
    AdresseEmail VARCHAR(255),
    DateInscription DATE
);

CREATE TABLE Projets (
    IDProjet INT PRIMARY KEY,
    IDClient INT,
    Nom VARCHAR(255),
    Description VARCHAR(255),
    Image VARCHAR(255),
    DateDebut DATE,
    DateFin DATE,
    Montant FLOAT,
    FOREIGN KEY (IDClient) REFERENCES Clients(IDClient)
);

CREATE TABLE Taches (
    IDTache INT PRIMARY KEY,
    IDProjet INT,
    Nom VARCHAR(255),
    Description VARCHAR(255),
    DateDebut DATE,
    DateFin DATE,
    FOREIGN KEY (IDProjet) REFERENCES Projets(IDProjet)
);

CREATE TABLE Commandes (
    IDCommande INT PRIMARY KEY,
    IDProjet INT,
    NomProduit VARCHAR(255),
    Quantite INT,
    DateCommande DATE,
    Montant FLOAT,
    FOREIGN KEY (IDProjet) REFERENCES Projets(IDProjet)
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