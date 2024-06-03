SELECT P.nombre, C.fecha, C.diagnostico
FROM pacientes P
JOIN consultas C ON P.id_paciente = C.id_paciente
WHERE C.fecha = (
    SELECT MAX(C1.fecha)
    FROM consultas C1
    WHERE C1.id_paciente = P.id_paciente
);
