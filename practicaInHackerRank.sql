/*
 * EJERCICIO 1
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
