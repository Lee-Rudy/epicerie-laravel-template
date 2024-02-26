--database name : epicerie_laravel
--type : postgres

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


-----------------------------------------------------------------------------------
--insert efa nampidirina


-- insert into Client(nomClient) values('client1'),
-- ('client2'),
-- ('client3'),
-- ('client4');


-- insert into Produit(nom,prix) values('chocolat', '200');
-- insert into Produit(nom,prix) values('cristalline', '2000');
-- insert into Produit(nom,prix) values('cracky', '700');
-- insert into Produit(nom,prix) values('salto', '600');
-- insert into Produit(nom,prix) values('Gouty', '500');
-- insert into Produit(nom,prix) values('Coca', '2500');
-- insert into Produit(nom,prix) values('Youzou', '2000');
-- insert into Produit(nom,prix) values('Soda', '2000');
-- insert into Produit(nom,prix) values('Pringles', '7000');
-- insert into Produit(nom,prix) values( 'BeauFord', '5000');
-- insert into Produit(nom,prix) values( 'Doritos', '12000');
-- insert into Produit(nom,prix) values( 'Vanille', '500000');
-- insert into Produit(nom,prix) values( 'Huile olive', '20000');
-- insert into Produit(nom,prix) values( 'sardine', '15000');
-- insert into Produit(nom,prix) values( 'Vinaigre', '12000');
-- insert into Produit(nom,prix) values( 'Super Glou', '1300');

-- insert into Categories(categorie, idProduit) values('standard', 1);
-- insert into Categories(categorie, idProduit) values('moyen', 2);
-- insert into Categories(categorie, idProduit) values('standard', 3);
-- insert into Categories(categorie, idProduit) values('standard', 4);
-- insert into Categories(categorie, idProduit) values('standard', 5);
-- insert into Categories(categorie, idProduit) values('moyen', 6);
-- insert into Categories(categorie, idProduit) values('moyen', 7);
-- insert into Categories(categorie, idProduit) values('moyen', 8);
-- insert into Categories(categorie, idProduit) values('luxe', 9);
-- insert into Categories(categorie, idProduit) values('luxe', 10);
-- insert into Categories(categorie, idProduit) values('luxe', 11);
-- insert into Categories(categorie, idProduit) values('luxe', 12);
-- insert into Categories(categorie, idProduit) values('moyen', 13);
-- insert into Categories(categorie, idProduit) values('moyen', 14);
-- insert into Categories(categorie, idProduit) values('standard', 15);
-- insert into Categories(categorie, idProduit) values('standard', 16);




-- insert into Type_produit(type_produit, idProduit) values('solide', 1);
-- insert into Type_produit(type_produit, idProduit) values('liquide', 2);
-- insert into Type_produit(type_produit, idProduit) values('solide', 3);
-- insert into Type_produit(type_produit, idProduit) values('solide', 4);
-- insert into Type_produit(type_produit, idProduit) values('solide', 5);
-- insert into Type_produit(type_produit, idProduit) values('liquide', 6);
-- insert into Type_produit(type_produit, idProduit) values('liquide', 7);
-- insert into Type_produit(type_produit, idProduit) values('liquide', 8);
-- insert into Type_produit(type_produit, idProduit) values('solide', 9);
-- insert into Type_produit(type_produit, idProduit) values('liquide', 10);
-- insert into Type_produit(type_produit, idProduit) values('solide', 11);
-- insert into Type_produit(type_produit, idProduit) values('solide', 12);
-- insert into Type_produit(type_produit, idProduit) values('liquide', 13);
-- insert into Type_produit(type_produit, idProduit) values('solide', 14);
-- insert into Type_produit(type_produit, idProduit) values('liquide', 15);
-- insert into Type_produit(type_produit, idProduit) values('liquide', 16);
