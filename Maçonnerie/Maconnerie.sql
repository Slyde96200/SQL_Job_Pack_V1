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
    Nom VARCHAR(255),
    Description VARCHAR(255),
    IDClient INT,
    IDEmploye INT,
    Budget FLOAT,
    DateDebut DATE,
    DateFin DATE,
    FOREIGN KEY (IDClient) REFERENCES Clients(IDClient),
    FOREIGN KEY (IDEmploye) REFERENCES Employes(IDEmploye)
);

CREATE TABLE Taches (
    IDTache INT PRIMARY KEY,
    Nom VARCHAR(255),
    Description VARCHAR(255),
    IDProjet INT,
    IDEmploye INT,
    DateDebut DATE,
    DateFin DATE,
    FOREIGN KEY (IDProjet) REFERENCES Projets(IDProjet),
    FOREIGN KEY (IDEmploye) REFERENCES Employes(IDEmploye)
);

CREATE TABLE Employes (
    IDEmploye INT PRIMARY KEY,
    Nom VARCHAR(255),
    Prenom VARCHAR(255),
    Telephone VARCHAR(255),
    AdresseEmail VARCHAR(255),
    Fonction VARCHAR(255)
);

CREATE TABLE Fournisseurs (
    IDFournisseur INT PRIMARY KEY,
    Nom VARCHAR(255),
Adresse VARCHAR(255),
Telephone VARCHAR(255),
AdresseEmail VARCHAR(255)
);

CREATE TABLE Commandes (
IDCommande INT PRIMARY KEY,
IDFournisseur INT,
IDProjet INT,
DateCommande DATE,
Montant FLOAT,
Statut VARCHAR(255),
FOREIGN KEY (IDFournisseur) REFERENCES Fournisseurs(IDFournisseur),
FOREIGN KEY (IDProjet) REFERENCES Projets(IDProjet)
);

CREATE TABLE LignesCommandes (
IDLigneCommande INT PRIMARY KEY,
IDCommande INT,
IDProduit INT,
Quantite INT,
FOREIGN KEY (IDCommande) REFERENCES Commandes(IDCommande),
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