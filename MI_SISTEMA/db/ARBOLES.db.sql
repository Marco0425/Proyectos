BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "CLIMA_Z_GEO" (
	"CLIMA_Z_GEO_ID"	VARCHAR2(50) NOT NULL,
	"CLIMA_Z_GEO_NAME"	VARCHAR2(50) NOT NULL,
	CONSTRAINT "PK_CLIMA_Z_GEO" PRIMARY KEY("CLIMA_Z_GEO_ID")
);
CREATE TABLE IF NOT EXISTS "CLIMA" (
	"CLIMA_ID"	VARCHAR2(50) NOT NULL,
	"CLIMA_NAME"	VARCHAR2(50) NOT NULL,
	"CLIMA_Z_GEO_ID"	VARCHAR2(50) NOT NULL,
	"CLIMA_TEMP"	VARCHAR2(50) NOT NULL,
	"CLIMA_ALTI"	VARCHAR2(50) NOT NULL,
	"CLIMA_LATI"	VARCHAR2(50) NOT NULL,
	"CLIMA_SUELO_ID"	VARCHAR2(50) NOT NULL,
	CONSTRAINT "FK_CLIMA_SUELO" FOREIGN KEY("CLIMA_SUELO_ID") REFERENCES "SUELO"("SUELO_ID"),
	CONSTRAINT "FK_CLIMA_Z_GEO" FOREIGN KEY("CLIMA_Z_GEO_ID") REFERENCES "CLIMA_Z_GEO"("CLIMA_Z_GEO_ID"),
	CONSTRAINT "PK_CLIMA" PRIMARY KEY("CLIMA_ID")
);
CREATE TABLE IF NOT EXISTS "CUIDADOS_PLAGAS" (
	"PLAGAS_ID"	varchar2(50) NOT NULL,
	"PLAGAS_NAME"	varchar2(50) NOT NULL,
	CONSTRAINT "PK_CUIDADOS_PLAGAS" PRIMARY KEY("PLAGAS_ID")
);
CREATE TABLE IF NOT EXISTS "CUIDADOS" (
	"CUIDADOS_ID"	VARCHAR2(50) NOT NULL,
	"CUI_ENFER_ABONO_ID"	VARCHAR2(50) NOT NULL,
	"CUI_ENFER_PLAGAS_ID"	VARCHAR2(50) NOT NULL,
	CONSTRAINT "FK_CUI_ENFER_PLAGAS" FOREIGN KEY("CUI_ENFER_PLAGAS_ID") REFERENCES "CUIDADOS_PLAGAS"("PLAGAS_ID"),
	CONSTRAINT "FK_CUI_ENFER_ABONO" FOREIGN KEY("CUI_ENFER_ABONO_ID") REFERENCES "CUIDADOS_ABONO"("ABONO_ID"),
	CONSTRAINT "PK_CUIDADOS" PRIMARY KEY("CUIDADOS_ID")
);
CREATE TABLE IF NOT EXISTS "CUIDADOS_ABONO" (
	"ABONO_ID"	VARCHAR2(50) NOT NULL,
	"ABONO_NAME"	VARCHAR2(50) NOT NULL,
	CONSTRAINT "PK_CUIDADOS_ABONO" PRIMARY KEY("ABONO_ID")
);
CREATE TABLE IF NOT EXISTS "ESPE_RAIZ" (
	"ARL_RAIZ_ID"	VARCHAR2(50) NOT NULL,
	"ARL_RAIZ_NAME"	VARCHAR2(50) NOT NULL,
	CONSTRAINT "PK_ESPE_RAIZ" PRIMARY KEY("ARL_RAIZ_ID")
);
CREATE TABLE IF NOT EXISTS "ESPE_HOJAS" (
	"ARL_HOJAS_ID"	VARCHAR2(50) NOT NULL,
	"ARL_HOJAS_NAME"	VARCHAR2(50) NOT NULL,
	CONSTRAINT "PK_ESPE_HOJAS" PRIMARY KEY("ARL_HOJAS_ID")
);
CREATE TABLE IF NOT EXISTS "ESPE_RAMAS" (
	"ARL_RAMAS_ID"	VARCHAR2(50) NOT NULL,
	"ARL_RAMAS_NAME"	VARCHAR2(100) NOT NULL,
	CONSTRAINT "PK_ESPE_RAMAS" PRIMARY KEY("ARL_RAMAS_ID")
);
CREATE TABLE IF NOT EXISTS "ARL_ESPE" (
	"ARLPE_ID"	VARCHAR2(50) NOT NULL,
	"ARLPE_NAME"	VARCHAR2(50) NOT NULL,
	"ARLPE_ALTURA"	NUMERIC NOT NULL,
	"ARLPE_RAIZ_ID"	VARCHAR2(50) NOT NULL,
	"ARLPE_RAMAS_ID"	VARCHAR2(50) NOT NULL,
	"ARLPE_HOJAS_ID"	VARCHAR2(50) NOT NULL,
	CONSTRAINT "FK_ARLPE_RAIZ" FOREIGN KEY("ARLPE_RAIZ_ID") REFERENCES "ESPE_RAIZ"("ARL_RAIZ_ID"),
	CONSTRAINT "FK_ARLPE_HOJAS" FOREIGN KEY("ARLPE_HOJAS_ID") REFERENCES "ESPE_HOJAS"("ARL_HOJAS_ID"),
	CONSTRAINT "FK_ARLPE_RAMAS" FOREIGN KEY("ARLPE_RAMAS_ID") REFERENCES "ESPE_RAMAS"("ARL_RAMAS_ID"),
	CONSTRAINT "PK_ARL_ESPE" PRIMARY KEY("ARLPE_ID")
);
CREATE TABLE IF NOT EXISTS "CONSULTA_ARBOL" (
	"CONSUL_ID"	VARCHAR2(50) NOT NULL,
	"ARL_ARL_ESPE_ID"	VARCHAR2(50) NOT NULL,
	"ARL_TOTAL"	NUMERIC NOT NULL,
	"ARL_CLIMA_ID"	VARCHAR2(50) NOT NULL,
	"ARL_CUIDADOS_ID"	VARCHAR2(50) NOT NULL,
	CONSTRAINT "FK_ARL" FOREIGN KEY("ARL_ARL_ESPE_ID") REFERENCES "ARL_ESPE"("ARLPE_ID"),
	CONSTRAINT "FK_ARL_CLIMA" FOREIGN KEY("ARL_CLIMA_ID") REFERENCES "CLIMA"("CLIMA_ID"),
    CONSTRAINT "FK_ARL_CUIDADOS" FOREIGN KEY("ARL_CUIDADOS_ID") REFERENCES "CUIDADOS"("CUIDADOS_ID"),
	CONSTRAINT "PK_CONSULTA_ARBOL" PRIMARY KEY("CONSUL_ID")
);
CREATE TABLE IF NOT EXISTS "SUELO" (
	"SUELO_ID"	VARCHAR2(50),
	"SUELO_NAME"	VARCHAR2(50),
	CONSTRAINT "PK_SULEO" PRIMARY KEY("SUELO_ID")
);
INSERT INTO "CLIMA_Z_GEO" VALUES ('ALCAL01','TLAHUAC');
INSERT INTO "CLIMA_Z_GEO" VALUES ('ALCAL02','BENITO JUAREZ');
INSERT INTO "CLIMA_Z_GEO" VALUES ('ALCAL03','CUAJIMALPA DE MORELOS');
INSERT INTO "CLIMA_Z_GEO" VALUES ('ALCAL04','GUSTAVO A. MADERO');
INSERT INTO "CLIMA_Z_GEO" VALUES ('ALCAL05','CUAUHTEMOC');
INSERT INTO "CLIMA_Z_GEO" VALUES ('ALCAL06','ALVARO OBREGON');
INSERT INTO "CLIMA_Z_GEO" VALUES ('ALCAL07','XOCHIMILCO');
INSERT INTO "CLIMA_Z_GEO" VALUES ('ALCAL08','TLALPAN');
INSERT INTO "CLIMA_Z_GEO" VALUES ('ALCAL09','VENUSTIANO CARRANZA');
INSERT INTO "CLIMA_Z_GEO" VALUES ('ALCAL10','AZCAPOTZALCO');
INSERT INTO "CLIMA_Z_GEO" VALUES ('ALCAL11','IZTAPALAPA');
INSERT INTO "CLIMA_Z_GEO" VALUES ('ALCAL12','IZTACALCO');
INSERT INTO "CLIMA_Z_GEO" VALUES ('ALCAL13','MIGUEL HIDALGO');
INSERT INTO "CLIMA_Z_GEO" VALUES ('ALCAL14','LA MAGDALENA CONTRERAS');
INSERT INTO "CLIMA_Z_GEO" VALUES ('ALCAL15','COYOACAN');
INSERT INTO "CLIMA_Z_GEO" VALUES ('ALCAL16','MILPA ALTA');
INSERT INTO "CLIMA_Z_GEO" VALUES ('ALCAL17','TLANEPANTLA');
INSERT INTO "CLIMA" VALUES ('CLIMA12','MEDITERRANEO','ALCAL03','-7??C','19.3392611311','-99.3231057374','SUELO01');
INSERT INTO "CLIMA" VALUES ('CLIMA01','TROPICAL','ALCAL13','0??c','19.4291832801','-99.1968723529','SUELO01');
INSERT INTO "CLIMA" VALUES ('CLIMA03','TEMPLADO','ALCAL08','-1??c','19.2807278004','-99.1786759609','SUELO05');
INSERT INTO "CLIMA" VALUES ('CLIMA08','TROPICAL MONZONICO','ALCAL05','+10??c','19.4291832801','-99.1968723529','SUELO05');
INSERT INTO "CLIMA" VALUES ('CLIMA04','CONTINENTAL','ALCAL12','-1??c','19.4003710526','-99.114740351','SUELO10');
INSERT INTO "CLIMA" VALUES ('CLIMA15','CALIDO','ALCAL05','-1??c','19.4291832801','-99.1968723529','SUELO02');
INSERT INTO "CUIDADOS_PLAGAS" VALUES ('PLAGA01','Cochinilla');
INSERT INTO "CUIDADOS_PLAGAS" VALUES ('PLAGA02','Pulgones');
INSERT INTO "CUIDADOS_PLAGAS" VALUES ('PLAGA15','Succionadores');
INSERT INTO "CUIDADOS_PLAGAS" VALUES ('PLAGA16','Nematodos');
INSERT INTO "CUIDADOS_PLAGAS" VALUES ('PLAGA17','Larvas de Mosca');
INSERT INTO "CUIDADOS_PLAGAS" VALUES ('PLAGA18','Aciculas');
INSERT INTO "CUIDADOS_PLAGAS" VALUES ('PLAGA19','Plantas Paracitas');
INSERT INTO "CUIDADOS_PLAGAS" VALUES ('PLAGA20','Ara??a Roja');
INSERT INTO "CUIDADOS_PLAGAS" VALUES ('PLAGA21','Ara??a Roja, Barrenos');
INSERT INTO "CUIDADOS_PLAGAS" VALUES ('PLAGA22','Roya, Pulgones, Cohinillas');
INSERT INTO "CUIDADOS_PLAGAS" VALUES ('PLAGA23','Acaros,Insectos Bruquidos,Hongos');
INSERT INTO "CUIDADOS_PLAGAS" VALUES ('PLAGA24','Cochinilla, Termitas');
INSERT INTO "CUIDADOS_PLAGAS" VALUES ('PLAGA25','Pulgones,Caracoles,Cochinillas');
INSERT INTO "CUIDADOS_PLAGAS" VALUES ('PLAGA26','Cochinilla,Pulgones,MoscaFruta');
INSERT INTO "CUIDADOS_PLAGAS" VALUES ('PLAGA27','Cochinilla,Pulgones,AgallaPirul');
INSERT INTO "CUIDADOS_PLAGAS" VALUES ('PLAGA28','Ara??a Roja, Pulgones');
INSERT INTO "CUIDADOS_PLAGAS" VALUES ('PLAGA29','Resistente');
INSERT INTO "CUIDADOS_PLAGAS" VALUES ('PLAGA30','Acaros,Epifitas,Insectos,Caracoles,Tlalconetes');
INSERT INTO "CUIDADOS" VALUES ('CUID01','ABONO02','PLAGA28');
INSERT INTO "CUIDADOS" VALUES ('CUID02','ABONO16','PLAGA01');
INSERT INTO "CUIDADOS" VALUES ('CUID03','ABONO16','PLAGA22');
INSERT INTO "CUIDADOS" VALUES ('CUID04','ABONO02','PLAGA24');
INSERT INTO "CUIDADOS" VALUES ('CUID08','ABONO17','PLAGA29');
INSERT INTO "CUIDADOS" VALUES ('CUID09','ABONO01','PLAGA23');
INSERT INTO "CUIDADOS" VALUES ('CUID010','ABONO16','PLAGA30');
INSERT INTO "CUIDADOS" VALUES ('CUID011','ABONO16','PLAGA19');
INSERT INTO "CUIDADOS" VALUES ('CUID014','ABONO02','PLAGA23');
INSERT INTO "CUIDADOS" VALUES ('CUID017','ABONO18','PLAGA21');
INSERT INTO "CUIDADOS" VALUES ('CUID023','ABONO16','PLAGA22');
INSERT INTO "CUIDADOS" VALUES ('CUID024','ABONO04','PLAGA24');
INSERT INTO "CUIDADOS" VALUES ('CUID025','ABONO01','PLAGA27');
INSERT INTO "CUIDADOS_ABONO" VALUES ('ABONO01','Nitrogeno');
INSERT INTO "CUIDADOS_ABONO" VALUES ('ABONO02','Potasio');
INSERT INTO "CUIDADOS_ABONO" VALUES ('ABONO15','SulfAmoniaco,SulfPotasio,SuperfosfatoCal ');
INSERT INTO "CUIDADOS_ABONO" VALUES ('ABONO16','ECOLOGICO,FOSFATO DE POTASIO');
INSERT INTO "CUIDADOS_ABONO" VALUES ('ABONO17','FERTILIZANTE MINERAL');
INSERT INTO "CUIDADOS_ABONO" VALUES ('ABONO18','FOSFORO Y POTASIO');
INSERT INTO "CUIDADOS_ABONO" VALUES ('ABONO19','SUSTRATO UNIVERSAL');
INSERT INTO "CUIDADOS_ABONO" VALUES ('ABONO20','MINERAL,ORGANICO');
INSERT INTO "CUIDADOS_ABONO" VALUES ('ABONO21','SULFATO DE POTASIO');
INSERT INTO "CUIDADOS_ABONO" VALUES ('ABONO22','NITROGENO,POTASIO,FOSOFORO');
INSERT INTO "CUIDADOS_ABONO" VALUES ('ABONO03','CALCIO');
INSERT INTO "CUIDADOS_ABONO" VALUES ('ABONO04','ZINC');
INSERT INTO "CUIDADOS_ABONO" VALUES ('ABONO05','CALCIO, ZINC');
INSERT INTO "CUIDADOS_ABONO" VALUES ('ABONO06','FOSFORO');
INSERT INTO "ESPE_RAIZ" VALUES ('RAIZ01','Invasiva');
INSERT INTO "ESPE_RAIZ" VALUES ('RAIZ02','NO Invasiva');
INSERT INTO "ESPE_HOJAS" VALUES ('TYPLEAV01','Perenne');
INSERT INTO "ESPE_HOJAS" VALUES ('TYPLEAV02','Caduca');
INSERT INTO "ESPE_RAMAS" VALUES ('RAMAS01','Pendulas');
INSERT INTO "ESPE_RAMAS" VALUES ('RAMAS02','Ascendente');
INSERT INTO "ARL_ESPE" VALUES ('TREE01','Acacia Azul',8,'RAIZ01','RAMAS01','TYPLEAV01');
INSERT INTO "ARL_ESPE" VALUES ('TREE02','Acacia Negra',15,'RAIZ02','RAMAS02','TYPLEAV02');
INSERT INTO "ARL_ESPE" VALUES ('TREE03','Arbol Orquidea',10,'RAIZ01','RAMAS01','TYPLEAV02');
INSERT INTO "ARL_ESPE" VALUES ('TREE04','Ciruelo',10,'RAIZ01','RAMAS02','TYPLEAV01');
INSERT INTO "ARL_ESPE" VALUES ('TREE05','Ebano',30,'RAIZ02','RAMAS02','TYPLEAV02');
INSERT INTO "ARL_ESPE" VALUES ('TREE06','Flor de Mayo',20,'RAIZ01','RAMAS01','TYPLEAV02');
INSERT INTO "ARL_ESPE" VALUES ('TREE07','Jacaranda',15,'RAIZ02','RAMAS02','TYPLEAV01');
INSERT INTO "ARL_ESPE" VALUES ('TREE08','Limonero',6,'RAIZ01','RAMAS01','TYPLEAV01');
INSERT INTO "ARL_ESPE" VALUES ('TREE09','Magnolia',20,'RAIZ02','RAMAS02','TYPLEAV01');
INSERT INTO "ARL_ESPE" VALUES ('TREE10','Mimosa',12,'RAIZ02','RAMAS02','TYPLEAV01');
INSERT INTO "ARL_ESPE" VALUES ('TREE11','Nispero',5,'RAIZ01','RAMAS01','TYPLEAV02');
INSERT INTO "ARL_ESPE" VALUES ('TREE12','Palo Dulce',8,'RAIZ02','RAMAS01','TYPLEAV01');
INSERT INTO "ARL_ESPE" VALUES ('TREE13','Piruli del Brasil',10,'RAIZ01','RAMAS02','TYPLEAV01');
INSERT INTO "ARL_ESPE" VALUES ('TREE14','Truneo',8,'RAIZ01','RAMAS01','TYPLEAV01');
INSERT INTO "ARL_ESPE" VALUES ('TREE15','Ahuehuete',40,'RAIZ01','RAMAS01','TYPLEAV01');
INSERT INTO "ARL_ESPE" VALUES ('TREE16','Ahuejote',15,'RAIZ01','RAMAS01','TYPLEAV02');
INSERT INTO "ARL_ESPE" VALUES ('TREE17','Aile',15,'RAIZ02','RAMAS01','TYPLEAV02');
INSERT INTO "ARL_ESPE" VALUES ('TREE18','Astronomica',15,'RAIZ02','RAMAS02','TYPLEAV02');
INSERT INTO "ARL_ESPE" VALUES ('TREE19','Capulin',15,'RAIZ01','RAMAS01','TYPLEAV01');
INSERT INTO "ARL_ESPE" VALUES ('TREE20','Chabacano',10,'RAIZ02','RAMAS02','TYPLEAV01');
INSERT INTO "ARL_ESPE" VALUES ('TREE21','Encino Siempre Verde',25,'RAIZ01','RAMAS02','TYPLEAV02');
INSERT INTO "ARL_ESPE" VALUES ('TREE22','Encino',25,'RAIZ01','RAMAS02','TYPLEAV02');
INSERT INTO "ARL_ESPE" VALUES ('TREE23','Fresno',20,'RAIZ01','RAMAS01','TYPLEAV02');
INSERT INTO "ARL_ESPE" VALUES ('TREE24','Grevilla',1.5,'RAIZ02','RAMAS01','TYPLEAV02');
INSERT INTO "ARL_ESPE" VALUES ('TREE25','Guayabo',10,'RAIZ01','RAMAS02','TYPLEAV02');
INSERT INTO "ARL_ESPE" VALUES ('TREE26','Huizache',12,'RAIZ01','RAMAS02','TYPLEAV01');
INSERT INTO "ARL_ESPE" VALUES ('TREE27','Liquidambar',30,'RAIZ02','RAMAS01','TYPLEAV01');
INSERT INTO "ARL_ESPE" VALUES ('TREE28','Manzano',12,'RAIZ01','RAMAS02','TYPLEAV02');
INSERT INTO "ARL_ESPE" VALUES ('TREE29','Mezquite',9,'RAIZ02','RAMAS01','TYPLEAV01');
INSERT INTO "ARL_ESPE" VALUES ('TREE30','Negundo',15,'RAIZ02','RAMAS01','TYPLEAV02');
INSERT INTO "ARL_ESPE" VALUES ('TREE31','Olivo',4,'RAIZ01','RAMAS01','TYPLEAV01');
INSERT INTO "ARL_ESPE" VALUES ('TREE32','Palma Obanico',20,'RAIZ02','RAMAS01','TYPLEAV02');
INSERT INTO "ARL_ESPE" VALUES ('TREE33','Palma Datilera',30,'RAIZ02','RAMAS01','TYPLEAV02');
INSERT INTO "ARL_ESPE" VALUES ('TREE34','Palo de Rosa',25,'RAIZ02','RAMAS01','TYPLEAV02');
INSERT INTO "ARL_ESPE" VALUES ('TREE35','Peral',20,'RAIZ02','RAMAS02','TYPLEAV01');
INSERT INTO "ARL_ESPE" VALUES ('TREE36','Pino Alepo',25,'RAIZ01','RAMAS01','TYPLEAV02');
INSERT INTO "ARL_ESPE" VALUES ('TREE37','Pino Ayacahuite',40,'RAIZ01','RAMAS02','TYPLEAV01');
INSERT INTO "ARL_ESPE" VALUES ('TREE38','Pino Azul',15,'RAIZ01','RAMAS02','TYPLEAV02');
INSERT INTO "ARL_ESPE" VALUES ('TREE39','Pino Po??onero',10,'RAIZ01','RAMAS01','TYPLEAV02');
INSERT INTO "ARL_ESPE" VALUES ('TREE40','Piru Comun',15,'RAIZ01','RAMAS01','TYPLEAV02');
INSERT INTO "ARL_ESPE" VALUES ('TREE41','Sauce',30,'RAIZ01','RAMAS01','TYPLEAV01');
INSERT INTO "ARL_ESPE" VALUES ('TREE42','Sicomoro',20,'RAIZ02','RAMAS02','TYPLEAV01');
INSERT INTO "ARL_ESPE" VALUES ('TREE43','Tejocote',10,'RAIZ01','RAMAS02','TYPLEAV01');
INSERT INTO "ARL_ESPE" VALUES ('TREE44','Tepozan',3,'RAIZ01','RAMAS02','TYPLEAV01');
INSERT INTO "ARL_ESPE" VALUES ('TREE45','Cazahuate',4,'RAIZ01','RAMAS02','TYPLEAV01');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL01','TREE01',13,'CLIMA12','CUID01');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL02','TREE02',10,'CLIMA01','CUID02');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL03','TREE03',36,'CLIMA03','CUID03');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL04','TREE04',33,'CLIMA08','CUID09');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL05','TREE05',325,'CLIMA08','CUID04');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL06','TREE06',1064,'CLIMA12','CUID05');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL07','TREE07',1060,'CLIMA12','CUID01');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL09','TREE09',239,'CLIMA03','CUID02');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL11','TREE11',460,'CLIMA03','CUID08');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL12','TREE12',110,'CLIMA03','CUID09');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL13','TREE13',50,'CLIMA03','CUID01');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL14','TREE14',60,'CLIMA03','CUID08');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL15','TREE15',1068,'CLIMA03','CUID01');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL16','TREE16',777,'CLIMA03','CUID01');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL19','TREE19',178,'CLIMA12','CUID018');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL20','TREE20',70,'CLIMA03','CUID003');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL22','TREE22',30,'CLIMA03','CUID014');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL23','TREE23',495,'CLIMA01','CUID02');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL25','TREE25',423,'CLIMA01','CUID015');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL26','TREE26',2111,'CLIMA03','CUID08');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL27','TREE27',211,'CLIMA12','CUID017');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL29','TREE29',270,'CLIMA03','CUID019');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL30','TREE30',110,'CLIMA12','CUID02');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL31','TREE31',69,'CLIMA03','CUID020');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL33','TREE33',219,'CLIMA03','CUID08');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL34','TREE34',42,'CLIMA03','CUID022');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL35','TREE35',49,'CLIMA12','CUID08');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL40','TREE40',833,'CLIMA03','CUID05');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL41','TREE41',50,'CLIMA03','CUID08');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL42','TREE42',102,'CLIMA03','CUID08');
INSERT INTO "CONSULTA_ARBOL" VALUES ('CONSUL45','TREE45',158,'CLIMA03','CUID022');
INSERT INTO "SUELO" VALUES ('SUELO01','ADAPTABLE');
INSERT INTO "SUELO" VALUES ('SUELO02','ARENOSO');
INSERT INTO "SUELO" VALUES ('SUELO03','CALIZO');
INSERT INTO "SUELO" VALUES ('SUELO04','LIMOSO');
INSERT INTO "SUELO" VALUES ('SUELO05','TIERRA_NEGRA');
INSERT INTO "SUELO" VALUES ('SUELO06','ARCILLOSO');
INSERT INTO "SUELO" VALUES ('SUELO10','ACIDO');
INSERT INTO "SUELO" VALUES ('SUELO11','ROCOSO');
INSERT INTO "SUELO" VALUES ('SUELO07','PEDREGOSO');
INSERT INTO "SUELO" VALUES ('SUELO08','TURBA');

COMMIT;
