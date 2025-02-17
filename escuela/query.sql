SELECT*FROM alumnos;
SELECT*FROM maestros;
SELECT*FROM cursos;
SELECT*FROM curso_asignacion_maestro;
SELECT*FROM alumnos_inscripcion;

SELECT  curso_asignacion_maestro.maestro_id, maestros.nombre AS "nombre maestro", alumnos.nombre  
FROM curso_asignacion_maestro
INNER JOIN maestros ON curso_asignacion_maestro.maestro_id= maestros.maestro_id
INNER JOIN alumnos ON curso_asignacion_maestro. curso_id= alumnos.alumno_id;

ALTER TABLE maestros
RENAME COLUMN nombre_maestro  TO nombre;

SELECT  alumnos.alumno_id, alumnos.nombre, count (alumnos_inscripcion.curso_id)  AS "numero de materia" 
FROM alumnos
INNER JOIN alumnos_inscripcion
on alumnos.alumno_id= alumnos_inscripcion.alumno_id
GROUP by alumnos.nombre;

SELECT curso_asignacion_maestro.curso_id, cursos.nombre_curso, maestros.nombre
FROM curso_asignacion_maestro
INNER JOIN cursos ON curso_asignacion_maestro.curso_id= cursos.curso_id
INNER JOIN maestros ON curso_asignacion_maestro.maestro_id= maestros.maestro_id;

SELECT maestros.maestro_id, maestros. nombre, count (curso_asignacion_maestro.curso_id) AS "numero de materias"
FROM maestros
INNER JOIN curso_asignacion_maestro 
ON maestros.maestro_id= curso_asignacion_maestro.maestro_id
GROUP by maestros.nombre;