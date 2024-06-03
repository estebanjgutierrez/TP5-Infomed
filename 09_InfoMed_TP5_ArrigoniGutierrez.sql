SELECT M.nombre AS Nombre_Medicamento, COUNT(R.id_receta) AS Total_Recetas, 
       T.nombre AS Nombre_Medico, P.nombre AS Nombre_Paciente
FROM recetas R
JOIN medicamentos M ON R.id_medicamento = M.id_medicamento
JOIN medicos T ON R.id_medico = T.id_medico
JOIN pacientes P ON R.ID_Paciente = P.ID_Paciente
GROUP BY M.nombre, T.nombre, P.nombre
ORDER BY Total_Recetas DESC;
