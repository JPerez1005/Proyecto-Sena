-- Active: 1701573068567@@127.0.0.1@3306@nuevo_sena
DROP DATABASE nuevo_sena;
create database nuevo_sena;
use nuevo_sena;
CREATE TABLE `specialty`
( `code_specialty` int primary key,
`name_specialty` varchar(20) NOT NULL);

CREATE TABLE `career`
( `code_career` int NOT NULL,
`name_career` varchar(80) NOT NULL,
PRIMARY KEY (`code_career`));

CREATE TABLE `instructor`
( `id_instructor` int primary key,
`name_instructor` varchar(50),
`last_name_instructor` varchar(50));

CREATE TABLE `course`
( `code_course` int primary key,
`name_course` varchar(80));

CREATE TABLE `apprentice`
( `id_apprentice` int PRIMARY KEY,
`name_apprentice` varchar(50),
`last_name_apprentice` varchar(50),
`age_apprentice` int);

CREATE TABLE `route`
( `number_route` int primary key,
`name_route` varchar(50),
`code_career` int,
CONSTRAINT FOREIGN KEY (`code_career`)
REFERENCES `career` (`code_career`));

CREATE TABLE `register`
( `code_register` int primary key,
`number_route` int,
`registration_status` varchar(20),
`id_apprentice` int,
CONSTRAINT FOREIGN KEY (`number_route`)
REFERENCES `route` (`number_route`),
CONSTRAINT FOREIGN KEY (`id_apprentice`)
REFERENCES `apprentice` (`id_apprentice`));


CREATE TABLE `course_instructor`
( `code_course` int NOT NULL,
`id_instructor` int NOT NULL,
CONSTRAINT FOREIGN KEY (`code_course`)
REFERENCES `course` (`code_course`),
CONSTRAINT FOREIGN KEY (`id_instructor`)
REFERENCES `instructor` (`id_instructor`));

CREATE TABLE `route_course`
( `number_route` int NOT NULL,
`code_course` int NOT NULL,
`duration` varchar(30) DEFAULT NULL,
CONSTRAINT FOREIGN KEY (`code_course`)
REFERENCES `course` (`code_course`),
CONSTRAINT FOREIGN KEY (`number_route`)
REFERENCES `route` (`number_route`));

CREATE TABLE `specialty_instructor`
( `code_specialty` int NOT NULL,
`id_instructor` int NOT NULL,
CONSTRAINT FOREIGN KEY (`code_specialty`)
REFERENCES `specialty` (`code_specialty`),
CONSTRAINT FOREIGN KEY (`id_instructor`)
REFERENCES `instructor` (`id_instructor`));


INSERT INTO specialty (code_specialty, name_specialty) VALUES
(1, 'Sistemas'),
(2, 'Electrónica'),
(3, 'Mecánica'),
(4, 'Salud Ocupacional'),
(5, 'Soldadura'),
(6, 'Inglés');

INSERT INTO career (code_career, name_career) VALUES
(1, 'Desarrollo de Software'),
(2, 'Electrónica'),
(3, 'Mecánica Automotriz'),
(4, 'Seguridad y Salud Ocupacional'),
(5, 'Soldadura');

INSERT INTO instructor (id_instructor, name_instructor, last_name_instructor) VALUES
(1, 'Ricardo Vicente', 'Jaimes'),
(2, 'Marinela', 'Narvaez'),
(3, 'Agustín Parra', 'Granados'),
(4, 'Nelson Raúl', 'Buitrago'),
(5, 'Roy Hernando', 'Llamas'),
(6, 'Maria Jimena', 'Monsalve'),
(7, 'Juan Carlos', 'Cobos'),
(8, 'Pedro Nell', 'Santamaría'),
(9, 'Andrea', 'González'),
(10, 'Marisela', 'Sevilla');

INSERT INTO course (code_course, name_course) VALUES
(1, 'Matemáticas Básicas'),
(2, 'Álgebra Computacional'),
(3, 'Programación Básica'),
(4, 'Inglés'),
(5, 'Electrónica Básica'),
(6, 'Motor de Cuatro Tiempos'),
(7, 'Enfermedades Laborales'),
(8, 'Higiene Postural en el Trabajo'),
(9, 'Ergonomía'),
(10, 'Legislación Laboral en Colombia'),
(11, 'Materiales de Soldadura'),
(12, 'Métodos de Soldadura'),
(13, 'Fusión de Metales'),
(14, 'Buceo 1'),
(15, 'Buceo 2'),
(16, 'Riesgo Eléctrico'),
(17, 'Bases de Datos Relacionales'),
(18, 'Bases de Datos NO Relacionales'),
(19, 'Electrónica Digital'),
(20, 'Microprocesadores');

