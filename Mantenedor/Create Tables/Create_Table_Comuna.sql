Use Mantenedor;
GO
CREATE TABLE DBO.COMUNA(
	NRO_COMUNA INT,
	NOMBRE_COMUNA VARCHAR(MAX),
	ESTADO_COMUNA [BIT] NULL
)


INSERT INTO COMUNA(NRO_COMUNA, NOMBRE_COMUNA, ESTADO_COMUNA)
VALUES 
(816, 'Cerrillos', 1),
(811, 'Cerro Navia', 1),
(814, 'Conchalí', 1),
(821, 'El Bosque', 1),
(816, 'Estación Central', 1),
(816, 'Huechuraba', 1),
(814, 'Independencia', 1),
(813, 'La Cisterna', 1),
(821, 'La Florida', 1),
(813, 'La Granja', 1),
(817, 'La Pintana', 1),
(817, 'La Reina',1),
(811, 'Las Condes', 1),
(816, 'Lo Barnechea',1 ),
(813, 'Lo Espejo', 1),
(816, 'Lo Prado', 1),
(821, 'Macul', 1),
(815, 'Maipú', 1),
(815, 'Ñuñoa', 1),
(821, 'Pedro Aguirre Cerda', 1),
(813, 'Peñalolén', 1),
(816, 'Providencia', 1),
(812, 'Pudahuel', 1),
(821, 'Puente Alto', 1),
(812, 'Quilicura', 1),
(816, 'Quinta Normal', 1),
(814, 'Recoleta', 1),
(812, 'Renca', 1),
(817, 'San Bernardo', 1),
(821, 'San Joaquín', 1),
(821, 'San Miguel', 1),
(813, 'San Ramón', 1),
(815, 'Santiago', 1),
(812, 'Vitacura', 1);

