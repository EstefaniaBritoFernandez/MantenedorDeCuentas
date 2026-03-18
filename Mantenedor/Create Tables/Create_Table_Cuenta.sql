USE Mantenedor;
CREATE TABLE DBO.CUENTA (
	ID_CUENTA			INT PRIMARY KEY IDENTITY(1,1),
	CTA_RUT				VARCHAR(15) NOT NULL UNIQUE,
	CTA_NOMBRE			VARCHAR(250) NOT NULL,
    EMPRESA_NOMBRE VARCHAR(MAX),
	CTA_DIRECCION		VARCHAR(350) NULL,
	CTA_COMUNA			VARCHAR(350) NULL,
	CTA_ESTADO			[BIT] NOT NULL,
	CTA_COSTO_CONTABLE	VARCHAR(100)  NULL,
	CTA_ENCARGADO		VARCHAR(MAX),
	CTA_GEO_CONSUMERKEY		VARCHAR(100) NULL,
	CTA_GEO_CONSUMERSECRET			VARCHAR(100) NULL,
	CTA_PERIODO_CONTROL_ASISTENCIA	[smallint] NULL,
	CTA_PARAMETROS					VARCHAR (4000)  NULL,
	CTA_MAIL						VARCHAR(250),
	CLIENTE_AUTOID [numeric](18,0),
    CLIENTE_DESCRIPCION VARCHAR(MAX),
	EMPRESA_AUTOID INT NULL
	);
	

INSERT INTO CUENTA (CTA_RUT, CTA_NOMBRE, CTA_DIRECCION, CTA_COMUNA, CTA_ESTADO, CTA_MAIL, CTA_ENCARGADO, CTA_GEO_CONSUMERKEY, CTA_GEO_CONSUMERSECRET, CTA_PERIODO_CONTROL_ASISTENCIA)
VALUES ('90413001-K' , 'CCU S.A.', 'Av. Vitacura 2670', 'Las Condes', 1, 'contacto@ccu.cl'),
       ('90064000-1', 'COCA-COLA EMBONOR', 'Av. Presidente Kennedy 5454', 'Vitacura', 2, 'contacto@embonor.cl'),
       ('90291000-K', 'NESTLE CHILE S.A.', 'Av. Las Condes 11287', 'Las Condes', 1, 'servicioconsumidor@nestle.cl'),
       ('90510000-9', 'SOPROLE S.A.', 'Av. Vitacura 4465', 'Vitacura', 1, 'sac@soprole.cl'),
       ('92580000-7', 'ENTEL CHILE', 'Av. Andrés Bello 2687', 'Las Condes', 1, 'atencion@entel.cl'),
       ('65011791-K', 'FPAY (FALABELLA)', 'Av. Santa María 5888', 'Vitacura', 1, 'contacto@fpay.cl'),
       ('90141000-3', 'CAROZZI S.A.', 'Camino Nos a Los Espejos 2277', 'San Bernardo', 1, 'sac@carozzi.cl'),
       ('96502020-9', 'SOFTYS (CMPC)', 'Av. Agustinas 1343', 'Santiago', 1, 'contacto@softys.com'),
       ('76447823-3', 'PIBAMOUR', 'Panamericana Norte 19001', 'Lampa', 1, 'info@pibamour.cl');
INSERT INTO CUENTA (CTA_RUT, CTA_NOMBRE, CTA_DIRECCION, CTA_COMUNA, CTA_ESTADO, CTA_MAIL)
VALUES ('96509651-5', 'PROLESUR', 'Claudio Arrau 0200', 'Osorno', 1, 'contacto@prolesur.cl'),
       ('90231000-2', 'LABORATORIO CHILE', 'Av. Marathon 1315', 'Ñuñoa', 1, 'consultas@labchile.cl'),
       ('91575000-5', 'SC JOHNSON CHILE', 'Av. Del Valle 601', 'Huechuraba', 1, 'sac_chile@scj.com'),
       ('82121500-1', 'BALLERINA', 'Av. El Retiro 1257', 'Renca', 1, 'contacto@ballerina.cl'),
       ('90456000-6', 'TRESMONTES LUCCHETTI', 'Av. Vicuña Mackenna 4230', 'Macul', 1, 'sac@tmluc.com'),
       ('90733000-8', '3M CHILE', 'Santa Isabel 1001', 'Antofagasta', 1, 'atencion3m@mmm.com'),
       ('91113000-2', 'SALFA S.A.', 'Ruta 5 Sur KM 1017', 'Puerto Montt', 1, 'info@salfa.cl'),
       ('90314000-3', 'KRAFT HEINZ CHILE', 'Av. Vitacura 2939', 'Las Condes', 1, 'atencionalcliente@kraftheinz.com'),
       ('90012000-8', 'COLUN', 'Esmeralda 641', 'La Unión', 1, 'contacto@colun.cl');

INSERT INTO CUENTA (CTA_RUT, CTA_NOMBRE, CTA_DIRECCION, CTA_COMUNA, CTA_ESTADO, CTA_MAIL)
VALUES ('77261280-K', 'ENEX (SHELL)', 'Av. El Salto 4610', 'Huechuraba', 1, 'contacto@enex.cl'),
       ('91341000-2', 'TRADIS FALABELLA', 'Av. Lo Espejo 3200', 'San Bernardo', 1, 'soporte@tradis.cl'),
       ('90195000-8', 'KOMATSU CHILE', 'Av. Américo Vespucio 0631', 'Quilicura', 1, 'contacto@komatsu.cl'),
       ('76425167-0', 'ISA INTERVIAL', 'Av. Del Cóndor 550', 'Huechuraba', 1, 'contacto@isaintervial.cl'),
       ('60505000-6', 'TGR (TESORERÍA)', 'Teatinos 28', 'Santiago', 1, 'contacto@tgr.cl'),
       ('83301100-2', 'UNIVERSIDAD ANDRES BELLO', 'República 252', 'Santiago', 1, 'contacto@unab.cl'),
       ('60907000-1', 'SENAPRED (ONEMI)', 'Beauchef 1671', 'Santiago', 1, 'contacto@senapred.cl'),
       ('91380000-5', 'PURINA (NESTLÉ)', 'Av. Las Condes 11287', 'Las Condes', 1, 'purina@nestle.cl'),
       ('90035000-3', 'ICB (MARCO POLO)', 'Av. El Parque 1307', 'Quilicura', 1, 'sac@icb.cl');


       SELECT * FROM CUENTA