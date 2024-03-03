CREATE TABLE Actor (
    award VARCHAR(50) PRIMARY KEY,
    actor VARCHAR(50),
	actress VARCHAR(50),
    year INT,
    birth_place VARCHAR(100),
    age INT
);

CREATE TABLE Director (
    director VARCHAR(50) PRIMARY KEY,
    year INT,
    movie VARCHAR(100)
);

CREATE TABLE Year (
    year INT PRIMARY KEY,
    award VARCHAR(50),
    movie VARCHAR(100),
    actor VARCHAR(20),
	actress VARCHAR(20),
    director VARCHAR(50)
);

CREATE TABLE Awards (
    year INT,
    award VARCHAR(50),
    actor VARCHAR(20),
	actress VARCHAR (20),
    movie VARCHAR(100),
    age INT,
    birth_place VARCHAR(100),
    birth_date DATE,
    birth_month INT,
    birth_day INT,
    birth_year INT,
    index_number INT,
    gender VARCHAR(10),
    race VARCHAR(50),
    director VARCHAR(100),
    film VARCHAR(100),
    nomination VARCHAR(50),
    FOREIGN KEY (director) REFERENCES Director(director)
);

