CREATE TABLE Oscars_Table (
    year INT,
    award VARCHAR(100),
    PRIMARY KEY (year, award)
);

CREATE TABLE Nominees (
    nominee_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    birth_pl VARCHAR(100),
    birth_date DATE,
    gender VARCHAR(10),
    race VARCHAR(50)
);

CREATE TABLE Movies (
    movie_id INT PRIMARY KEY,
    movie_name VARCHAR(100),
    director VARCHAR(100)
);

CREATE TABLE Nominations (
    nomination_id INT PRIMARY KEY,
    year INT,
    award VARCHAR(100),
    nominee_id INT,
    movie_id INT,
    film VARCHAR(100),
    nomination_type VARCHAR(50),
    FOREIGN KEY (year, award) REFERENCES Oscars_Table(year, award),
    FOREIGN KEY (nominee_id) REFERENCES Nominees(nominee_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);


