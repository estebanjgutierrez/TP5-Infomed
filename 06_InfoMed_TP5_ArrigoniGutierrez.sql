SELECT M.nombre, COUNT(R.id_receta) AS Cantidad_Recetas
FROM recetas R
JOIN medicamentos M ON R.id_medicamento = M.id_medicamento
GROUP BY M.nombre
ORDER BY Cantidad_Recetas DESC
LIMIT 1;
