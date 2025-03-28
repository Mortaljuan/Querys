--Query 1: first names of all customers
SELECT
	FIRST_NAME
FROM
	CUSTOMER;

--Query 2: first name,last name,and email of customers
SELECT
	FIRST_NAME,
	LAST_NAME,
	EMAIL
FROM
	CUSTOMER;

-- Query 3: data from all columns of the customer table
SELECT
	*
FROM
	CUSTOMER;
--Query 4:Use the SELECT statement to return the full names and emails
SELECT 
	FIRST_NAME || ' ' || LAST_NAME AS full_name,
	email
	
FROM
	CUSTOMER;
--Query 5:Use the ORDER BY clause to sort customers by their first names in ascending order
SELECT
	FIRST_NAME,
	LAST_NAME
FROM
	CUSTOMER
ORDER BY
	FIRST_NAME;
--Query 6:Sort the rows by the first name in ascending order and last name in descending order

SELECT 
	FIRST_NAME || ' ' || LAST_NAME AS full_name
FROM
	CUSTOMER
ORDER BY
	FIRST_NAME,
	LAST_NAME DESC;
--Query 7:Select the first names and the lengths of the first names
SELECT
    FIRST_NAME,
    LENGTH(FIRST_NAME) AS NAME_LENGTH
FROM
    CUSTOMER
ORDER BY
    NAME_LENGTH DESC;
--Query 8:Use the WHERE clause to find the last name and first name of customers whose first name is jamie
SELECT
	LAST_NAME,
	FIRST_NAME
FROM
	CUSTOMER
WHERE
	FIRST_NAME = 'Jamie';
--Query 9:Use a WHERE clause with the AND logical operator to find customers whose first name is  Jamie and last name is Rice

SELECT
	FIRST_NAME || ' ' || LAST_NAME AS FULL_NAME
FROM
	CUSTOMER
WHERE
	(FIRST_NAME = 'Jamie'
	AND LAST_NAME = 'Rice');
--Query 10:Use a WHERE clause with an OR operator to find customers
SELECT
	FIRST_NAME || ' ' || LAST_NAME AS FULL_NAME
FROM
	CUSTOMER
WHERE
	(
		LAST_NAME = 'Rodriguez'
		OR FIRST_NAME = 'Adam'
	);
--Query 11:	 Use the WHERE clause with the IN operator to find customers 
SELECT
	FIRST_NAME || ' ' || LAST_NAME AS FULL_NAME
FROM
	CUSTOMER
WHERE
	FIRST_NAME IN ('Ann', 'Anne', 'Annie');
--Query 12:Use the LIKE operator in the WHERE clause to find customers 
SELECT
	FIRST_NAME || ' ' || LAST_NAME AS FULL_NAME
FROM
	CUSTOMER
WHERE
	FIRST_NAME like ('Ann%');
--Query 13:	Find customers whose first names start with the letter A and contain 3 to 5 characters. 
SELECT
    FIRST_NAME,
    LENGTH(FIRST_NAME) AS NAME_LENGTH
FROM
    CUSTOMER
WHERE
    FIRST_NAME LIKE 'A%' 
    AND LENGTH(FIRST_NAME) BETWEEN 3 AND 5  
ORDER BY
    NAME_LENGTH;
--Query 14:Find customers whose first names start with Bra and whose last names are not Motley
SELECT
	FIRST_NAME || ' ' || LAST_NAME AS FULL_NAME
FROM
	CUSTOMER
WHERE
	FIRST_NAME LIKE 'Bra%'
	AND LAST_NAME != 'Motley';
--Query 15:	Use the AND operator in the WHERE clause to find films
SELECT
    TITLE,
    LENGTH,
    RENTAL_RATE
FROM
    FILM
WHERE
    LENGTH > 180  
    AND RENTAL_RATE < 1;
--Query 16: Use the OR operator in the WHERE clause to find films
SELECT
 TITLE,
 RENTAL_RATE
 FROM
 FILM
 WHERE
 RENTAL_RATE = 0.99 
OR
 RENTAL_RATE = 2.99;
