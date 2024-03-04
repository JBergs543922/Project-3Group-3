# Project-3Group-3
GWU Data Analysis Course Project#3 Group #3
Participants: Melina Hernandez, Andrew Jessberger, Derick Ngeyen, Adam Sorokes

## IMDB The Sequel API Access
### GWU Project3Group3

This repository provides access to the IMDB The Sequel API, a project developed by GWU Project3Group3. The API allows users to query a database of Oscar-winning films from 1928 to 2023.

### Dependencies
- pandas
- pathlib
- pyspark
- sqlite3

### Usage

To use the API, follow these steps:

1. Clone the repository to your local machine.
2. Ensure you have all necessary dependencies installed.
3. Run the `main.py` file.
4. Follow the prompts to query the database.

### Functionality

#### `userInterfaceYear(start, finish)`
This function retrieves films within a specified year range.

#### `userInterfaceName(name)`
This function retrieves films by a specific nominee name.

#### `userInterfaceDir(director)`
This function retrieves films by a specific director name.

#### `readtoCSV(dataFrame)`
This function saves a DataFrame to a CSV file.

#### `userInterface()`
This function serves as the main prompt interface for users to interact with the API.

### Create ERD

### Create SQL Tables
Tables should include actor table, actress table, director table, and year. Import data

### Clean Data
Merge data and clean all data to create one csv file. Clean data for each table by dropping unnecessary coloumns for each individual table.

### Import Data
Import data into each table, save tables with all data included, and then assess data found.
