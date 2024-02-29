CREATE TABLE Film (
    year INT,
    director VARCHAR(255),
    film VARCHAR(255),
    PRIMARY KEY (year, film)
);

CREATE TABLE Person (
    name VARCHAR(255),
    gender VARCHAR(10),
    race VARCHAR(50),
    age INT,
    birth_place VARCHAR(255),
    birth_date DATE,
    PRIMARY KEY (name)
);

CREATE TABLE Nomination (
    nomination VARCHAR(50),
    award VARCHAR(255),
    PRIMARY KEY (nomination, award)
);

CREATE TABLE MovieAppearance (
    name VARCHAR(255),
    movie VARCHAR(255),
    FOREIGN KEY (name) REFERENCES Person(name),
    FOREIGN KEY (movie, year) REFERENCES Film(film, year)
);

CREATE TABLE Winner (
    year INT,
    award VARCHAR(255),
    name VARCHAR(255),
    movie VARCHAR(255),
    PRIMARY KEY (year, award),
    FOREIGN KEY (name) REFERENCES Person(name),
    FOREIGN KEY (movie, year) REFERENCES Film(film, year)
);
