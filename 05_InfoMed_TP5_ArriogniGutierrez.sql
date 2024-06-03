SELECT P.nombre, COUNT(R.id_receta) AS Cantidad_Recetas
FROM pacientes P
LEFT JOIN recetas R ON P.id_paciente = R.id_paciente
GROUP BY P.nombre;
