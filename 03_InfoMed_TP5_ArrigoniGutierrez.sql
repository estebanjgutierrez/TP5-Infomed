SELECT P.nombre, C.fecha, C.diagnostico
FROM pacientes P
JOIN consultas C ON P.id_paciente = C.id_paciente
WHERE C.fecha BETWEEN '2024-06-01' AND '2024-06-30';
