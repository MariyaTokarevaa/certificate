-- Таблица users
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    first_name VARCHAR(100) NOT NULL, 
    last_name VARCHAR(100) NOT NULL     
);

-- Таблица certificates
CREATE TABLE certificates (
    id SERIAL PRIMARY KEY,
    certificate_number VARCHAR(50) NOT NULL UNIQUE,
    user_id INT,
    role VARCHAR(100),
    project_name VARCHAR(255),
    project_description TEXT,
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- Таблица skills
CREATE TABLE skills (
   id SERIAL PRIMARY KEY,
   name VARCHAR(100) NOT NULL UNIQUE
);

-- Таблица certificate_skills (связующая таблица)
CREATE TABLE certificate_skills (
    certificate_id INT,
    skill_id INT,
    PRIMARY KEY (certificate_id, skill_id),
    FOREIGN KEY (certificate_id) REFERENCES certificates(id) ON DELETE CASCADE,
    FOREIGN KEY (skill_id) REFERENCES skills(id) ON DELETE cascade
  );  
    
