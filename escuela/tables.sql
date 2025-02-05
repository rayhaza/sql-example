CREATE TABLE alumnos (
    alumno_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    genero CHAR(1) CHECK (genero IN ('M', 'F'))
);

INSERT INTO alumnos (nombre, fecha_nacimiento, genero) VALUES
    ('Juan Pérez', '2005-03-15', 'M'),
    ('Ana Gómez', '2006-07-21', 'F'),
    ('Luis Fernández', '2005-11-10', 'M'),
    ('María López', '2007-01-05', 'F'),
    ('Pedro Sánchez', '2005-06-25', 'M'),
    ('Lucía Morales', '2006-09-13', 'F'),
    ('Carlos Ramírez', '2007-02-17', 'M'),
    ('Isabel Torres', '2005-04-22', 'F'),
    ('Daniel Cruz', '2006-08-10', 'M'),
    ('Sara Díaz', '2005-10-30', 'F'),
    ('Fernando Ruiz', '2007-03-11', 'M'),
    ('Laura Ortega', '2006-12-14', 'F'),
    ('Diego Gutiérrez', '2005-01-18', 'M'),
    ('Elena Navarro', '2007-05-21', 'F'),
    ('Javier Pérez', '2005-09-29', 'M'),
    ('Carmen Mendoza', '2006-11-03', 'F'),
    ('Francisco Blanco', '2005-07-08', 'M'),
    ('Victoria Castro', '2007-06-07', 'F'),
    ('Alberto Vega', '2006-03-19', 'M'),
    ('Gloria Lozano', '2005-12-25', 'F'),
    ('Manuel Herrera', '2007-07-16', 'M'),
    ('Patricia Rojas', '2006-02-20', 'F'),
    ('Andrés Moreno', '2005-05-12', 'M'),
    ('Natalia Paredes', '2006-01-23', 'F'),
    ('Héctor Flores', '2007-04-08', 'M'),
    ('Claudia Nieto', '2005-11-26', 'F'),
    ('Santiago Reyes', '2006-09-05', 'M'),
    ('Ángela Vargas', '2005-02-15', 'F'),
    ('Mario Suárez', '2007-08-04', 'M'),
    ('Valeria Silva', '2006-10-01', 'F');

CREATE TABLE maestros (
    maestro_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    materia TEXT NOT NULL
);
INSERT INTO maestros (nombre, materia) VALUES
    ('Carlos Ruiz', 'Matemáticas'),
    ('Sofía Ramírez', 'Historia'),
    ('Miguel Torres', 'Ciencias');

CREATE TABLE cursos (
    curso_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre_curso TEXT NOT NULL,
    maestro_id INTEGER,
    FOREIGN KEY (maestro_id) REFERENCES maestros(maestro_id)
);

INSERT INTO cursos (nombre_curso, maestro_id) VALUES
    ('Matemáticas I', 1), 
    ('Historia Mundial', 2), 
    ('Ciencias Naturales', 3),
    ('Matemáticas II', 1), 
    ('Historia de América', 2), 
    ('Biología', 3),
    ('Álgebra', 1), 
    ('Historia Contemporánea', 2), 
    ('Química', 3),
    ('Geometría', 1), 
    ('Historia Antigua', 2), 
    ('Física', 3),
    ('Cálculo', 1), 
    ('Historia Moderna', 2), 
    ('Astronomía', 3),
    ('Probabilidad', 1), 
    ('Historia del Arte', 2), 
    ('Ecología', 3),
    ('Estadística', 1), 
    ('Historia de la Ciencia', 2), 
    ('Genética', 3),
    ('Trigonometría', 1), 
    ('Historia Medieval', 2), 
    ('Geología', 3),
    ('Matemáticas Aplicadas', 1), 
    ('Historia Social', 2), 
    ('Química Orgánica', 3),
    ('Matemáticas Discretas', 1), 
    ('Historia Política', 2), 
    ('Física Cuántica', 3);