INSERT INTO `apprentice` (`id_apprentice`, `name_apprentice`, `last_name_apprentice`, `age_apprentice`)
VALUES
(1, 'Carlos Saúl', 'Gómez', FLOOR(RAND()*(40-20+1))+20),
(2, 'Leyla María', 'Delgado Vargas', FLOOR(RAND()*(40-20+1))+20),
(3, 'Juan José', 'Cardona', FLOOR(RAND()*(40-20+1))+20),
(4, 'Sergio Augusto', 'Contreras Navas', FLOOR(RAND()*(40-20+1))+20),
(5, 'Ana María', 'Velázquez Parra', FLOOR(RAND()*(40-20+1))+20),
(6, 'Gustavo Noriega', 'Alzate', FLOOR(RAND()*(40-20+1))+20),
(7, 'Pedro Nell', 'Gómez Díaz', FLOOR(RAND()*(40-20+1))+20),
(8, 'Jairo Augusto', 'Castro Camargo', FLOOR(RAND()*(40-20+1))+20),
(9, 'Henry', 'Soler Vega', FLOOR(RAND()*(40-20+1))+20),
(10, 'Antonio', 'Cañate Cortés', FLOOR(RAND()*(40-20+1))+20),
(11, 'Daniel', 'Simancas Junior', FLOOR(RAND()*(40-20+1))+20);

INSERT INTO route (number_route, name_route, code_career) VALUES
(1, 'Sistemas de Información Empresariales', 1),
(2, 'Videojuegos', 1),
(3, 'Machine Learning', 1),
(4, 'Microcontroladores', 2),
(5, 'Robótica', 2),
(6, 'Dispositivos Bio-médicos', 2),
(7, 'Motores Híbridos', 2),
(8, 'Vehículos de Uso Agrícola', 3),
(9, 'Sistemas de Gestión en Seguridad Ocupacional', 4),
(10, 'Soldadura Autógena Industrial', 5),
(11, 'Soldadura Eléctrica Industrial', 5),
(12, 'Soldadura Submarina', 5);

UPDATE route
SET code_career = 2
WHERE number_route IN (4);

-- Insertar datos en la tabla `register`
INSERT INTO `register` 
(`code_register`, 
`number_route`,
`registration_status`, 
`id_apprentice`)
VALUES
(1, 1, 'Activo', 1),
(2, 1, 'Activo', 1),
(3, 1, 'Activo', 1),
(4, 1, 'Activo', 1),
(5, 1, 'Activo', 2),
(6, 1, 'Activo', 2),
(7, 1, 'Activo', 2),
(8, 1, 'Activo', 2),
(9, 2, 'Cancelado', 3),
(10, 2, 'Cancelado', 3),
(11, 2, 'Cancelado', 3),
(12, 2, 'Activo', 4),
(13, 2, 'Activo', 4),
(14, 2, 'Activo', 4),
(15, 3, 'Activo', 5),
(16, 3, 'Activo', 5),
(17, 3, 'Activo', 5),
(18, 4, 'Terminado', 6),
(19, 4, 'Terminado', 6),
(20, 4, 'Terminado', 6),
(21, 4, 'Terminado', 7),
(22, 4, 'Terminado', 7),
(23, 5, 'Cancelado', 8),
(24, 5, 'Cancelado', 8),
(25, 5, 'Cancelado', 8),
(26, 5, 'Terminado', 9),
(27, 5, 'Terminado', 9),
(28, 5, 'Terminado', 9),
(29, 6, 'Terminado', 10),
(30, 6, 'Terminado', 10),
(31, 7, 'Terminado', 11),
(32, 7, 'Terminado', 11);


