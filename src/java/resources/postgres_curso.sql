--
-- PostgreSQL database dump
--
SET client_encoding = 'UTF8';

CREATE SEQUENCE id_estudiante_seq INCREMENT BY 1 NO MAXVALUE NO MINVALUE;
CREATE SEQUENCE id_curso_seq INCREMENT BY 1 NO MAXVALUE NO MINVALUE;
CREATE SEQUENCE id_inscripcion_seq INCREMENT BY 1 NO MAXVALUE NO MINVALUE;

-- -----------------------------------------------------
-- Table estudiantes
-- -----------------------------------------------------
DROP TABLE IF EXISTS estudiante;

CREATE  TABLE IF NOT EXISTS estudiante
(
  id INTEGER NOT NULL PRIMARY KEY DEFAULT NEXTVAL('id_estudiante_seq') ,
  ci VARCHAR(10) NOT NULL ,
  nombre VARCHAR(50) NOT NULL ,
  paterno VARCHAR(50) NOT NULL ,
  materno VARCHAR(50) NULL ,
  email VARCHAR(50) NULL ,
  telefono VARCHAR(10) NULL
 );

-- -----------------------------------------------------
-- Table curso
-- -----------------------------------------------------
DROP TABLE IF EXISTS curso ;

CREATE  TABLE IF NOT EXISTS curso 
(
  id INTEGER NOT NULL PRIMARY KEY DEFAULT NEXTVAL('id_curso_seq') ,
  nombre VARCHAR(50) NOT NULL ,
  descripcion VARCHAR(50) NOT NULL ,
  precio FLOAT NOT NULL ,
  fecha_inicio DATE NOT NULL
);

-- -----------------------------------------------------
-- Table inscripcion
-- -----------------------------------------------------
DROP TABLE IF EXISTS inscripcion ;

CREATE  TABLE IF NOT EXISTS inscripcion 
(
  id INTEGER NOT NULL PRIMARY KEY DEFAULT NEXTVAL('id_inscripcion_seq') ,
  nota INTEGER NULL ,
  estudiante_id INT NOT NULL ,
  curso_id INT NOT NULL
);

ALTER TABLE inscripcion ADD CONSTRAINT fk_inscripcion_estudiante FOREIGN KEY(estudiante_id)
REFERENCES estudiante(id)
on delete restrict on update restrict;

ALTER TABLE inscripcion ADD CONSTRAINT fk_inscripcion_curso FOREIGN KEY(curso_id)
REFERENCES curso (id)
on delete restrict on update restrict;


-- -----------------------------------------------------
-- Data for table estudiantes
-- -----------------------------------------------------
INSERT INTO estudiante(ci, nombre, paterno, materno, email, telefono) VALUES ('5025860', 'Juan', 'Perez', 'Mendoza', 'juan@hotmail.com', '70698548');
INSERT INTO estudiante(ci, nombre, paterno, materno, email, telefono) VALUES ('6325874', 'Marcos', 'Torrez', 'Luna', 'marcos@yahoo.es', '70814852');
INSERT INTO estudiante(ci, nombre, paterno, materno, email, telefono) VALUES ('5847216', 'Lucas', 'Flores', 'Camacho', 'lucas@gmail.com', '60587412');
INSERT INTO estudiante(ci, nombre, paterno, materno, email, telefono) VALUES ('5028745', 'Mateo', 'Caceres', 'Paredez', 'mateo@gmail.com', '71002580');
INSERT INTO estudiante(ci, nombre, paterno, materno, email, telefono) VALUES ('6074125', 'Ana', 'Alancay', 'Palma', 'ana@hotmail.com', '60147023');
INSERT INTO estudiante(ci, nombre, paterno, materno, email, telefono) VALUES ('5263337', 'Maria', 'Sosa', 'Gomez', 'maria@gmail.com', '72015969');
INSERT INTO estudiante(ci, nombre, paterno, materno, email, telefono) VALUES ('5800699', 'Geronimo', 'Ledesma', 'Montero', 'geronimo@gmail.com', '72200995');
INSERT INTO estudiante(ci, nombre, paterno, materno, email, telefono) VALUES ('6221854', 'Emanuel', 'Pozo', 'Ramirez', 'emanuel@hotmail.com', '63377201');
INSERT INTO estudiante(ci, nombre, paterno, materno, email, telefono) VALUES ('6110327', 'Gabriel', 'Arce', 'Pereira', 'gabriel@yahoo.es', '70587226');
INSERT INTO estudiante(ci, nombre, paterno, materno, email, telefono) VALUES ('6885228', 'Pablo', 'Marmol', 'Roca', 'pablo@hotmail.com', '6985214');
INSERT INTO estudiante(ci, nombre, paterno, materno, email, telefono) VALUES ('5120452', 'Pedro', 'Arteaga', 'Gonzales', 'pedro@hotmail.com', '70271603');
INSERT INTO estudiante(ci, nombre, paterno, materno, email, telefono) VALUES ('5889965', 'Arturo', 'Soliz', 'Barrio', 'arturo@gmail.com', '73366997');

-- -----------------------------------------------------
-- Data for table curso
-- -----------------------------------------------------
INSERT INTO curso (nombre, descripcion, precio, fecha_inicio) VALUES ('JAVA SE', 'Introduccion a Java Standard Edition', 380, '2015-10-26');
INSERT INTO curso (nombre, descripcion, precio, fecha_inicio) VALUES ('PHP', 'Programacion web dinamica con PHP', 260, '2015-06-05');
INSERT INTO curso (nombre, descripcion, precio, fecha_inicio) VALUES ('ANDROID', 'Programacion movil con android', 460, '2015-08-20');
INSERT INTO curso (nombre, descripcion, precio, fecha_inicio) VALUES ('SYMFONY', 'Framework para el desarrollo rapido con PHP', 360, '2015-07-18');
INSERT INTO curso (nombre, descripcion, precio, fecha_inicio) VALUES ('MONGODB', 'Gestor de base de datos no sql', 500, '2015-05-06');

-- -----------------------------------------------------
-- Data for table inscripcion
-- -----------------------------------------------------
INSERT INTO inscripcion (nota, estudiante_id, curso_id) VALUES (55, 1, 4);
INSERT INTO inscripcion (nota, estudiante_id, curso_id) VALUES (20, 2, 4);
INSERT INTO inscripcion (nota, estudiante_id, curso_id) VALUES (98, 3, 5);
INSERT INTO inscripcion (nota, estudiante_id, curso_id) VALUES (50, 4, 1);
INSERT INTO inscripcion (nota, estudiante_id, curso_id) VALUES (0, 5, 1);
INSERT INTO inscripcion (nota, estudiante_id, curso_id) VALUES (30, 6, 3);
INSERT INTO inscripcion (nota, estudiante_id, curso_id) VALUES (48, 7, 2);
INSERT INTO inscripcion (nota, estudiante_id, curso_id) VALUES (70, 8, 2);
INSERT INTO inscripcion (nota, estudiante_id, curso_id) VALUES (12, 9, 5);
INSERT INTO inscripcion (nota, estudiante_id, curso_id) VALUES (80, 10, 3);
INSERT INTO inscripcion (nota, estudiante_id, curso_id) VALUES (70, 11, 1);
INSERT INTO inscripcion (nota, estudiante_id, curso_id) VALUES (32, 12, 1);
INSERT INTO inscripcion (nota, estudiante_id, curso_id) VALUES (90, 5, 3);
INSERT INTO inscripcion (nota, estudiante_id, curso_id) VALUES (57, 6, 4);
