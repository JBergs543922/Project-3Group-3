# Project-3Group-3
GWU Data Analysis Course Project#3 Group #3
Participants: Melina Hernandez, Andrew Jessberger, Derick Ngeyen, Adam Sorokes

## Purpose
For this project we assessed the Oscars by looking into the characteristics of the winners in the categories best actors, best actress, best director, and best picture. It is important to understand and assess any implicit bias as it can affect people in all ways.

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
Create ERD that displays all desired tables

### Create SQL Tables
Tables should include actor table, actress table, director table, and year. Import data

### Clean Data
Merge data and clean all data to create one csv file. Clean data for each table by dropping unnecessary coloumns for each individual table.

### Import Data
Import data into each table, save tables with all data included, and then assess data found.

## Additional Libraries and CSV Data

In addition to the primary functionality, the API also utilizes various libraries and additional CSV data for extended capabilities.

### Libraries
The following Python libraries are utilized within the API:
- pandas
- pathlib
- pyspark
- matplotlib.pyplot
- numpy
- datetime
- scipy.stats.linregress

## Ethical Considerations

In the development of this project, we paid careful attention to ethical considerations in order to ensure the responsible use of data. Efforts were made by us to ensure that all the data used in the project was obtained ethically by looking at publically available data. Additionally, steps were taken to minimize biases in data collection, processing, and analysis. Continuous efforts are made to evaluate and address any ethical implications that may arise throughout the project lifecycle.

## References

### Data Sources
- IMDB The Sequel API Access: 
- Oscar Winners - Director.csv: (https://www.kaggle.com/datasets/thedevastator/oscar-winning-directors-analysis)
- oscars.csv: (https://www.openintro.org/data/index.php?data=oscars)

### Code References
- (https://www.openintro.org/data/index.php?data=oscars)
- (https://www.kaggle.com/datasets/thedevastator/oscar-winning-directors-analysis)

For more detailed information on the ethical considerations and references for the data sources and code used in the project, please refer to the respective sections above.


### Additional CSV Data
The API imports and works with the following CSV data files:
1. **Oscar Winners - Director.csv**
   - Contains information about Oscar-winning directors.
   - Sample columns: `Year`, `Gender`, `Race`, `Director(s)`, `Film`, `Nomination/Winner`

2. **oscars.csv**
   - Contains data about Oscar awards, nominees, and winners.
   - Sample columns: `oscar_no`, `oscar_yr`, `award`, `name`, `movie`, `age`, `birth_pl`, `birth_date`, `birth_mo`, `birth_d`, `birth_y`

### Usage Examples
#### Merging DataFrames
```python
# Merge Oscars DataFrame with Directors DataFrame
full_oscar_df = pd.merge(oscars_data_df, directors_data_df, on='oscar_yr', how='inner')
print(full_oscar_df)

