CREATE TABLE directors (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(256) NOT NULL,
    created DATETIME NOT NULL,
    updated DATETIME NOT NULL,
    PRIMARY KEY (id)
) ENGINE=Innodb DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE movies (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(256) NOT NULL,
    director_id INT NOT NULL,
    created DATETIME NOT NULL,
    updated DATETIME NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (director_id) REFERENCES directors(id)
) ENGINE=Innodb DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_general_ci;
