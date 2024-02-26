-- nom database : epicerie
-- type : postgres
-- theme du sujet : epicerie fine 

--=========================================================




--tsy ampiana insert intsony
---------------------------------------------------------------






-------------------------------------------------------



--table / view statistique par moi et date 


--=========================================================





-- view


--DELETE FROM Produit WHERE idProduit IN (19, 20, 21);



--tri filtre prix min et max
SELECT P.idProduit, P.nom AS NomProduit, P.Prix, C.categorie AS NomCategorie, T.type_produit AS NomType
FROM Produit P
LEFT JOIN Categories C ON P.idProduit = C.idProduit
LEFT JOIN Type_produit T ON P.idProduit = T.idProduit where p.prix between 1000 and 2000;

--tri friltre prix min et max order by 
SELECT P.idProduit, P.nom AS NomProduit, P.Prix, C.categorie AS NomCategorie, T.type_produit AS NomType
FROM Produit P
LEFT JOIN Categories C ON P.idProduit = C.idProduit
LEFT JOIN Type_produit T ON P.idProduit = T.idProduit
WHERE P.prix BETWEEN 1000 AND 2000
ORDER BY P.prix;

--tri prix par type
SELECT P.idProduit, P.nom AS NomProduit, P.Prix, C.categorie AS NomCategorie, T.type_produit AS NomType
FROM Produit P
LEFT JOIN Categories C ON P.idProduit = C.idProduit
LEFT JOIN Type_produit T ON P.idProduit = T.idProduit
WHERE P.prix BETWEEN 1000 AND 2000 AND T.type_produit = 'liquide'
ORDER BY P.prix;



--tri filtre prix >x
SELECT P.idProduit, P.nom AS NomProduit, P.Prix, C.categorie AS NomCategorie, T.type_produit AS NomType
FROM Produit P
LEFT JOIN Categories C ON P.idProduit = C.idProduit
LEFT JOIN Type_produit T ON P.idProduit = T.idProduit
WHERE P.prix >1000
ORDER BY P.prix asc;

--tri filtre prix <x
SELECT P.idProduit, P.nom AS NomProduit, P.Prix, C.categorie AS NomCategorie, T.type_produit AS NomType
FROM Produit P
LEFT JOIN Categories C ON P.idProduit = C.idProduit
LEFT JOIN Type_produit T ON P.idProduit = T.idProduit
WHERE P.prix <1000
ORDER BY P.prix asc;

--tri par type
SELECT P.idProduit, P.nom AS NomProduit, P.prix, C.categorie AS NomCategorie, T.type_produit AS NomType
FROM Produit P
LEFT JOIN Categories C ON P.idProduit = C.idProduit
LEFT JOIN Type_produit T ON P.idProduit = T.idProduit
WHERE T.type_produit = 'solide';



--triage des produitsn

--tri par produit de luxe 
SELECT P.*
FROM Produit P
JOIN Categories C ON P.idProduit = C.idProduit
WHERE C.categorie = 'luxe';
--luxe solide
SELECT P.*
FROM Produit P
JOIN Categories C ON P.idProduit = C.idProduit
Join Type_produit tp on p.idProduit = tp.idProduit
WHERE C.categorie = 'luxe' and tp.type_produit ='solide';
--luxe liquide
SELECT P.*
FROM Produit P
JOIN Categories C ON P.idProduit = C.idProduit
Join Type_produit tp on p.idProduit = tp.idProduit
WHERE C.categorie = 'luxe' and tp.type_produit ='liquide';


----------------------------------------------
--tri par produit moyen 
SELECT P.*
FROM Produit P
JOIN Categories C ON P.idProduit = C.idProduit
WHERE C.categorie = 'moyen';
--moyen liquide
SELECT P.*
FROM Produit P
JOIN Categories C ON P.idProduit = C.idProduit
Join Type_produit tp on p.idProduit = tp.idProduit
WHERE C.categorie = 'moyen' and tp.type_produit ='liquide';
--moyen solide
SELECT P.*
FROM Produit P
JOIN Categories C ON P.idProduit = C.idProduit
Join Type_produit tp on p.idProduit = tp.idProduit
WHERE C.categorie = 'moyen' and tp.type_produit ='solide';
--------------------------------------------------


--tri par produit standard
SELECT P.*
FROM Produit P
JOIN Categories C ON P.idProduit = C.idProduit
WHERE C.categorie = 'standard';
--standard liquide
SELECT P.*
FROM Produit P
JOIN Categories C ON P.idProduit = C.idProduit
Join Type_produit tp on p.idProduit = tp.idProduit
WHERE C.categorie = 'standard' and tp.type_produit ='liquide';
--standard solide
SELECT P.*
FROM Produit P
JOIN Categories C ON P.idProduit = C.idProduit
Join Type_produit tp on p.idProduit = tp.idProduit
WHERE C.categorie = 'standard' and tp.type_produit ='solide';


----------------------------------------------
--tri par produit solide 
select p.*
from Produit p 
join Type_produit T on p.idProduit = T.idProduit
where T.type_produit = 'solide';

--tri par produit liquide
SELECT p.*
FROM Produit p
JOIN Type_produit T ON p.idProduit = T.idProduit
WHERE T.type_produit = 'liquide';





------------------------------
SELECT Produit.*, Categories.categorie
FROM Produit
JOIN Categories ON Produit.idProduit = Categories.idProduit;

SELECT Produit.*, Type_produit.type_produit
FROM Produit
JOIN Type_produit ON Produit.idProduit = Type_produit.idProduit;


SELECT Produit.*, Categories.categorie, Type_produit.type_produit
FROM Produit
LEFT JOIN Categories ON Produit.idProduit = Categories.idProduit
LEFT JOIN Type_produit ON Produit.idProduit = Type_produit.idProduit;

SELECT Produit.*
FROM Produit
JOIN Categories ON Produit.idProduit = Categories.idProduit
JOIN Type_produit ON Produit.idProduit = Type_produit.idProduit
WHERE Categories.categorie = 'standard'
  AND (Type_produit.type_produit = 'solide' OR Type_produit.type_produit = 'liquide');


  -----------------------------------------
  -- Assuming the foreign key is defined in the "epicerie" table
ALTER TABLE Produit
ADD CONSTRAINT fk_produit
FOREIGN KEY (idProduit)
REFERENCES Produit(idProduit)
ON DELETE CASCADE;

--DELETE FROM Produit WHERE idProduit = 25;

--select*from produit where prix between 2000 and 12000;


