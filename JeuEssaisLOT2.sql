REM **********************************************************************
REM Script ORACLE jeu de test du LOT 2
REM **********************************************************************   

REM ****** Affiche tous les projets *****
EXEC PACK_LOT_2.AFFICHEPROJET;

SELECT PACK_LOT_2.PROJETEFFECTIF(1) AS "Effectif du projet 1"
FROM DUAL;

SELECT PACK_LOT_2.PROJETEFFECTIF(3) AS "Effectif du projet 3"
FROM DUAL;

REM ****** Adhesions projet 3 *****
SELECT * FROM ADHERER WHERE Id_Projet = 3;

EXEC PACK_LOT_2.MODIFIERADHERENTS(3, 2);

REM ***** Impossible car adhérents du projet > nbAdhérents souhaité
EXEC PACK_LOT_2.MODIFIERADHERENTS(4, -5);

EXEC PACK_LOT_2.AFFICHEPROJET;

EXEC PACK_LOT_2.NOUVELLEADHESION(4, 1);

REM ***** Nombre max adhérents au projet atteint *****
EXEC PACK_LOT_2.NOUVELLEADHESION(5, 1);

EXEC PACK_LOT_2.NOUVELLEADHESION(1, 3);

REM ****** Adhésion du prospecteur 1 au projet 3 est vérifiable sur table ADHERER du projet 3 après modification du nombre adhérents *****
SELECT * FROM ADHERER WHERE Id_Projet = 3;

EXEC PACK_LOT_2.SEMINAIREPRESENCE(1);
EXEC PACK_LOT_2.SEMINAIREPRESENCE(2);
EXEC PACK_LOT_2.SEMINAIREPRESENCE(3);
EXEC PACK_LOT_2.SEMINAIREPRESENCE(4);
EXEC PACK_LOT_2.SEMINAIREPRESENCE(5);

REM ***** PROJET 1 *****
EXEC PACK_LOT_2.PRESENCEPROJETSEMINAIRE(1);

REM ***** PROJET 2 *****
EXEC PACK_LOT_2.PRESENCEPROJETSEMINAIRE(2);

REM ***** PROJET 3 *****
EXEC PACK_LOT_2.PRESENCEPROJETSEMINAIRE(3);

REM ***** PROJET 4 *****
EXEC PACK_LOT_2.PRESENCEPROJETSEMINAIRE(4);









