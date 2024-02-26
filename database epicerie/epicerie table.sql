CREATE TABLE Produit (
    idProduit SERIAL PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prix DOUBLE PRECISION NOT NULL
);

CREATE TABLE Categories (
    idCategorie SERIAL PRIMARY KEY,
    categorie VARCHAR(50) NOT NULL,
    idProduit INT,
    FOREIGN KEY (idProduit) REFERENCES Produit(idProduit)
);

CREATE TABLE Type_produit (
    idType SERIAL PRIMARY KEY,
    type_produit VARCHAR(50) NOT NULL,
    idProduit INT,
    FOREIGN KEY (idProduit) REFERENCES Produit(idProduit)
);

create table Client
(
    idClient SERIAL PRIMARY KEY,
    nomClient varchar(100)
);

CREATE TABLE AchatClient 
(
    idAchatClient SERIAL PRIMARY KEY,
    dateAchat DATE NOT NULL,
    quantite INT NOT NULL,
    idClient INT,
    idProduit INT NOT NULL,
    FOREIGN KEY (idClient) REFERENCES Client(idClient),
    FOREIGN KEY (idProduit) REFERENCES Produit(idProduit)
);

create table HistoriqueAchat
(
    idHA SERIAL PRIMARY KEY,
    idProduit int not null,
    idClient int not null,
    idAchatClient int not null,
    prixParQuantite DOUBLE PRECISION NOT NULL,
    totalPrix DOUBLE PRECISION NOT NULL,
    FOREIGN KEY (idClient) REFERENCES Client(idClient),
    FOREIGN KEY (idProduit) REFERENCES Produit(idProduit),
    FOREIGN KEY (idAchatClient) REFERENCES AchatClient(idAchatClient)

);
