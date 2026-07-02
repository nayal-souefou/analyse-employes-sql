# Analyse SQL des Employés

Analyse SQL d'une base de données d'employés, avec des requêtes répondant à des questions métier concrètes (salaires, effectifs, expérience, répartition géographique).

## Dataset
Source : Dataset créé manuellement
7 employés, 6 colonnes : id, nom, departement, ville, salaire, annees_experience.

## Outils
MySQL Workbench (MySQL 8.0)

## Structure du projet
- `schema.md` : création de la table et insertion des données
- `questions_metier.sql` : les 10 requêtes avec leurs questions métier associées
- `README.md` : ce fichier

## Questions métier traitées
1. Salaire moyen par département
2. Nombre d'employés par département
3. Employés avec plus de 3 ans d'expérience
4. Masse salariale totale par ville
5. Employés triés par salaire décroissant
6. Employés avec salaire supérieur à 3000€
7. Analyse complète par département
8. Employés dont le salaire est supérieur au salaire moyen (sous-requête)
9. Salaire et moyenne du département pour chaque employé (OVER/PARTITION BY)
10. Classement des employés par salaire dans leur département (ROW_NUMBER)

## Principaux résultats
Le département Data concentre les salaires les plus élevés. Lyon regroupe les équipes Data et RH tandis que Paris concentre le Marketing. Les profils seniors représentent la majorité des effectifs.

## Auteur
Souefou — Étudiant en Master Intelligence Artificielle (NEXA Digital School, Lyon) 
