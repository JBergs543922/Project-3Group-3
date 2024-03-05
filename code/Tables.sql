-- Table 1: Directors
CREATE TABLE Directors (
    year VARCHAR(10),
    director VARCHAR(255),
    movie VARCHAR(255)
);

-- Table 2: Year
CREATE TABLE Year (
    year VARCHAR(10),
    director VARCHAR(255),
    actress VARCHAR(255),
    actor VARCHAR(255),
    PRIMARY KEY (year)
);

-- Table 3: Actresses
CREATE TABLE Actresses (
    year VARCHAR(10),
    actress VARCHAR(255),
    movie VARCHAR(255),
    age INTEGER,
    birth_place VARCHAR(255),
    birth_date VARCHAR(10),
    FOREIGN KEY (year) REFERENCES Year (year)
);

-- Table 4: Actors
CREATE TABLE Actors (
    year VARCHAR(10),
    actor VARCHAR(255),
    movie VARCHAR(255),
    age INTEGER,
    birth_place VARCHAR(255),
    birth_date VARCHAR(10),
    FOREIGN KEY (year) REFERENCES Year (year)
);
