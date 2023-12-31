
-- creacion de la base de datos --
CREATE DATABASE sistema_votacion;

USE sistema_votacion;

-- creacion de la tabla regiones --
CREATE TABLE regiones (
  id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL
);


-- creacion de la tabla comunas --
CREATE TABLE comunas (
  id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  region_id INT(11) UNSIGNED NOT NULL,
  CONSTRAINT fk_comuna_region FOREIGN KEY (region_id) REFERENCES regiones(id)
);


-- creacion de la tabla votos --
CREATE TABLE votos (
	id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	alias VARCHAR(50) NOT NULL,
	rut VARCHAR(12) NOT NULL,
	email VARCHAR(100) NOT NULL,
	region VARCHAR(50) NOT NULL,
	comuna VARCHAR(50) NOT NULL,
	candidato INT(11) NOT NULL,
	opciones VARCHAR(255) NOT NULL
);



INSERT INTO regiones (id, nombre)
VALUES 
(1, 'Arica y Parinacota'),
(2, 'Tarapacá'),
(3, 'Antofagasta'),
(4, 'Atacama'),
(5, 'Coquimbo'),
(6, 'Valparaíso'),
(7, 'Metropolitana de Santiago'),
(8, 'Libertador General Bernardo O Higgins'),
(9, 'Maule'),
(10, 'Ñuble'),
(11, 'Biobío'),
(12, 'Araucanía'),
(13, 'Los Ríos'),
(14, 'Los Lagos'),
(15, 'Aysén del General Carlos Ibáñez del Campo'),
(16, 'Magallanes y de la Antártica Chilena');




