#----------------------------------------------------------------------
#IMDB The Sequel API Access
#GWU Project3Group3
#----------------------------------------------------------------------

#imports
import pandas as pd;
from pathlib import Path;
#from pyspark.sql import SparkSession;
import sqlite3 as sl;

#convert SQL database to csv or pandas dataframe
file_path = Path("../Oscar Data/full_oscar.csv");
MainDF = pd.read_csv(file_path, encoding="UTF-8");
#probably need code to access the sql database

#Database Year Fetch
def userInterfaceYear(start, finish):
    #establish the output csv
    outputDF = pd.DataFrame();
    #loop through the main database df
    for x in MainDF:
        #grab conditional field
        oscar_year = MainDF['oscar_year'];
        #determine entry elegibility and append if found true
        if oscar_year >= start & oscar_year<=finish:
            outputDF.append(x)
            
    #return pandas dataframe result for saving as csv and output
    return outputDF;
    
    #Database name Fetch
def userInterfaceName(name):
    #establish the output csv
    outputDF = pd.DataFrame();
    #loop through the main database df
    for x in MainDF:
        winner_name = MainDF['name'];
        if winner_name == name :
            outputDF.append(x)
    
    #return pandas dataframe result for saving as csv and output
    return outputDF;

#Database name Fetch
def userInterfaceDir(director):
    #establish the output csv
    outputDF = pd.DataFrame();
    #loop through the main database df
    for x in MainDF:
        director_name = MainDF['Director(s)'];
        if director_name == director :
            outputDF.append(x)
    
    #return pandas dataframe result for saving as csv and output
    return outputDF;

def readtoCSV(dataFrame): 
    #save database as a csv file
    dataFrame.to_csv('output.csv')
    #print resulting dataframe
    print(dataFrame)
    
    #Prompt/Interface for User
def userInterface():
    print("Greetings user and welcome to the IMDB The Sequel API!");
    print("");
    print("This database is a compilation of oscar winning films from 1928 until 2023.");
    print("To query the database, you may chose to enter the following commands 1) year span, 2) nominee name, or 3) director name: ");
    userResponse = input("Please enter your search field: ");
    if userResponse == "year span":
        #grab each year and store it
        startYr = input("Please enter the starting year: ")
        endYr = input("Please enter the end year: ")
        readtoCSV(userInterfaceYear(startYr, endYr))
    
    elif userResponse == "nominee name":
        name = input("Please enter the nominee name to search for: ")
        userInterfaceName(name)
    
    elif userResponse == "director name":
        name = ("Please enter the director name to search for: ")
        userInterfaceDir(name);
    
    else:
        print("--------------------------------------------------------------")
        print("Input was found to be invalid. Please restart the API program.")
        print("--------------------------------------------------------------")
    