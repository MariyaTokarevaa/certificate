-- Индекс для номера сертификата в таблице certificates
CREATE INDEX idx_certificate_number ON certificates(certificate_number);

-- Индекс для электронного адреса в таблице users
CREATE INDEX idx_user_email ON users(email);

--Дополнительные индексы для каждой из таблиц, которые помогут быстрее выдавать информацию о сертификате

--Индекс для имени и фамилии в таблице users
CREATE INDEX idx_user_first_name ON users(first_name);
CREATE INDEX idx_user_last_name ON users(last_name);

--Индекс для роли специалиста в таблице certificates
CREATE INDEX idx_certificate_role ON certificates(role);

-- Индекс для поиска по имени навыка в таблице skills
CREATE INDEX idx_skill_name ON skills(name);

