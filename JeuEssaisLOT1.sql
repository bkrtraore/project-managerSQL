REM **********************************************************************
REM Script ORACLE jeu de test du LOT 1
REM **********************************************************************   


INSERT INTO FONCTION(Id_Fonction, Nom_Fonction, Descrip_Fonction)
VALUES(SeqFonction.nextval,'Gestionnaire', 'Gèrer les prospectus');

INSERT INTO FONCTION(Id_Fonction, Nom_Fonction, Descrip_Fonction)
VALUES(SeqFonction.nextval,'Testeur' , 'Vérifier les prospectus');

INSERT INTO FONCTION(Id_Fonction, Nom_Fonction, Descrip_Fonction)
VALUES(SeqFonction.nextval,'Distributeur', 'Distribuer les prospectus');

INSERT INTO FONCTION(Id_Fonction, Nom_Fonction, Descrip_Fonction)
VALUES(SeqFonction.nextval,'Trieur', 'Trier les prospectus');

INSERT INTO PROJET(Id_Projet, Libelle_Projet, NbAdherent, Budget)
VALUES(SeqProjet.nextval, 'Environnement', 5, 20000);

INSERT INTO PROJET(Id_Projet, Libelle_Projet, NbAdherent, Budget)
VALUES(SeqProjet.nextval, 'Comptable', 5, 30000);

INSERT INTO PROJET(Id_Projet, Libelle_Projet, NbAdherent, Budget)
VALUES(SeqProjet.nextval, 'Droit', 4, 45000);

INSERT INTO PROJET(Id_Projet, Libelle_Projet, NbAdherent, Budget)
VALUES(SeqProjet.nextval, 'GPI', 8, 52500);

INSERT INTO SEMINAIRE(Id_Sem, LibelleSem, Id_Projet)
VALUES(SeqSeminaire.nextval, 'Ecosystèmes en péril', 1);

INSERT INTO SEMINAIRE(Id_Sem, LibelleSem, Id_Projet)
VALUES(SeqSeminaire.nextval,'Liberté et justice', 3);

INSERT INTO SEMINAIRE(Id_Sem, LibelleSem, Id_Projet)
VALUES(SeqSeminaire.nextval,'Gestion de patrimoine', 2);

INSERT INTO SEMINAIRE(Id_Sem, LibelleSem, Id_Projet)
VALUES(SeqSeminaire.nextval,'Marchés financiers', 2);

INSERT INTO  SEMINAIRE(Id_Sem, LibelleSem, Id_Projet)
VALUES(SeqSeminaire.nextval,'Maquettage Access', 4);



INSERT INTO PROSPECTEUR(Id_Pro, Nom_Pro, Prenom_Pro, Adresse_Pro, Tel_Pro, Mail_Pro, Id_Fonction)
VALUES(SeqProspecteur.nextval,'Ken', 'Marc', '20 rue du Palace', '0756234892', 'Marcken@hotmail.com', 1);

INSERT INTO PROSPECTEUR(Id_Pro, Nom_Pro, Prenom_Pro, Adresse_Pro, Tel_Pro, Mail_Pro, Id_Fonction)
VALUES(SeqProspecteur.nextval,'Cheb', 'Sarah', '18 rue Victor Hugo', '0612654932', 'Chebsarah1@outlook.fr',2);

INSERT INTO PROSPECTEUR(Id_Pro, Nom_Pro, Prenom_Pro, Adresse_Pro, Tel_Pro, Mail_Pro, Id_Fonction)
VALUES(SeqProspecteur.nextval,'Sayagh', 'Jacques', '30, Rue Tandou', '0611975972', 'Sayaghjacques75@outlook.fr',3);

INSERT INTO PROSPECTEUR(Id_Pro, Nom_Pro, Prenom_Pro, Adresse_Pro, Tel_Pro, Mail_Pro, Id_Fonction)
VALUES(SeqProspecteur.nextval,'Baks', 'Sham', '15 rue André Karman', '0768294565', 'Baksham@gmail.com',1);

INSERT INTO PROSPECTEUR(Id_Pro, Nom_Pro, Prenom_Pro, Adresse_Pro, Tel_Pro, Mail_Pro, Id_Fonction)
VALUES(SeqProspecteur.nextval,'Cat', 'Tom', '48 avenue des champs', '0798562439', 'Tommy7589@gmail.com',2);

INSERT INTO PROSPECTEUR(Id_Pro, Nom_Pro, Prenom_Pro, Adresse_Pro, Tel_Pro, Mail_Pro, Id_Fonction)
VALUES(SeqProspecteur.nextval,'Martin', 'Jerry', '13 avenue du palais', '0654821756', 'Jerryfish23@gmail.com',4);