INSERT INTO route_course (number_route, code_course, duration)
VALUES
(1, 17, '6 meses'), -- Sistemas de Información Empresariales - Bases de Datos Relacionales
(1, 2, '6 meses'),  -- Sistemas de Información Empresariales - Álgebra Computacional
(1, 3, '6 meses'),  -- Sistemas de Información Empresariales - Programación Básica
(1, 18, '6 meses'),  -- Sistemas de Información Empresariales - Matemáticas Básicas
(1, 2, '6 meses'),  -- Sistemas de Información Empresariales - Álgebra Computacional (repetido)
(1, 3, '6 meses'),  -- Sistemas de Información Empresariales - Programación Básica (repetido)
(1, 4, '6 meses'),  -- Sistemas de Información Empresariales - Inglés
(2, 1, '6 meses'),  -- Videojuegos - Matemáticas Básicas
(2, 2, '6 meses'),  -- Videojuegos - Álgebra Computacional
(2, 3, '6 meses'),  -- Videojuegos - Programación Básica
(2, 4, '6 meses'),  -- Videojuegos - Inglés
(2, 1, '6 meses'),  -- Videojuegos - Matemáticas Básicas (repetido)
(2, 2, '6 meses'),  -- Videojuegos - Álgebra Computacional (repetido)
(3, 3, '6 meses'),  -- Machine Learning - Programación Básica
(3, 4, '6 meses'),  -- Machine Learning - Inglés
(3, 17, '6 meses'), -- Machine Learning - Bases de Datos Relacionales
(4, 5, '6 meses'),  -- Microcontroladores - Electrónica Básica
(4, 19, '6 meses'), -- Microcontroladores - Electrónica Digital
(4, 20, '6 meses'), -- Microcontroladores - Microprocesadores
(4, 5, '6 meses'),  -- Microcontroladores - Electrónica Básica (repetido)
(4, 19, '6 meses'), -- Microcontroladores - Electrónica Digital (repetido)
(4, 20, '6 meses'), -- Microcontroladores - Microprocesadores (repetido)
(5, 5, '6 meses'),  -- Robótica - Electrónica Básica
(5, 19, '6 meses'), -- Robótica - Electrónica Digital
(5, 5, '6 meses'),  -- Robótica - Electrónica Básica (repetido)
(5, 19, '6 meses'), -- Robótica - Electrónica Digital (repetido)
(5, 20, '6 meses'), -- Robótica - Microprocesadores
(11, 11, '6 meses'),-- Soldadura Eléctrica - Materiales de Soldadura
(11, 13, '6 meses'),-- Soldadura Eléctrica - Fusión de Metales
(10, 11, '6 meses'),-- Soldadura Autógena - Materiales de Soldadura
(10, 14, '6 meses') -- Soldadura Autógena - Buceo 1
;

INSERT INTO route_course (number_route, code_course, duration)
VALUE(1,1,'6 meses');

INSERT INTO course_instructor (code_course, id_instructor)
VALUES
(17, 2), -- Bases de Datos Relacionales - Marinela Narvaez
(2, 1),  -- Álgebra Computacional - Ricardo Vicente Jaimes
(3, 3),  -- Programación Básica - Agustín Parra Granados
(18, 2), -- Bases de Datos NO Relacionales - Marinela Narvaez
(1, 4),  -- Matemáticas Básicas - Nelson Raúl Buitrago
(4, 5),  -- Inglés - Roy Hernando Llamas
(5, 7),  -- Electrónica Básica - Juan Carlos Cobos
(19, 6), -- Electrónica Digital - Maria Jimena Monsalve
(20, 7), -- Microprocesadores - Juan Carlos Cobos
(11, 3), -- Materiales de Soldadura - Agustín Parra Granados
(13, 3) -- Fusión de Metales - Agustín Parra Granados
;

INSERT INTO specialty_instructor (code_specialty, id_instructor)
VALUES
(1, 1),  -- Sistemas - Ricardo Vicente Jaimes
(2, 2),  -- Electrónica - Marinela Narvaez
(3, 3),  -- Mecánica - Agustín Parra Granados
(1, 4),  -- Sistemas - Nelson Raúl Buitrago
(6, 5),  -- Inglés - Roy Hernando Llamas
(2, 7),  -- Electrónica - Juan Carlos Cobos
(2, 6),  -- Electrónica - Maria Jimena Monsalve
(5, 3),  -- Soldadura - Agustín Parra Granados
(4, 3)   -- Salud Ocupacional - Agustín Parra Granados
;



