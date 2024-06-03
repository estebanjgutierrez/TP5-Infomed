SELECT M.nombre, COUNT(R.id_receta) AS Cantidad_Prescripciones
FROM recetas R
JOIN medicamentos M ON R.id_medicamento = M.id_medicamento
WHERE R.id_medico = 2
GROUP BY M.nombre
HAVING COUNT(R.id_receta) > 1;
