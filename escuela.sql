CREATE DATABASE ESCUELA;
USE ESCUELA;

CREATE TABLE ALUMNOS(
Nombre VARCHAR(45) NOT NULL,
Carrera VARCHAR(20) NOT NULL,
id_Cuenta VARCHAR(20) NOT NULL,
Promedio FLOAT(3) NOT NULL,
PRIMARY KEY (id_Cuenta)
);


CREATE TABLE CURSOS(
id_Cursos VARCHAR(20) NOT NULL,
Nombre VARCHAR(45) NOT NULL,
Departamento VARCHAR(45) default NULL comment 'Existen datos nulos, por lo tanto se pone esta restrinccion' ,
Horario VARCHAR(20) not NULL,
PRIMARY KEY (id_Cursos)
);

CREATE TABLE MATRICULA(
id_c  INT NOT NULL AUTO_Increment,
Materia VARCHAR(20) NOT NULL,
Alumnos VARCHAR(20) NOT NULL,
PRIMARY KEY (id_c) comment 'Seria nuestra llave primaria automatica'
);


INSERT INTO ALUMNOS VALUES ('Lorena Caballero' , 'Biología ',' b3982 ', 9.2);
INSERT INTO ALUMNOS VALUES  ('León Martínez', 'Física', 'f3825', 8.6);
INSERT INTO ALUMNOS VALUES ('Rodrigo Fernández' , 'Física ', 'f2841' , 8.8);
INSERT INTO ALUMNOS VALUES ('Natalia Mantilla' , 'Matemáticas' , 'm2854'  , 9.0);
INSERT INTO ALUMNOS VALUES ('Eduardo Álvarez' , 'Biología' , 'b3287' , 9.8);
INSERT INTO ALUMNOS VALUES ('Gabriela Alvarado' , 'Matemáticas' , 'm8721' , 8.8);
INSERT INTO ALUMNOS VALUES ('Ernesto Acevedo' , 'Biología' , 'b2875' , 9.1);
INSERT INTO ALUMNOS VALUES ('Briseida Luna' , 'Biología' , 'b2874' , 7.4);


INSERT INTO CURSOS VALUES ('b2984' , 'Genética' , 'Biología' , 'Matutino');
INSERT INTO CURSOS VALUES ('b2835' , 'Biología Celular', Null , 'Matutino');
INSERT INTO CURSOS VALUES ('f3852',  'Mecánica Cuántica' , Null , 'Vespertino');
INSERT INTO CURSOS VALUES ('f3821' , 'Mecánica Vectorial' ,Null, 'Matutino');
INSERT INTO CURSOS VALUES ('m5381' , 'Introducción a las matemáticas',Null , 'Matutino');
INSERT INTO CURSOS VALUES ('m5382' , 'Ecuaciones diferenciales' ,Null, 'Vespertino');


INSERT INTO MATRICULA VALUES (NULL,'m5382' , 'm8721');
INSERT INTO MATRICULA VALUES (NULL,'m5382' , 'm2854');
INSERT INTO MATRICULA VALUES (NULL,'m5382' , 'f2841');
INSERT INTO MATRICULA VALUES (NULL,'m5382' , 'f3825');
INSERT INTO MATRICULA VALUES (NULL,'f3852' , 'f3825');
INSERT INTO MATRICULA VALUES (NULL,'f3852' , 'm8721');
INSERT INTO MATRICULA VALUES (NULL,'b2835' , 'b3892');
INSERT INTO MATRICULA VALUES (NULL,'b2835' , 'b3287');
INSERT INTO MATRICULA VALUES (NULL,'b2835' , 'f3825');
INSERT INTO MATRICULA VALUES (NULL,'b2835' , 'b2875');
INSERT INTO MATRICULA VALUES (NULL,'b2835' , 'b2874');
