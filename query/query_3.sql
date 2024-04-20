--Знайти середній бал у групах з фізики

SELECT g.subject_id,s.name,gr.name, AVG(g.grade) AS average_grade
FROM grades g
JOIN subjects sub ON g.subject_id = sub.id
JOIN students s ON g.student_id = s.id
JOIN groups gr ON s.group_id = gr.id
WHERE sub.name = 'Physics'
GROUP BY gr.id;