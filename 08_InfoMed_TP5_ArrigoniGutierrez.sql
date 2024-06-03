SELECT M.nombre AS Nombre_Medico, P.nombre AS Nombre_Paciente, COUNT(C.id_consulta) AS Total_Consultas
FROM consultas C
JOIN medicos M ON C.id_medico = M.id_medico
JOIN pacientes P ON C.id_paciente = P.id_paciente
GROUP BY M.nombre, P.nombre
ORDER BY M.nombre, P.nombre;
