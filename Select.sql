--SQL-запрос, который выводит все сертификаты, для которых не заданы навыки, которые есть у владельца сертификата
SELECT *
FROM certificates c
JOIN users u ON c.user_id = u.id
LEFT JOIN certificate_skills cs ON c.id = cs.certificate_id
LEFT JOIN skills s ON cs.skill_id = s.id
WHERE u.id = c.user_id AND s.id IS NULL;