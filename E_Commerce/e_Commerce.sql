CREATE TABLE Utilisateurs (
    IDUtilisateur INT PRIMARY KEY,
    Nom VARCHAR(255),
    Prenom VARCHAR(255),
    Adresse VARCHAR(255),
    Telephone VARCHAR(255),
    AdresseEmail VARCHAR(255),
    MotDePasse VARCHAR(255),
    DateInscription DATE,
    Role VARCHAR(255)
);

CREATE TABLE Produits (
    IDProduit INT PRIMARY KEY,
    Nom VARCHAR(255),
    Description VARCHAR(255),
    Image VARCHAR(255),
    Prix FLOAT,
    Stock INT,
    Categorie INT,
    FOREIGN KEY (Categorie) REFERENCES Categories(IDCategorie)
);

CREATE TABLE Categories (
    IDCategorie INT PRIMARY KEY,
    NomCategorie VARCHAR(255),
    Description VARCHAR(255)
);

CREATE TABLE Commandes (
    IDCommande INT PRIMARY KEY,
    IDUtilisateur INT,
    DateCommande DATE,
    Montant FLOAT,
    Statut VARCHAR(255),
    FOREIGN KEY (IDUtilisateur) REFERENCES Utilisateurs(IDUtilisateur)
);

CREATE TABLE LignesCommandes (
    IDLigneCommande INT PRIMARY KEY,
    IDCommande INT,
    IDProduit INT,
    Quantite INT,
    FOREIGN KEY (IDCommande) REFERENCES Commandes(IDCommande),
    FOREIGN KEY (IDProduit) REFERENCES Produits(IDProduit)
);

CREATE TABLE Commentaires (
    IDCommentaire INT PRIMARY KEY,
    IDProduit INT,
    IDUtilisateur INT,
    Commentaire VARCHAR(255),
    Note INT,
    FOREIGN KEY (IDProduit) REFERENCES Produits(IDProduit),
    FOREIGN KEY (IDUtilisateur) REFERENCES Utilisateurs(IDUtilisateur)
);