-- PROJET SQL : Analyse des employes
-- Auteur : NAYAL Souefou
-- Date : Juin 2026

-- =====================
-- CREATION DE LA TABLE
-- =====================

CREATE TABLE employes (
  id INTEGER,
  nom TEXT,
  departement TEXT,
  ville TEXT,
  salaire INTEGER,
  annees_experience INTEGER
);

-- =====================
-- INSERTION DES DONNEES
-- =====================

INSERT INTO employes VALUES (1, 'Alice', 'Data', 'Lyon', 3500, 3);
INSERT INTO employes VALUES (2, 'Bob', 'Marketing', 'Paris', 2800, 2);
INSERT INTO employes VALUES (3, 'Sara', 'Data', 'Paris', 4200, 5);
INSERT INTO employes VALUES (4, 'Marc', 'RH', 'Lyon', 3000, 4);
INSERT INTO employes VALUES (5, 'Lina', 'Data', 'Lyon', 3800, 4);
INSERT INTO employes VALUES (6, 'Tom', 'Marketing', 'Paris', 3200, 3);
INSERT INTO employes VALUES (7, 'Julie', 'RH', 'Lyon', 2900, 2);

-- =====================
-- REQUETES D'ANALYSE
-- =====================

-- 1. Salaire moyen par departement
SELECT departement, AVG(salaire) AS salaire_moyen
FROM employes
GROUP BY departement
ORDER BY salaire_moyen DESC;

-- 2. Nombre d'employes par departement
SELECT departement, COUNT(*) AS nombre
FROM employes
GROUP BY departement;

-- 3. Employes avec plus de 3 ans d'experience
SELECT * FROM employes
WHERE annees_experience > 3;

-- 4. Salaire total par ville
SELECT ville, SUM(salaire) AS total
FROM employes
GROUP BY ville;

-- 5. Employes tries par salaire
SELECT * FROM employes
ORDER BY salaire DESC;

-- 6. Employes avec salaire superieur a 3000
SELECT * FROM employes
WHERE salaire > 3000;

-- 7. Analyse complete
SELECT departement, COUNT(*) AS effectif,
SUM(salaire) AS masse_salariale,
AVG(salaire) AS salaire_moyen
FROM employes
GROUP BY departement
ORDER BY salaire_moyen DESC;
