--==========================================================================================================================
-- GEDEMON YNAEMP
--==========================================================================================================================
-- StartPosition 
------------------------------------------------------------	
CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);
INSERT INTO StartPosition
		(Civilization,				Leader,					MapName,			X,	Y)
VALUES	('CIVILIZATION_ICENI',		'LEADER_BOUDICCA',		'GiantEarth',		12,	73),
		('CIVILIZATION_ICENI',		'LEADER_BOUDICCA',		'GreatestEarthMap',	41,	52),
		('CIVILIZATION_ICENI',		'LEADER_BOUDICCA',		'PlayEuropeAgain',	32,	63),
		('CIVILIZATION_ICENI',		'LEADER_BOUDICCA',		'LargestEarth',		16,	90);
--==========================================================================================================================
-- JFD RULE WITH FAITH
--==========================================================================================================================
-- Leader_Titles 
------------------------------------------------------------	
CREATE TABLE IF NOT EXISTS 
	Leader_Titles (
	LeaderType  											text 		 											default null,
	GovernmentType											text 	REFERENCES Governments(GovernmentType) 			default null,
	LeaderTitle												text													default null,
	PolicyType  											text 		 											default null,
	UseFeminine												boolean													default 0,
	TitleIsFullName											boolean													default 0);	
	
INSERT INTO Leader_Titles
		(LeaderType, 			GovernmentType, LeaderTitle, PolicyType)
SELECT	'LEADER_BOUDICCA', 	GovernmentType, LeaderTitle, PolicyType
FROM Leader_Titles WHERE LeaderType = 'LEADER_CATHERINE_DE_MEDICI';
--==========================================================================================================================
--==========================================================================================================================