SELECT medicos.nombre, COUNT(recetas.id_receta) AS cantidad_recetas
FROM medicos
JOIN recetas ON medicos.id_medico = recetas.id_medico
GROUP BY medicos.nombre;
