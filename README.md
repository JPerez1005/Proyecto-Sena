<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Presentacion</title>
    <!--=============== REMIXICONS ===============-->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@3.2.0/fonts/remixicon.css" rel="stylesheet">
    <!--=============== CSS ===============-->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <section>
        <section class="parallax-1">
            <div class="parallax-inner">
                <h1>SENA</h1>
            </div>
        </section>
        <marquee>
            <h2>
                Servicio Nacional de Aprendizaje
            </h2>
        </marquee>
        <p>
            El Servicio Nacional de Aprendizaje SENA está implementando sus nuevas
            rutas de aprendizaje basada en cursos interrelacionados, en la que una
            carrera consta de varios cursos consecutivos organizados en rutas.
        </p>
        <section class="parallax-2">
            <div class="parallax-inner">
                <h1>Servicio Nacional</h1>
            </div>
        </section>
        <br>
            <h2>
                Diseño Base de Datos 
            </h2>
        <p>
            Una carrera puede tener hasta tres rutas de aprendizaje dependiendo del
            énfasis de la carrera. Por ejemplo, la Carrera Electrónica puede tener énfasis
            en: Robótica, Micro-controladores o Dispositivos Bio-Médicos, por lo tanto,
            tendrá tres rutas de aprendizaje. La Carrera de Desarrollo de Software puede
            tener énfasis en Sistemas de Información Empresariales, Desarrollo de
            VideoJuegos o Aprendizaje de Máquinas.
        </p>
        <br>
        <div class="container">
            <a href="#diagrama_entidad_relacion" class="button">
                <div class="button__content">
                    <span class="button__text">Diagrama Entidad</span>
                    <i class="ri-artboard-line button_icon"></i>
                    <div class="button__reflection-1"></div>
                    <div class="button__reflection-2"></div>
                </div>
                <img src="assets/star.png" alt="" class="button__star-1">
                <img src="assets/star.png" alt="" class="button__star-2">
                <img src="assets/circle.png" alt="" class="button__circle-1">
                <img src="assets/circle.png" alt="" class="button__circle-2">
                <img src="assets/diamond.png" alt="" class="button__diamond">
                <img src="assets/triangle.png" alt="" class="button__triangle">
                <div class="button__shadow"></div>
            </a>
            <a href="#diagrama_relacional" class="button">
                <div class="button__content">
                    <span class="button__text">Diagrama Relacional</span>
                    <i class="ri-artboard-line button_icon"></i>
                    <div class="button__reflection-1"></div>
                    <div class="button__reflection-2"></div>
                </div>
                <img src="assets/star.png" alt="" class="button__star-1">
                <img src="assets/star.png" alt="" class="button__star-2">
                <img src="assets/circle.png" alt="" class="button__circle-1">
                <img src="assets/circle.png" alt="" class="button__circle-2">
                <img src="assets/diamond.png" alt="" class="button__diamond">
                <img src="assets/triangle.png" alt="" class="button__triangle">
                <div class="button__shadow"></div>
            </a>
            <a href="#modelo_base" class="button">
                <div class="button__content">
                    <span class="button__text">Modelo Base</span>
                    <i class="ri-database-2-line button_icon"></i>
                    <div class="button__reflection-1"></div>
                    <div class="button__reflection-2"></div>
                </div>
                <img src="assets/star.png" alt="" class="button__star-1">
                <img src="assets/star.png" alt="" class="button__star-2">
                <img src="assets/circle.png" alt="" class="button__circle-1">
                <img src="assets/circle.png" alt="" class="button__circle-2">
                <img src="assets/diamond.png" alt="" class="button__diamond">
                <img src="assets/triangle.png" alt="" class="button__triangle">
                <div class="button__shadow"></div>
            </a>
            <a href="#consultas" class="button">
                <div class="button__content">
                    <span class="button__text">Consultas</span>
                    <i class="ri-terminal-box-line button_icon"></i>
                    <div class="button__reflection-1"></div>
                    <div class="button__reflection-2"></div>
                </div>
                <img src="assets/star.png" alt="" class="button__star-1">
                <img src="assets/star.png" alt="" class="button__star-2">
                <img src="assets/circle.png" alt="" class="button__circle-1">
                <img src="assets/circle.png" alt="" class="button__circle-2">
                <img src="assets/diamond.png" alt="" class="button__diamond">
                <img src="assets/triangle.png" alt="" class="button__triangle">
                <div class="button__shadow"></div>
            </a>
        </div>
        <div id="diagrama_entidad_relacion" class="secciones">
            <!-- <marquee> -->
                <h2>
                    Diagrama Entidad Relación
                </h2>
            <!-- </marquee> -->
            <center>
                <div class="parallax-3">
                </div>
                <div class="parallax-3-2">
                </div>
            </center>
        </div>
        <div id="diagrama_relacional" class="secciones">
            <!-- <marquee> -->
                <h2>
                    Diagrama Relacional
                </h2>
                <div class="parallax-4">
                </div>
                <img src="img/bd_2.png" alt="" class="dr2">
                <br><br><br><br>
                <img src="img/bd.png" alt="" class="dr">
            <!-- </marquee> -->
        </div>
        <div id="modelo_base" class="secciones">
            <!-- <marquee> -->
                <h2>
                    Modelo Base
                </h2>
            <!-- </marquee> -->
            <br><br><br>
            <div class="container_card">
                <div class="card_p">
                    <div class="box">
                        <div class="content">
                            <h2 style='user-select: none'>01</h2>
                            <h3 style='user-select: none'>Specialty</h3>
                            <p  style='user-select: all'>
                                CREATE TABLE `specialty` (
                                    `code_specialty` int primary key,
                                    `name_specialty` varchar(20) NOT NULL);
                            </p>
                        </div>
                    </div>
                </div>
                <div class="card_p">
                    <div class="box">
                        <div class="content">
                            <h2>02</h2>
                            <h3>Career</h3>
                            <p  style='user-select: all'>
                                CREATE TABLE `career` (
                                    `code_career` int NOT NULL,
                                    `name_career` varchar(80) NOT NULL,
                                    PRIMARY KEY (`code_career`));
                            </p>
                        </div>
                    </div>
                </div>
                <div class="card_p">
                    <div class="box">
                        <div class="content">
                            <h2>03</h2>
                            <h3>Instructor</h3>
                            <p  style='user-select: all'>
                                CREATE TABLE `instructor` (
                                `id_instructor` int primary key,
                                `name_instructor` varchar(50),
                                `last_name_instructor` varchar(50));
                            </p> 
                        </div>
                    </div>
                </div>
                <div class="card_p">
                    <div class="box">
                        <div class="content">
                            <h2>04</h2>
                            <h3>Course</h3>
                            <p  style='user-select: all'>
                                CREATE TABLE `course` (
                                `code_course` int primary key,
                                `name_course` varchar(80));
                            </p> 
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <div class="content">
                            <h2>05</h2>
                            <h3>Route</h3>
                            <p  style='user-select: all'>
                                CREATE TABLE `route` (
                                `number_route` int primary key,
                                `name_route` varchar(50),
                                `code_career` int,
                                CONSTRAINT 
                                FOREIGN KEY (`code_career`)
                                REFERENCES `career` (`code_career`));
                            </p> 
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <div class="content">
                            <h2>06</h2>
                            <h3>Register</h3>
                            <p  style='user-select: all'>
                                CREATE TABLE `register` (
                                `code_register` int primary key,
                                `number_route` int,
                                `registration_status` varchar(20),
                                CONSTRAINT
                                FOREIGN KEY (`number_route`)
                                REFERENCES `route` (`number_route`));
                            </p> 
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <div class="content">
                            <h2>07</h2>
                            <h3>Apprentice</h3>
                            <p  style='user-select: all'>
                                CREATE TABLE `apprentice` (
                                `id_apprentice` int PRIMARY KEY,
                                `name_apprentice` varchar(50),
                                `last_name_apprentice` varchar(50),
                                `code_register` int,
                                `age_apprentice` int,
                                CONSTRAINT
                                FOREIGN KEY (`code_register`)
                                REFERENCES `register` (`code_register`));
                            </p>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <div class="content">
                            <h2>08</h2>
                            <h3>Course_Instructor</h3>
                            <p  style='user-select: all'>
                                CREATE TABLE `course_instructor` (
                                `code_course` int NOT NULL,
                                `id_instructor` int NOT NULL,
                                CONSTRAINT
                                FOREIGN KEY (`code_course`) REFERENCES `course` (`code_course`),
                                CONSTRAINT
                                FOREIGN KEY (`id_instructor`) REFERENCES `instructor` (`id_instructor`));
                            </p>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <div class="content">
                            <h2>09</h2>
                            <h3>Route_Course</h3>
                            <p  style='user-select: all'>
                                CREATE TABLE `route_course` (
                                `number_route` int NOT NULL,
                                `code_course` int NOT NULL,
                                `duration` varchar(30) DEFAULT NULL,
                                CONSTRAINT
                                FOREIGN KEY (`code_course`) REFERENCES `course` (`code_course`),
                                CONSTRAINT
                                FOREIGN KEY (`number_route`) REFERENCES `route` (`number_route`));
                            </p>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <div class="content">
                            <h2>10</h2>
                            <h3>Route_Course</h3>
                            <p  style='user-select: all'>
                                CREATE TABLE `specialty_instructor` (
                                `code_specialty` int NOT NULL,
                                `id_instructor` int NOT NULL,
                                CONSTRAINT
                                FOREIGN KEY (`code_specialty`) REFERENCES `specialty` (`code_specialty`),
                                CONSTRAINT
                                FOREIGN KEY (`id_instructor`) REFERENCES `instructor` (`id_instructor`));
                            </p>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <div class="content">
                            <h2>11</h2>
                            <h3>Apprentice_Course</h3>
                            <p  style='user-select: all'>
                                CREATE TABLE apprentice_course (
                                    id_apprentice INT,
                                    code_course INT,
                                    CONSTRAINT FOREIGN KEY (id_apprentice) REFERENCES apprentice(id_apprentice),
                                    CONSTRAINT FOREIGN KEY (code_course) REFERENCES course(code_course)
                                );
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="secciones" id="consultas">
            <h2>
                Consultas
            </h2>
            <p id="consulta">
                --1. Agregue un campo Estado_Matrícula a la tabla Matrícula que indique si el
                --estudiante se encuentra “En Ejecución”, “Terminado” o “Cancelado”
            </p>
            <div class="box-shadow">
                <p>ALTER Table register ADD COLUMN registration_status VARCHAR (20);</p>
                <img src="img/1.png" alt="">
            </div>
            <p id="consulta">
                --2. Agregue a el campo edad a la tabla de Aprendices.
            </p>
            <div class="box-shadow">
                <p>ALTER TABLE apprentice DROP COLUMN age_apprentice;</p>
                <p>ALTER TABLE apprentice ADD COLUMN age_apprentice int (3);</p>
                <img src="img/2.png" alt="">
            </div>
            <p id="consulta">
                --3. Si suponemos que los cursos tienen una duración diferente
                dependiendo de la ruta que lo contenga ¿qué modificación haría a la
                estructura de datos ya planteada?
            </p>
            <div class="box-shadow">
                <p>alter table route_course add column duration VARCHAR(30);</p>
                <img src="img/3.png" alt="">
            </div>
            <p id="consulta">
                --4. Seleccionar los nombres y edades de aprendices que están cursando la
                carrera de electrónica.
            </p>
            <div class="box-shadow">
                <p>SELECT DISTINCT</p>
                <p>a.name_apprentice, a.age_apprentice, a.id_apprentice, c.name_career </p>
                <p>FROM apprentice a </p>
                <p>JOIN register r ON a.id_apprentice = r.id_apprentice </p>
                <p>JOIN route rt ON rt.number_route = r.number_route </p>
                <p>JOIN career c ON c.code_career = rt.code_career </p>
                <p>WHERE c.name_career = 'Electrónica'; </p>
                <img src="img/4.png" alt="">
            </div>
            <p id="consulta">
                --5. Seleccionar Nombres de Aprendices junto al nombre de la ruta de
                aprendizaje que cancelaron.
            </p>
            <div class="box-shadow">
                <p>SELECT DISTINCT</p>
                <p>name_apprentice,rt.name_route,r.registration_status</p>
                <p>FROM apprentice a</p>
                <p>JOIN register r ON a.id_apprentice = r.id_apprentice</p>
                <p>JOIN route rt ON rt.number_route = r.number_route</p>
                <p>WHERE r.registration_status='Cancelado';</p>
                <img src="img/5.png" alt="">
            </div>
            <p id="consulta">
                --6. Seleccionar Nombre de los cursos que no tienen un 
                instructor asignado.
            </p>
            <div class="box-shadow">
                <p>SELECT course.name_course</p>
                <p>FROM course</p>
                <p>LEFT JOIN course_instructor</p>
                <p>ON course.code_course = course_instructor.code_course</p>
                <p>WHERE course_instructor.code_course IS NULL;</p>
                <img src="img/6.png" alt="">
            </div>
            <p id="consulta">
                --7. Seleccionar Nombres de los instructores que dictan cursos en la ruta de
                aprendizaje “Sistemas de Información Empresariales”.
            </p>
            <div class="box-shadow">
                <p>select DISTINCT instructor.name_instructor</p>
                <p>from instructor</p>
                <p>join course_instructor </p>
                <p>on instructor.id_instructor = course_instructor.id_instructor</p>
                <p>join course on course.code_course = course_instructor.code_course</p>
                <p>join route_course on course.code_course = route_course.code_course</p>
                <p>where route_course.number_route=1;</p>
                <img src="img/7.png" alt="">
            </div>
            <p id="consulta">
                --8. Genere un listado de todos los aprendices que terminaron una Carrera
                mostrando el nombre del profesional, el nombre de la carrera y el
                énfasis de la carrera (Nombre de la Ruta de aprendizaje)
            </p>
            <div class="box-shadow">
                <p>SELECT DISTINCT</p>
                <p>a.name_apprentice, route.name_route, career.name_career, r.registration_status</p>
                <p>FROM apprentice a</p>
                <p>JOIN register r ON a.id_apprentice = r.id_apprentice</p>
                <p>JOIN route ON route.number_route = r.number_route</p>
                <p>JOIN career ON career.code_career = route.code_career</p>
                <p>WHERE r.registration_status = 'Terminado';</p>
                <img src="img/8.png" alt="">
            </div>
            <p id="consulta">
                --9. Genere un listado de los aprendices matriculados en el curso “Bases de
                Datos Relacionales”.
            </p>
            <div class="box-shadow">
                <p>SELECT DISTINCT apprentice.name_apprentice</p>
                <p>FROM apprentice</p>
                <p>JOIN register ON apprentice.id_apprentice = register.id_apprentice</p>
                <p>JOIN route_course ON register.number_route = route_course.number_route</p>
                <p>JOIN course ON route_course.code_course = course.code_course</p>
                <p>WHERE course.name_course = 'Bases de Datos Relacionales';</p>
                <img src="img/9.png" alt="">
            </div>
            <p id="consulta">
                La otra solucion con la tabla agregada, aprendiz con cursos es:
            </p>
            <div class="box-shadow">
                <p>SELECT DISTINCT a.name_apprentice</p>
                <p>FROM apprentice a</p>
                <p>join apprentice_course ac on a.id_apprentice=ac.id_apprentice</p>
                <p>join course c on c.code_course=ac.code_course</p>
                <p>WHERE c.name_course = 'Bases de Datos Relacionales';</p>
                <img src="img/9-2.png" alt="">
            </div>
            <p id="consulta">
                --10. Nombres de Instructores que no tienen curso asignado.
            </p>
            <div class="box-shadow">
                <p>select i.name_instructor</p>
                <p>from instructor i</p>
                <p>LEFT JOIN course_instructor ON i.id_instructor = course_instructor.id_instructor</p>
                <p>where course_instructor.id_instructor is null;</p>
                <img src="img/10.png" alt="">
            </div>
            <h2>Dudas</h2>
            <br><br><br><br>
            <p id="consulta">
                Con respecto a la consulta 9 hay algunos problemas, debido a que en el documento<br>
                la estudiante Leyla María no aparece como estudiante que estudia bases de datos<br>
                Más sin embargo ella si estudia bases de datos debido a que estudia en la ruta de <br>
                Sistemas de Información Empresariales, ella debe estudiar bases de datos.
            </p>
            <h2>Cursos que ve la estudiante Leyla María</h2>
            <div class="box-shadow">
                <p>select DISTINCT a.name_apprentice, c.name_course, ro.name_route</p>
                <p>from apprentice a</p>
                <p>join register r on a.id_apprentice=r.id_apprentice</p>
                <p>join route ro on ro.number_route=r.number_route</p>
                <p>join route_course rc on ro.number_route=rc.number_route</p>
                <p>join course c on c.code_course=rc.code_course</p>
                <p>WHERE a.name_apprentice= 'Leyla María';</p>
                <img src="img/ruta_sistemas.png" alt="">
            </div>
            <h2>Ruta elegida por cada estudiante</h2>
            <div class="box-shadow">
                <p>select DISTINCT a.name_apprentice, ro.name_route</p>
                <p>from apprentice a</p>
                <p>join register r on a.id_apprentice=r.id_apprentice</p>
                <p>join route ro on ro.number_route=r.number_route;</p>
                <img src="img/Ruta_estudiante.png" alt="">
            </div>
        </div>
    </section>
</body>
</html>
</body>
</html>