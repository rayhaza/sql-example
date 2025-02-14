INSERT INTO alumnos (nombre, fecha_nacimiento, genero) VALUES
('Juan Pérez', '2005-06-15', 'M'),
('Ana López', '2004-09-23', 'F'),
('Carlos Ruiz', '2006-02-10', 'M'),
('María González', '2005-11-30', 'F'),
('Pedro Sánchez', '2004-07-05', 'M');

INSERT INTO maestros (nombre) VALUES
('Profesor García'),
('Maestra Ramírez'),
('Profesor Fernández'),
('Maestra Torres');

INSERT INTO cursos (nombre_curso) VALUES
('Matemáticas'),
('Historia'),
('Ciencias'),
('Física'),
('Literatura');

INSERT INTO curso_asignacion_maestro (curso_id, maestro_id) VALUES
(1, 1),  
(2, 2),  
(3, 3),  
(4, 4),  
(5, 1);  

INSERT INTO alumnos_inscripcion (alumno_id, curso_id) VALUES
(1, 1),  
(1, 2),  
(2, 3),  
(3, 1),  
(3, 4),  
(4, 5),  
(5, 2),  
(5, 3);  

