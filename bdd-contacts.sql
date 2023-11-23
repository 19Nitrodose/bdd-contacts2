DROP DATABASE if EXISTS bdd_contact.sql;
CREATE DATABASE bdd_contact_sql CHARACTER set = 'utf8' COLLATE = 'utf8_general_ci'; 

USE bdd_contact_sql; 

CREATE TABLE pays (
    iso_3 CHAR(3) PRIMARY KEY, 
    nom VARCHAR(70),
    iso_2 CHAR(2), 
    nationalite VARCHAR(50)
);

INSERT INTO pays (iso_3, nom, iso_2, nationalite) VALUES
    ('FRA', 'France', 'FR', 'Français'),
    ('CHE', 'Suisse', 'CH', 'Suisse'),
    ('TUR', 'Turquie', 'TR', 'Turc'),
    ('BEL', 'Belgique', 'BE', 'Belge');
   ('DEU', 'Allemagne', 'DE', 'Allemand'),
    ('ESP', 'Espagne', 'ES', 'Espagnol'),
    ('ITA', 'Italie', 'IT', 'Italien');

CREATE TABLE contacts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(70),
    prenom VARCHAR(70),
    date_de_naissance DATE,
    sexe VARCHAR(10),
    adresse TEXT,
    cp VARCHAR(10),
    ville VARCHAR(70),
    pays_iso_3 CHAR(3),
    FOREIGN KEY (pays_iso_3) REFERENCES pays(iso_3)
); 

INSERT INTO contacts (nom, prenom, date_de_naissance, sexe, adresse, cp, ville, pays_iso_3) VALUES
    ('Snow', 'John', '1884-10-14', 'M', '123 rue de WinterFell', '19084', 'WinterFell', 'FRA'),
    ('Stark', 'Sansa', '1890-07-20', 'F', '1 avenue de WinterFall', '19084', 'WinterFell', 'FRA'),
    ('Stark', 'Eddard', '1805-03-15', 'M', '789 boulevard de lexecution ', '19084', 'WinterFell', 'FRA'),
    ('Moreau', 'Chloé', '1995-08-30', 'F', '321 rue de la République', '13001', 'Marseille', 'FRA'),
    ('Laurent', 'Sophie', '1988-12-25', 'F', '654 allée du Vieux-Port', '13002', 'Marseille', 'FRA'),
    ('Simon', 'Pierre', '1975-10-05', 'M', '987 chemin des Oliviers', '06000', 'Nice', 'FRA'),
    ('Michel', 'Anne', '1992-04-18', 'F', '147 route de Lyon', '69000', 'Lyon', 'FRA'),
    ('Lefebvre', 'Marc', '1978-01-22', 'M', '258 rue Garibaldi', '69003', 'Lyon', 'FRA'),
    ('Leroy', 'Marie', '1982-09-17', 'F', '369 rue de la Liberté', '33000', 'Bordeaux', 'FRA'),
    ('Roux', 'David', '1994-06-11', 'M', '852 avenue de la Gare', '33000', 'Bordeaux', 'FRA');