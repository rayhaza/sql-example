CREATE TABLE alumnos (
    alumno_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    genero CHAR(1) CHECK (genero IN ('M', 'F'))
);



CREATE TABLE maestros (
    maestro_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    materia TEXT NOT NULL
);


CREATE TABLE cursos (
    curso_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre_curso TEXT NOT NULL,
    maestro_id INTEGER,
    FOREIGN KEY (maestro_id) REFERENCES maestros(maestro_id)
);

