/*
QTM 151 - Introduction to Statistical Computing II
Quiz 04 - SQL

In this quiz, you will demonstrate your ability to write SQL queries and extract information from tables.

You are free to use any resources available to you, including the internet, but you are not allowed to discuss the quiz with anyone else.

You are also free to use any database management system you prefer (pgAdmin, SQLAlchemy, SQLite, etc.), but the queries must be written in SQL.

Please submit your answers as a .sql, .ipynb, or .html file. If you submit an .html file, please include the SQL queries.

You will work with two tables, one named "cars" and the other named "brand_data". They are both available as .csv files in this repository, or you can create them yourself using the data provided below. 
*/

-- Questions

-- First, please establish a connection to your database, either via Python or directly in your database management system.

/*
a) Read the files brand_data.csv and cars.csv using the to_sql command. Call the new datasets brand_data and cars, respectively, in the server.

OR: Create the tables brand_data and cars using the data provided below.

Just do one of the two options above.
*/

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
    car_id INTEGER PRIMARY KEY,
    make TEXT,
    price NUMERIC,
    mpg NUMERIC,
    rep78 NUMERIC,
    headroom NUMERIC,
    trunk NUMERIC,
    weight NUMERIC,
    length NUMERIC,
    turn NUMERIC,
    displacement NUMERIC,
    gear_ratio NUMERIC,
    brand TEXT
);

INSERT INTO cars (car_id, make, price, mpg, rep78, headroom, trunk, weight, length, turn, displacement, gear_ratio, brand) VALUES
(1, 'Audi Fox', 6295, 23, 3.0, 2.5, 11, 2070, 174, 36, 97, 3.7, 'Audi'),
(2, 'Buick Century', 4816, 20, 3.0, 4.5, 16, 3250, 196, 40, 196, 2.93, 'Buick'),
(3, 'Buick LeSabre', 5788, 18, 3.0, 4.0, 21, 3670, 218, 43, 231, 2.73, 'Buick'),
(4, 'Buick Skylark', 4082, 19, 3.0, 3.5, 13, 3400, 200, 42, 231, 3.08, 'Buick'),
(5, 'Datsun 210', 4589, 35, 5.0, 2.0, 8, 2020, 165, 32, 85, 3.7, 'Datsun'),
(6, 'Datsun 810', 8129, 21, 4.0, 2.5, 8, 2750, 184, 38, 146, 3.55, 'Datsun'),
(7, 'Ford Mustang', 4187, 21, 3.0, 2.0, 10, 2650, 179, 43, 140, 3.08, 'Ford'),
(8, 'Honda Civic', 4499, 28, 4.0, 2.5, 5, 1760, 149, 34, 91, 3.3, 'Honda'),
(9, 'Merc. Bobcat', 3829, 22, 4.0, 3.0, 9, 2580, 169, 39, 140, 2.73, 'Merc.'),
(10, 'Merc. Cougar', 5379, 14, 4.0, 3.5, 16, 4060, 221, 48, 302, 2.75, 'Merc.'),
(11, 'Merc. Marquis', 6165, 15, 3.0, 3.5, 23, 3720, 212, 44, 302, 2.26, 'Merc.'),
(12, 'Merc. XR-7', 6303, 14, 4.0, 3.0, 16, 4130, 217, 45, 302, 2.75, 'Merc.'),
(13, 'Merc. Zephyr', 3291, 20, 3.0, 3.5, 17, 2830, 195, 43, 140, 3.08, 'Merc.'),
(14, 'Olds Cutl Supr', 5172, 19, 3.0, 2.0, 16, 3310, 198, 42, 231, 2.93, 'Olds'),
(15, 'Olds Cutlass', 4733, 19, 3.0, 4.5, 16, 3300, 198, 42, 231, 2.93, 'Olds'),
(16, 'Plym. Horizon', 4482, 25, 3.0, 4.0, 17, 2200, 165, 36, 105, 3.37, 'Plym.'),
(17, 'Plym. Volare', 4060, 18, 2.0, 5.0, 16, 3330, 201, 44, 225, 3.23, 'Plym.'),
(18, 'Pont. Catalina', 5798, 18, 4.0, 4.0, 20, 3700, 214, 42, 231, 2.73, 'Pont.'),
(19, 'Subaru', 3798, 35, 5.0, 2.5, 11, 2050, 164, 36, 97, 3.81, 'Subaru'),
(20, 'Toyota Corolla', 3748, 31, 5.0, 3.0, 9, 2200, 165, 35, 97, 3.21, 'Toyota'),
(21, 'Toyota Corona', 5719, 18, 5.0, 2.0, 11, 2670, 175, 36, 134, 3.05, 'Toyota'),
(22, 'VW Rabbit', 4697, 25, 4.0, 3.0, 15, 1930, 155, 35, 89, 3.78, 'VW'),
(23, 'VW Scirocco', 6850, 25, 4.0, 2.0, 16, 1990, 156, 36, 97, 3.78, 'VW')

