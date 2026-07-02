-- =====================
-- QUESTIONS METIER
-- Projet : Analyse des employés
-- Auteur : NAYAL Souefou
-- Date : Juin 2026
-- =====================

-- Question 1 — Salaire moyen par département
SELECT departement, AVG(salaire) AS salaire_moyen
FROM employes
GROUP BY departement
ORDER BY salaire_moyen DESC;

-- Question 2 — Nombre d'employés par département
SELECT departement, COUNT(*) AS nombre
FROM employes
GROUP BY departement;

-- Question 3 — Employés avec plus de 3 ans d'expérience
SELECT * FROM employes
WHERE annees_experience > 3;

-- Question 4 — Masse salariale totale par ville
SELECT ville, SUM(salaire) AS total
FROM employes
GROUP BY ville;

-- Question 5 — Employés triés par salaire décroissant
SELECT * FROM employes
ORDER BY salaire DESC;

-- Question 6 — Employés avec salaire supérieur à 3000€
SELECT * FROM employes
WHERE salaire > 3000;

-- Question 7 — Analyse complète par département
SELECT departement, COUNT(*) AS effectif,
SUM(salaire) AS masse_salariale,
AVG(salaire) AS salaire_moyen
FROM employes
GROUP BY departement
ORDER BY salaire_moyen DESC;

-- Question 8 — Employés dont le salaire est supérieur au salaire moyen (sous-requête)
SELECT nom, departement, salaire
FROM employes
WHERE salaire > (SELECT AVG(salaire) FROM employes);

-- Question 9 — Salaire et moyenne du département pour chaque employé (OVER/PARTITION BY)
SELECT nom, departement, salaire,
AVG(salaire) OVER (PARTITION BY departement) AS moyenne_departement
FROM employes;

-- Question 10 — Classement des employés par salaire dans leur département (ROW_NUMBER)
SELECT nom, departement, salaire,
ROW_NUMBER() OVER (PARTITION BY departement ORDER BY salaire DESC) AS rang
FROM employes;