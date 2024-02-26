-- CREATE VIEW Affiche_liste AS
-- SELECT P.idProduit, P.nom AS NomProduit, P.Prix, C.Categorie AS NomCategorie, T.type_produit AS NomType
-- FROM Produit P
-- LEFT JOIN Categories C ON P.idProduit = C.idProduit
-- LEFT JOIN Type_produit T ON P.idProduit = T.idProduit;



create view listeAchat as
select idProduit, nom, prix from Produit;

CREATE VIEW voirAchatClient AS
SELECT
    AC.idAchatClient,
    AC.dateAchat,
    AC.quantite,
    C.idClient,
    C.nomClient,
    P.idProduit,
    P.nom AS nomProduit,
    P.prix
FROM
    AchatClient AC
JOIN
    Client C ON AC.idClient = C.idClient
JOIN
    Produit P ON AC.idProduit = P.idProduit;


    CREATE VIEW Affiche_liste AS
SELECT P.idProduit, P.nom AS NomProduit, P.Prix, C.categorie AS NomCategorie, T.type_produit AS NomType
FROM Produit P
LEFT JOIN Categories C ON P.idProduit = C.idProduit
LEFT JOIN Type_produit T ON P.idProduit = T.idProduit;



create view voirHistorique as
SELECT
    AC.idAchatClient,
    AC.dateAchat,
    AC.quantite,
    C.idClient,
    C.nomClient,
    P.idProduit,
    P.nom AS nomProduit,
    P.prix,
    AC.quantite * P.prix AS prixParQuantite,
    SUM(AC.quantite * P.prix) OVER (PARTITION BY C.idClient) AS totalPrix
FROM
    AchatClient AC
JOIN
    Client C ON AC.idClient = C.idClient
JOIN
    Produit P ON AC.idProduit = P.idProduit;

-- WHERE
--     idClient = 2;