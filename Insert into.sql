INSERT INTO users (email, first_name, last_name) VALUES ('pavel@example.com', 'Павел', 'Матушевский');

INSERT INTO certificates (certificate_number, user_id, role, project_name, project_description, start_date, end_date) 
VALUES ('CERT-001', 1, ' Data Scientist', 'Кловери.Старт', 'Создание ML-прототипа по предсказанию аварий на буровой установке', '15.03.2021', '15.07.2021');


INSERT INTO skills (name)
values ('Pycaret'), 
('Random Forest'), 
('Anomaly Detection'), 
('Gradient Boosting'), 
('Cluster analysis'), 
('K-fold'), 
('Optuna'), 
('Shap'), 
('Tsfresh'), 
('Sklearn feature selection'), 
('imblearn'), 
('Streamlit');

INSERT into certificate_skills (certificate_id, skill_id)
values (1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8), (1, 9), (1, 10), (1, 11), (1, 12);