DROP TABLE IF EXISTS brand_data;

CREATE TABLE brand_data (
    brand_id NUMERIC PRIMARY KEY,
    brand TEXT,
    origin_type TEXT
);

INSERT INTO brand_data (brand_id, brand, origin_type) VALUES
(1, 'AMC', 'Domestic'),
(2, 'Buick', 'Domestic'),
(3, 'Cad.', 'Domestic'),
(4, 'Chev.', 'Domestic'),
(5, 'Dodge', 'Domestic'),
(6, 'Ford', 'Domestic'),
(7, 'Linc.', 'Domestic'),
(8, 'Merc.', 'Domestic'),
(9, 'Olds', 'Domestic'),
(10, 'Plym.', 'Domestic'),
(11, 'Pont.', 'Domestic'),
(12, 'Audi', 'Foreign'),
(13, 'BMW', 'Foreign'),
(14, 'Datsun', 'Foreign'),
(15, 'Fiat', 'Foreign'),
(16, 'Honda', 'Foreign'),
(17, 'Mazda', 'Foreign'),
(18, 'Peugeot', 'Foreign'),
(19, 'Renault', 'Foreign'),
(20, 'Subaru', 'Foreign'),
(21, 'Toyota', 'Foreign'),
(22, 'VW', 'Foreign'),
(23, 'Volvo', 'Foreign');

/*
For questions (b)-(f) we will be working with the tables cars and brands in the SQL server. 

You are required to use the read_sql command for all the following questions if you are using Python. If you are using a database management system (like pgAdmin or the SQL Notebook extension), you can write the queries directly in the system.
*/

/*
(b) Subset and sort

- Select the columns make, price, mpg, and brand
- Use WHERE to get a subset of cars to subset cars whose brand is Buick
- Sort the results by brand in ascending order
- Write the query in multiple lines, one line per clause
*/

/*
(c) Groupby + Aggregate + Sort

- From cars, obtain the average of mpg by brand using GROUP BY
- Use ORDER BY to sort by the average of mpg in descending order
- Limit the results to the top 5 brands with the highest average mpg
*/

/*
(d) Groupby + Aggregate + Sort

- From cars, obtain the average of mpg by brand using GROUP BY
- Sort the results by the average of mpg in descending order
- Use HAVING to filter brands with an average mpg strictly higher than 20
- Make sure to seperate your HAVING and GROUP BY clauses

HINT: Use HAVING AVG(mpg) rather than an alias for the code to work correctly
*/

/*
(e) Groupby and multiple aggregations

- From cars, obtain the average, min, and max of each brand's price using GROUP BY
- Make sure to split the aggregations into separate columns
- Sort the results by brand in ascending order
*/

/*
(f) Merge

- From cars, LEFT JOIN the dataset brand_data using brand as a merging variable. 
- Select the columns make, price, mpg, and origin_type
- Sort the results by origin_type in ascending order
*/
