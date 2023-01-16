CREATE TABLE Etudiants (
    IDEtudiant INT PRIMARY KEY,
    Nom VARCHAR(255),
    Prenom VARCHAR(255),
    Adresse VARCHAR(255),
    Telephone VARCHAR(255),
    AdresseEmail VARCHAR(255),
    DateInscription DATE
);

CREATE TABLE Formations (
    IDFormation INT PRIMARY KEY,
    Nom VARCHAR(255),
    Description VARCHAR(255),
    Niveau VARCHAR(255),
    Duree INT,
    Prix FLOAT
);

CREATE TABLE Inscriptions (
    IDInscription INT PRIMARY KEY,
    IDEtudiant INT,
    IDFormation INT,
    DateInscription DATE,
    FOREIGN KEY (IDEtudiant) REFERENCES Etudiants(IDEtudiant),
    FOREIGN KEY (IDFormation) REFERENCES Formations(IDFormation)
);

CREATE TABLE Professeurs (
    IDProfesseur INT PRIMARY KEY,
    Nom VARCHAR(255),
    Prenom VARCHAR(255),
    Telephone VARCHAR(255),
    AdresseEmail VARCHAR(255),
    Specialite VARCHAR(255)
);

CREATE TABLE Cours (
    IDCours INT PRIMARY KEY,
    IDFormation INT,
    IDProfesseur INT,
    DateDebut DATE,
    DateFin DATE,
    FOREIGN KEY (IDFormation) REFERENCES Formations(IDFormation),
    FOREIGN KEY (IDProfesseur) REFERENCES Professeurs(IDProfesseur)
);

CREATE TABLE Notes (
    IDNote INT PRIMARY KEY,
    IDEtudiant INT,
    IDCours INT,
    Note FLOAT,
    FOREIGN KEY (IDEtudiant) REFERENCES Etudiants(IDEtudiant),
    FOREIGN KEY (IDCours) REFERENCES Cours(IDCours)
);