INSERT INTO PROSPECTEUR(Id_Pro, Nom_Pro, Prenom_Pro, Adresse_Pro, Tel_Pro, Mail_Pro, Id_Fonction)
VALUES(SeqProspecteur.nextval,'Dupré', 'Isabelle', '56 avenue Leclerc', '0689526357', 'IsabelleDupre@gmail.com',4);

INSERT INTO ADHERER(Id_Pro, Id_Projet, DateAdhesion) VALUES(1, 1, '12/04/2020');
INSERT INTO ADHERER(Id_Pro, Id_Projet, DateAdhesion) VALUES(1, 2, '15/04/2020');

INSERT INTO ADHERER(Id_Pro, Id_Projet, DateAdhesion) VALUES(4, 3, '17/04/2020');
INSERT INTO ADHERER(Id_Pro, Id_Projet, DateAdhesion) VALUES(4, 4, '19/04/2020');

INSERT INTO ADHERER(Id_Pro, Id_Projet, DateAdhesion) VALUES(2, 1, '25/04/2020');
INSERT INTO ADHERER(Id_Pro, Id_Projet, DateAdhesion) VALUES(2, 2, '28/04/2020');

INSERT INTO ADHERER(Id_Pro, Id_Projet, DateAdhesion) VALUES(5, 3, '02/05/2020');
INSERT INTO ADHERER(Id_Pro, Id_Projet, DateAdhesion) VALUES(5, 4, '03/05/2020');

INSERT INTO ADHERER(Id_Pro, Id_Projet, DateAdhesion) VALUES(6, 1, '03/05/2020');
INSERT INTO ADHERER(Id_Pro, Id_Projet, DateAdhesion) VALUES(6, 2, '05/05/2020');

INSERT INTO ADHERER(Id_Pro, Id_Projet, DateAdhesion) VALUES(7, 3, '09/05/2020');
INSERT INTO ADHERER(Id_Pro, Id_Projet, DateAdhesion) VALUES(7, 4, '15/05/2020');

INSERT INTO ADHERER(Id_Pro, Id_Projet, DateAdhesion) VALUES(3, 1, '21/05/2020');
INSERT INTO ADHERER(Id_Pro, Id_Projet, DateAdhesion) VALUES(3, 2, '24/05/2020');

INSERT INTO ADHERER(Id_Pro, Id_Projet, DateAdhesion) VALUES(3, 3, '27/05/2020');
INSERT INTO ADHERER(Id_Pro, Id_Projet, DateAdhesion) VALUES(3, 4, '03/06/2020');


INSERT INTO PARTICIPER(Id_Pro, Id_Sem, Presence) VALUES(1, 1, 1);
INSERT INTO PARTICIPER(Id_Pro, Id_Sem, Presence) VALUES(1, 2, 1);
INSERT INTO PARTICIPER(Id_Pro, Id_Sem, Presence) VALUES(1, 3, 1);
INSERT INTO PARTICIPER(Id_Pro, Id_Sem, Presence) VALUES(2, 1, 1);
INSERT INTO PARTICIPER(Id_Pro, Id_Sem, Presence) VALUES(2, 3, 1);
INSERT INTO PARTICIPER(Id_Pro, Id_Sem, Presence) VALUES(2, 4, 0);
INSERT INTO PARTICIPER(Id_Pro, Id_Sem, Presence) VALUES(3, 1, 0);
INSERT INTO PARTICIPER(Id_Pro, Id_Sem, Presence) VALUES(3, 2, 0);
INSERT INTO PARTICIPER(Id_Pro, Id_Sem, Presence) VALUES(3, 3, 1);
INSERT INTO PARTICIPER(Id_Pro, Id_Sem, Presence) VALUES(3, 4, 1);
INSERT INTO PARTICIPER(Id_Pro, Id_Sem, Presence) VALUES(3, 5, 0);

INSERT INTO PARTICIPER(Id_Pro, Id_Sem, Presence) VALUES(4, 2, 0);
INSERT INTO PARTICIPER(Id_Pro, Id_Sem, Presence) VALUES(4, 5, 1);

INSERT INTO PARTICIPER(Id_Pro, Id_Sem, Presence) VALUES(5, 2, 1);
INSERT INTO PARTICIPER(Id_Pro, Id_Sem, Presence) VALUES(5, 5, 1);


INSERT INTO PARTICIPER(Id_Pro, Id_Sem, Presence) VALUES(6, 1, 0);
INSERT INTO PARTICIPER(Id_Pro, Id_Sem, Presence) VALUES(6, 3, 1);
INSERT INTO PARTICIPER(Id_Pro, Id_Sem, Presence) VALUES(6, 4, 1);

INSERT INTO PARTICIPER(Id_Pro, Id_Sem, Presence) VALUES(7, 2, 1);
INSERT INTO PARTICIPER(Id_Pro, Id_Sem, Presence) VALUES(7, 5, 1);


