REM **********************************************************************
REM Script ORACLE de création du LOT 2
REM **********************************************************************   

CREATE OR REPLACE PACKAGE PACK_LOT_2 IS
	FUNCTION PROJETEFFECTIF(IdProj INTEGER) RETURN INTEGER;
	PROCEDURE MODIFIERADHERENTS(IdProj NUMBER, Nbre NUMBER);
	PROCEDURE NOUVELLEADHESION(IdProspect INTEGER, IdProj INTEGER);
	PROCEDURE SEMINAIREPRESENCE(IdSemi INTEGER);
	PROCEDURE PRESENCEPROJETSEMINAIRE(IdProj INT);	
	PROCEDURE AFFICHEPROJET;
END PACK_LOT_2;
/

CREATE OR REPLACE PACKAGE BODY PACK_LOT_2 IS	
	FUNCTION PROJETEFFECTIF(IdProj INTEGER) RETURN INTEGER
	IS
	nbProspecteurs INTEGER;
	BEGIN 
	SELECT COUNT(Id_Pro) INTO nbProspecteurs FROM ADHERER WHERE Id_Projet = IdProj;
	RETURN nbProspecteurs;
	END;

	PROCEDURE MODIFIERADHERENTS(IdProj Number, Nbre Number)
	IS 
	NbProspecteurs INTEGER; 
	NbAdherents INTEGER;
	BEGIN
	NbProspecteurs := PROJETEFFECTIF(IdProj);
	SELECT NbAdherent INTO NbAdherents FROM PROJET WHERE Id_Projet = IdProj;
	IF (Nbre < 0 AND Abs(Nbre) > (NbAdherents - NbProspecteurs)) THEN
		RAISE_APPLICATION_ERROR(-20001, 'Impossible de modifier le nombre d''adhérents car le nombre de prospecteurs ayant adhéré au projet est supérieur au nombre d''adhérents que vous souhaitez retirer.');
		RETURN;
	ELSE
		UPDATE PROJET
		SET NbAdherent = NbAdherent + Nbre
		WHERE Id_Projet = IdProj;
	END IF;
	END MODIFIERADHERENTS;

	PROCEDURE NOUVELLEADHESION(IdProspect INTEGER, IdProj INTEGER)
	IS
	NbAdherents INTEGER;
	NbProspecteurs INTEGER;
	BEGIN
	SELECT NbAdherent INTO NbAdherents FROM PROJET WHERE Id_Projet = IdProj;
	NbProspecteurs := PROJETEFFECTIF(IdProj);
	IF (NbProspecteurs < NbAdherents) THEN
		INSERT INTO ADHERER(Id_Pro, Id_Projet, DateAdhesion) VALUES (IdProspect, IdProj, TO_CHAR(SYSDATE, 'DD/MM/RRRR'));
	ELSE
		RAISE_APPLICATION_ERROR(-20001, 'Impossible d''ajouter un nouvel adhérent car le nombre de place maximum d''adhérents à ce projet à été atteint');
	END IF;
	END NOUVELLEADHESION;


	PROCEDURE SEMINAIREPRESENCE(IdSemi INTEGER)
	IS
		CURSOR C1 IS 
		SELECT Prospecteur.Nom_Pro, Prospecteur.Prenom_Pro 
		FROM Prospecteur, Participer 
		WHERE Prospecteur.Id_Pro = Participer.Id_Pro 
		AND Participer.Id_Sem = IdSemi
		AND Participer.Presence = '1' ORDER BY 1,2;
	BEGIN
	dbms_output.put_line('Les prospecteurs présents au séminaire ' || IdSemi || ' sont :');
	FOR tuple_Pro IN C1 LOOP
		dbms_output.put_line(' - ' || UPPER(tuple_Pro.Nom_Pro) || ' ' || UPPER(tuple_Pro.Prenom_Pro));
	END LOOP;
	END SEMINAIREPRESENCE;

	PROCEDURE PRESENCEPROJETSEMINAIRE(IdProj INT)
	IS 
	CURSOR C2 IS 
	SELECT Id_Sem
	FROM SEMINAIRE 
	WHERE Id_Projet = IdProj;
	BEGIN 
	FOR tuple_Sem IN C2 LOOP
		BEGIN
		SEMINAIREPRESENCE(tuple_sem.Id_Sem);
		END;
	END LOOP;
	END PRESENCEPROJETSEMINAIRE;
	 

	PROCEDURE AFFICHEPROJET
	IS 
		CURSOR C1 IS 
		SELECT Projet.NbAdherent, Projet.Libelle_Projet
		FROM PROJET;
	BEGIN
	FOR tuple_projet IN C1 LOOP
		dbms_output.put_line('Effectif : ' || tuple_projet.NbAdherent || ' adhérent.e.s dans le projet ' || tuple_projet.Libelle_Projet);
	END LOOP;
	END AFFICHEPROJET;
END PACK_LOT_2;
/




