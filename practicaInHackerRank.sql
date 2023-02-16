/*
 *Query a list of CITY names from STATION for cities that have an even ID number.
 *Print the results in any order, but exclude duplicates from the answer.
 *The STATION table is described as follows:
 */
SELECT DISTINCT CITY FROM STATION 
WHERE (ID % 2)= 0 
ORDER BY CITY ASC; 

/*Query a list of CITY and STATE from the STATION table.*/
SELECT CITY,STATE FROM STATION

/*
 * Query all columns for all American cities in the CITY table with populations larger than 100000.
 * The CountryCode for America is USA.
 * The CITY table is described as follows:
 */
SELECT * FROM CITY
WHERE POPULATION > 100000 AND COUNTRYCODE = 'USA'

/*
 * EJERCICIO 2
 * Query the NAME field for all American cities in the CITY table with populations larger than 120000.
 * The CountryCode for America is USA.
 * The CITY table is described as follows:
 */
SELECT NAME FROM CITY
WHERE POPULATION > 120000 AND COUNTRYCODE = 'USA'

/*
 * Query all attributes of every Japanese city in the CITY table. 
 * The COUNTRYCODE for Japan is JPN.
 * The CITY table is described as follows:
 */
SELECT * FROM CITY
WHERE COUNTRYCODE = 'JPN'

/*
 * Query the names of all the Japanese cities in the CITY table.
 * The COUNTRYCODE for Japan is JPN.
 * The CITY table is described as follows:
 */
SELECT NAME FROM CITY
WHERE COUNTRYCODE = 'JPN'