--Query 17: Use the LIMIT clause to retrieve the first five films sorted by film_id
SELECT
 FILM_ID,
 TITLE,
 RELEASE_YEAR FROM FILM ORDER BY FILM_ID LIMIT 5;
--Query 18: Retrieve 4 films starting from the fourth one, ordered by film_id
SELECT
    FILM_ID,
    TITLE,
    RELEASE_YEAR
FROM
    FILM
ORDER BY
    FILM_ID
LIMIT 4
OFFSET 3;
--Query 19: Use the LIMIT clause to retrieve the top 10 most expensive films by rental rate
SELECT
 FILM_ID,
 TITLE,
 RENTAL_RATE
 FROM
 FILM ORDER BY RENTAL_RATE DESC LIMIT 10;
--Query 20: Use the FETCH clause to select the first film sorted by title in ascending order
SELECT
 FILM_ID,
 TITLE
 FROM
 FILM ORDER BY TITLE ASC FETCH FIRST 1 ROW ONLY;
--Query 21: Use the FETCH clause to select the first five films sorted by title in ascending order
SELECT
 FILM_ID,
 TITLE
 FROM
 FILM ORDER BY TITLE ASC FETCH FIRST 5 ROWS ONLY;
--Query 22: Use the IN operator to retrieve information about the films with IDs 1, 2, and 3
SELECT
 FILM_ID,
 TITLE
 FROM
 FILM WHERE FILM_ID IN (1, 2, 3);
--Query 23: Use the IN operator to find the first name and last name of actors whose last names are Allen, Chase, or Davis
SELECT
 ACTOR_ID,
 FIRST_NAME,
 LAST_NAME
 FROM
 ACTOR WHERE LAST_NAME IN ('Allen', 'Chase', 'Davis') ORDER BY LAST_NAME ASC;
--Query 24: Use the IN operator to find the id, amount, and date of payments whose payment dates
SELECT
    PAYMENT_ID,
    AMOUNT,
    PAYMENT_DATE
FROM
    PAYMENT
WHERE
    PAYMENT_DATE::DATE IN ('2007-02-15', '2007-02-16');
--Query 25:
SELECT
	PAYMENT_ID,
	AMOUNT
FROM
	PAYMENT
WHERE
	PAYMENT_ID BETWEEN 17503 AND 17505;
--Query 26:
SELECT
	PAYMENT_ID,
	AMOUNT
FROM
	PAYMENT
WHERE
	PAYMENT_ID  NOT BETWEEN 17503 AND 17505;
--Query 27:
SELECT
    PAYMENT_ID,
    AMOUNT,
    PAYMENT_DATE
FROM
    PAYMENT
WHERE
    PAYMENT_DATE::DATE IN ('2007-02-15', '2007-02-20')
    AND AMOUNT > 10
ORDER BY
    PAYMENT_DATE ASC;
--Query 28:
SELECT
	FIRST_NAME,
	LAST_NAME
FROM
	CUSTOMER
WHERE
	FIRST_NAME LIKE '%er%'
ORDER BY
	FIRST_NAME ASC;
--Query 29:
SELECT
	FIRST_NAME,
	LAST_NAME
FROM
	CUSTOMER
WHERE
	FIRST_NAME LIKE '_her%'
ORDER BY
	FIRST_NAME ASC;
--Query 30:
SELECT
	FIRST_NAME,
	LAST_NAME
FROM
	CUSTOMER
WHERE
	FIRST_NAME NOT LIKE 'Jen%'
ORDER BY
	FIRST_NAME ASC;
--Query 31:
SELECT
	FIRST_NAME,LAST_NAME
FROM
	CUSTOMER
WHERE
	FIRST_NAME ILIKE 'BAR%';
--Query 32:
SELECT
	ADDRESS,
	ADDRESS2
FROM
	ADDRESS
WHERE
	ADDRESS2  IS NULL;
--Query 33:
SELECT
	ADDRESS,
	ADDRESS2
FROM
	ADDRESS
WHERE
	ADDRESS2 IS NOT NULL;