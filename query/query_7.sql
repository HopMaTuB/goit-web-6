--Знайти оцінки студентів у B групі з Біології

SELECT s.name AS student_name,gr.name,sub.name,g.grade 
FROM students s
JOIN grades g ON s.id = g.student_id
JOIN groups gr ON s.group_id = gr.id
JOIN subjects sub ON g.subject_id = sub.id
WHERE gr.name = 'B' AND sub.name = 'Biology';