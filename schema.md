# Schéma de la base de données

## Création de la table

CREATE TABLE employes (
  id INTEGER,
  nom TEXT,
  departement TEXT,
  ville TEXT,
  salaire INTEGER,
  annees_experience INTEGER
);

## Insertion des données

INSERT INTO employes VALUES (1, 'Alice', 'Data', 'Lyon', 3500, 3);
INSERT INTO employes VALUES (2, 'Bob', 'Marketing', 'Paris', 2800, 2);
INSERT INTO employes VALUES (3, 'Sara', 'Data', 'Paris', 4200, 5);
INSERT INTO employes VALUES (4, 'Marc', 'RH', 'Lyon', 3000, 4);
INSERT INTO employes VALUES (5, 'Lina', 'Data', 'Lyon', 3800, 4);
INSERT INTO employes VALUES (6, 'Tom', 'Marketing', 'Paris', 3200, 3);
INSERT INTO employes VALUES (7, 'Julie', 'RH', 'Lyon', 2900, 2);

## Description des colonnes

| Colonne | Type | Description |
|---|---|---|
| id | INTEGER | Identifiant unique de l'employé |
| nom | TEXT | Nom de l'employé |
| departement | TEXT | Département (Data, Marketing, RH) |
| ville | TEXT | Ville de travail (Lyon, Paris) |
| salaire | INTEGER | Salaire mensuel en euros |
| annees_experience | INTEGER | Nombre d'années d'expérience |