--4. Seleccionar los nombres y edades de aprendices que están cursando la
--carrera de electrónica.
SELECT DISTINCT a.name_apprentice, a.age_apprentice, a.id_apprentice, c.name_career
FROM apprentice a
JOIN register r ON a.id_apprentice = r.id_apprentice
JOIN route rt ON rt.number_route = r.number_route
JOIN career c ON c.code_career = rt.code_career
WHERE c.name_career = 'Electrónica';

--5. Seleccionar Nombres de Aprendices junto al nombre de la ruta de
--aprendizaje que cancelaron.

select DISTINCT name_apprentice,rt.name_route,r.registration_status
FROM apprentice a
JOIN register r ON a.id_apprentice = r.id_apprentice
JOIN route rt ON rt.number_route = r.number_route
WHERE r.registration_status='Cancelado';

--6. Seleccionar Nombre de los cursos que no tienen un 
--instructor asignado.
SELECT course.name_course
FROM course
LEFT JOIN course_instructor ON course.code_course = course_instructor.code_course
WHERE course_instructor.code_course IS NULL;

--7. Seleccionar Nombres de los instructores que dictan cursos en la ruta de
--aprendizaje “Sistemas de Información Empresariales”.
select DISTINCT instructor.name_instructor
from instructor
join course_instructor on instructor.id_instructor = course_instructor.id_instructor
join course on course.code_course = course_instructor.code_course
join route_course on course.code_course = route_course.code_course
where route_course.number_route=1;


--8. Genere un listado de todos los aprendices que terminaron una Carrera
--mostrando el nombre del profesional, el nombre de la carrera y el
--énfasis de la carrera (Nombre de la Ruta de aprendizaje)

SELECT DISTINCT a.name_apprentice, route.name_route, career.name_career, r.registration_status
FROM apprentice a
JOIN register r ON a.id_apprentice = r.id_apprentice
JOIN route ON route.number_route = r.number_route
JOIN career ON career.code_career = route.code_career
WHERE r.registration_status = 'Terminado';

--9. Genere un listado de los aprendices matriculados en el curso “Bases de
--Datos Relacionales”.

SELECT DISTINCT apprentice.name_apprentice
FROM apprentice
JOIN register ON apprentice.id_apprentice = register.id_apprentice
JOIN route_course ON register.number_route = route_course.number_route
JOIN course ON route_course.code_course = course.code_course
WHERE course.name_course = 'Bases de Datos Relacionales';

CREATE TABLE apprentice_course (
    id_apprentice INT,
    code_course INT,
    CONSTRAINT FOREIGN KEY (id_apprentice) REFERENCES apprentice(id_apprentice),
    CONSTRAINT FOREIGN KEY (code_course) REFERENCES course(code_course)
);

insert into apprentice_course(id_apprentice,code_course)
VALUES
(1,17),(1,2),(1,3),(1,18),(2,1),(2,2),(2,3),(2,4),(3,1),(3,2),
(3,3),(4,4),(4,1),(4,2),(5,3),(5,4),(5,17),(6,5),(6,19),(6,20),
(7,5),(7,19),(7,20),(8,5),(8,19),(9,5),(9,19),(9,20),(10,11),(10,13),
(11,11),(11,14);

SELECT DISTINCT a.name_apprentice
FROM apprentice a
join apprentice_course ac on a.id_apprentice=ac.id_apprentice
join course c on c.code_course=ac.code_course
WHERE c.name_course = 'Bases de Datos Relacionales';



--10. Nombres de Instructores que no tienen curso asignado.
select i.name_instructor
from instructor i
LEFT JOIN course_instructor ON i.id_instructor = course_instructor.id_instructor
where course_instructor.id_instructor is null;


select DISTINCT a.name_apprentice, c.name_course, ro.name_route
from apprentice a
join register r on a.id_apprentice=r.id_apprentice
join route ro on ro.number_route=r.number_route
join route_course rc on ro.number_route=rc.number_route
join course c on c.code_course=rc.code_course
WHERE a.name_apprentice= 'Leyla María';

select DISTINCT a.name_apprentice, ro.name_route
FROM apprentice a
join register r on a.id_apprentice=r.id_apprentice
join route ro on ro.number_route=r.number_route;

