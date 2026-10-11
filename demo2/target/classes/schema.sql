SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS assessment;
DROP TABLE IF EXISTS user_skills;
DROP TABLE IF EXISTS app_user;
DROP TABLE IF EXISTS role_skills;
DROP TABLE IF EXISTS job_role;
DROP TABLE IF EXISTS skills;

CREATE TABLE skills (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    category VARCHAR(100) NOT NULL
);

CREATE TABLE job_role (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    role_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE role_skills (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    role_id BIGINT NOT NULL,
    skill_id BIGINT NOT NULL,
    importance_value INT NOT NULL,
    UNIQUE (role_id, skill_id),
    CHECK (importance_value BETWEEN 1 AND 3),
    FOREIGN KEY (role_id) REFERENCES job_role(id),
    FOREIGN KEY (skill_id) REFERENCES skills(id)
);

CREATE TABLE app_user (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE user_skills (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT NOT NULL,
    skill_id BIGINT NOT NULL,
    skill_level INT NOT NULL,
    UNIQUE (user_id, skill_id),
    CHECK (skill_level BETWEEN 1 AND 5),
    FOREIGN KEY (user_id) REFERENCES app_user(id),
    FOREIGN KEY (skill_id) REFERENCES skills(id)
);

CREATE TABLE assessment (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    assessment_name VARCHAR(100) NOT NULL,
    score INT NOT NULL,
    user_skill_id BIGINT NOT NULL,
    CHECK (score BETWEEN 0 AND 100),
    FOREIGN KEY (user_skill_id) REFERENCES user_skills(id)
);


SET FOREIGN_KEY_CHECKS = 1;