INSERT INTO comunas (nombre, region_id)
VALUES
('Arica', 1),
('Camarones', 1),
('Putre', 1),
('General Lagos', 1),
('Iquique', 2),
('Alto Hospicio', 2),
('Pozo Almonte', 2),
('Camiña', 2),
('Colchane', 2),
('Huara', 2),
('Pica', 2),
('Antofagasta', 3),
('Mejillones', 3),
('Sierra Gorda', 3),
('Taltal', 3),
('Calama', 3),
('Ollagüe', 3),
('San Pedro de Atacama', 3),
('Tocopilla', 3),
('María Elena', 3),
('Chañaral', 4),
('Diego de Almagro', 4),
('Caldera', 4),
('Copiapó', 4),
('Tierra Amarilla', 4),
('Alto del Carmen', 4),
('Freirina', 4),
('Huasco', 4),
('Coquimbo', 5),
('La Serena', 5),
('Andacollo', 5),
('La Higuera', 5),
('Paiguano', 5),
('Vicuña', 5),
('Illapel', 5),
('Canela', 5),
('Los Vilos', 5),
('Salamanca', 5),
('Ovalle', 5),
('Combarbalá', 5),
('Monte Patria', 5),
('Punitaqui', 5),
('Río Hurtado', 5),
('Valparaíso', 6),
('Casablanca', 6),
('Concón', 6),
('Juan Fernández', 6),
('Puchuncaví', 6),
('Quilpué', 6),
('Villa Alemana', 6),
('Viña del Mar', 6),
('Isla de Pascua', 6),
('Los Andes', 6),
('Calle Larga', 6),
('Rinconada', 6),
('San Esteban', 6),
('La Ligua', 6),
('Cabildo', 6),
('Papudo', 6),
('Petorca', 6),
('Zapallar', 6),
('Quillota', 6),
('Calera', 6),
('Hijuelas', 6),
('La Cruz', 6),
('Nogales', 6),
('San Antonio', 6),
('Algarrobo', 6),
('Cartagena', 6),
('El Quisco', 6),
('El Tabo', 6),
('Santo Domingo', 6),
('San Felipe', 6),
('Catemu', 6),
('Llaillay', 6),
('Panquehue', 6),
('Putaendo', 6),
('Santa María', 6),
('Cerrillos', 7),
('Cerro Navia', 7),
('Conchalí', 7),
('El Bosque', 7),
('Estación Central', 7),
('Huechuraba', 7),
('Independencia', 7),
('La Cisterna', 7),
('La Florida', 7),
('La Granja', 7),
('La Pintana', 7),
('La Reina', 7),
('Las Condes', 7),
('Lo Barnechea', 7),
('Lo Espejo', 7),
('Lo Prado', 7),
('Macul', 7),
('Maipú', 7),
('Ñuñoa', 7),
('Pedro Aguirre Cerda', 7),
('Peñalolén', 7),
('Providencia', 7),
('Pudahuel', 7),
('Quilicura', 7),
('Quinta Normal', 7),
('Recoleta', 7),
('Renca', 7),
('San Joaquín', 7),
('San Miguel', 7),
('San Ramón', 7),
('Santiago', 7),
('Vitacura', 7),
('Rancagua', 8),
('Codegua', 8),
('Coinco', 8),
('Coltauco', 8),
('Doñihue', 8),
('Graneros', 8),
('Las Cabras', 8),
('Machalí', 8),
('Malloa', 8),
('Mostazal', 8),
('Olivar', 8),
('Peumo', 8),
('Pichidegua', 8),
('Quinta de Tilcoco', 8),
('Rengo', 8),
('Requínoa', 8),
('San Vicente', 8),
('La Estrella', 8),
('Litueche', 8),
('Marchihue', 8),
('Navidad', 8),
('Paredones', 8),
('Cauquenes', 9), 
('Chanco', 9), 
('Pelluhue', 9), 
('Curicó', 9), 
('Hualañé', 9), 
('Licantén', 9), 
('Molina', 9), 
('Rauco', 9), 
('Romeral', 9), 
('Sagrada Familia', 9), 
('Teno', 9), 
('Vichuquén', 9), 
('Colbún', 9), 
('Linares', 9), 
('Longaví', 9), 
('Parral', 9), 
('Retiro', 9), 
('San Javier', 9), 
('Villa Alegre', 9), 
('Yerbas Buenas', 9), 
('Constitución', 9), 
('Curepto', 9), 
('Empedrado', 9), 
('Maule', 9), 
('Pelarco', 9), 
('Pencahue', 9), 
('Río Claro', 9), 
('San Clemente', 9), 
('San Rafael', 9),
('Bulnes', 10),
('Chillán', 10),
('Chillán Viejo', 10),
('El Carmen', 10),
('Pemuco', 10),
('Pinto', 10),
('Quillón', 10),
('San Ignacio', 10),
('Yungay', 10),
('Cobquecura', 10),
('Coelemu', 10),
('Ninhue', 10),
('Portezuelo', 10),
('Quirihue', 10),
('Ránquil', 10),
('Treguaco', 10),
('San Carlos', 10),
('San Fabián', 10),
('San Nicolás', 10),
('Arauco', 11),
('Cañete', 11),
('Contulmo', 11),
('Curanilahue', 11),
('Lebu', 11),
('Los Álamos', 11),
('Tirúa', 11),
('Alto Biobío', 11),
('Antuco', 11),
('Cabrero', 11),
('Laja', 11),
('Los Ángeles', 11),
('Mulchén', 11),
('Nacimiento', 11),
('Negrete', 11),
('Quilaco', 11),
('Quilleco', 11),
('San Rosendo', 11),
('Santa Bárbara', 11),
('Tucapel', 11),
('Yumbel', 11),
('Chiguayante', 11),
('Concepción', 11),
('Coronel', 11),
('Florida', 11),
('Hualpén', 11),
('Hualqui', 11),
('Lota', 11),
('Penco', 11),
('San Pedro de la Paz', 11),
('Santa Juana', 11),
('Talcahuano', 11),
('Tomé', 11),
('Bulnes', 11),
('Chillán', 11),
('Chillán Viejo', 11),
('Cobquecura', 11),
('Coelemu', 11),
('Coihueco', 11),
('El Carmen', 11),
('Ninhue', 11),
('Ñiquén', 11),
('Pemuco', 11),
('Pinto', 11),
('Portezuelo', 11),
('Quillón', 11),
('Quirihue', 11),
('Ránquil', 11),
('San Carlos', 11),
('San Fabián', 11),
('San Ignacio', 11),
('San Nicolás', 11),
('Treguaco', 11),
('Yungay', 11),
('Cautín', 12),
('Temuco', 12),
('Carahue', 12),
('Cholchol', 12),
('Cunco', 12),
('Curarrehue', 12),
('Freire', 12),
('Galvarino', 12),
('Gorbea', 12),
('Lautaro', 12),
('Loncoche', 12),
('Melipeuco', 12),
('Nueva Imperial', 12),
('Padre Las Casas', 12),
('Perquenco', 12),
('Pitrufquén', 12),
('Pucón', 12),
('Saavedra', 12),
('Teodoro Schmidt', 12),
('Toltén', 12),
('Vilcún', 12),
('Villarrica', 12),
('Valdivia', 13),
('Corral', 13),
('Lanco', 13),
('Los Lagos', 13),
('Máfil', 13),
('Mariquina', 13),
('Paillaco', 13),
('Panguipulli', 13),
('La Unión', 13),
('Futrono', 13),
('Lago Ranco', 13),
('Río Bueno', 13),
('Ancud', 14),
('Castro', 14),
('Chonchi', 14),
('Curaco de Vélez', 14),
('Dalcahue', 14),
('Puqueldón', 14),
('Queilén', 14),
('Quellón', 14),
('Quemchi', 14),
('Quinchao', 14),
('Osorno', 14),
('Puerto Octay', 14),
('Purranque', 14),
('Puyehue', 14),
('Río Negro', 14),
('San Juan de la Costa', 14),
('San Pablo', 14),
('Calbuco', 14),
('Cochamó', 14),
('Fresia', 14),
('Frutillar', 14),
('Llanquihue', 14),
('Los Muermos', 14),
('Maullín', 14),
('Puerto Montt', 14),
('Puerto Varas', 14),
('Aisén', 15),
('Cisnes', 15),
('Guaitecas', 15),
('Cochrane', 15),
('O''Higgins', 15),
('Tortel', 15),
('Punta Arenas', 16),
('Laguna Blanca', 16),
('Río Verde', 16),
('San Gregorio', 16),
('Cabo de Hornos (Ex-Navarino)', 16),
('Antártica', 16),
('Porvenir', 16),
('Primavera', 16),
('Timaukel', 16),
('Natales', 16),
('Torres del Paine', 16);


-- creacion de la tabla candidatos --
CREATE TABLE candidatos (
  id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  partido VARCHAR(50) NOT NULL
);


INSERT INTO candidatos (nombre, partido) VALUES
('Rojas', 'Partido C'),
('Ana Martínez', 'Partido A'),
('Luis Flores', 'Partido B'),
('Carmen González', 'Partido C'),
('Carlos Gutiérrez', 'Partido A'),
('Laura Torres', 'Partido B'),
('Manuel Sánchez', 'Partido C');