CREATE TABLE alumnos (
    alumno_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    genero CHAR(1) CHECK (genero IN ('M', 'F'))
);


CREATE TABLE maestros (
    maestro_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL
);

CREATE TABLE cursos (
    curso_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre_curso TEXT NOT NULL
);

CREATE TABLE curso_asignacion_maestro(
    curso_id INTEGER NOT NULL
    , maestro_id INTEGER NOT NULL
    , PRIMARY KEY(curso_id, maestro_id)
    , FOREIGN KEY (curso_id) REFERENCES cursos(curso_id)
    , FOREIGN KEY (maestro_id) REFERENCES maestros(maestro_id)
)

CREATE TABLE alumnos_inscripcion(
    alumno_id INTEGER NOT NULL
    , curso_id INTEGER NOT NULL
    , PRIMARY KEY(alumno_id, curso_id)
)
