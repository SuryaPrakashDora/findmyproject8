CREATE TABLE researcher(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    specialization TEXT
);

CREATE TABLE project(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    budget DOUBLE
);

CREATE TABLE researcher_project(
    projectId INT,
    researcherId INT,
    PRIMARY KEY(projectId, researcherId),
    FOREIGN KEY (projectId) REFERENCES project(id),
    FOREIGN KEY(researcherId) REFERENCES researcher(id)
);