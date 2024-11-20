# QTM 151 - Introduction to Statistical Computing II

## Quiz 04 - SQL

In this quiz, you will demonstrate your ability to write SQL queries and extract information from tables.

### Instructions

- You are free to use any resources available to you, including the internet, but you are not allowed to discuss the quiz with anyone else.
- You are also free to use any database management system you prefer (pgAdmin, SQLAlchemy, SQLite, etc.), but the queries must be written in SQL.
- Please submit your answers as a `.sql`, `.ipynb`, or `.html` file. If you submit an `.html` file, please include the SQL queries.

### Data

You will work with two tables, one named `cars` and the other named `brand_data`. They are both available as `.csv` files in this repository, or you can create them yourself using the data provided in the `.sql` file or the Jupyter Notebook. The tables have the following columns:

#### `cars` Table

| Column       | Type    | Description                          |
|--------------|---------|--------------------------------------|
| car_id       | INTEGER | Primary key                          |
| make         | TEXT    | Car make and model                   |
| price        | NUMERIC | Price of the car                     |
| mpg          | NUMERIC | Miles per gallon                     |
| rep78        | NUMERIC | Repair record 1978                   |
| headroom     | NUMERIC | Headroom in inches                   |
| trunk        | NUMERIC | Trunk space in cubic feet            |
| weight       | NUMERIC | Weight of the car in pounds          |
| length       | NUMERIC | Length of the car in inches          |
| turn         | NUMERIC | Turning circle in feet               |
| displacement | NUMERIC | Engine displacement in cubic inches  |
| gear_ratio   | NUMERIC | Gear ratio                           |
| brand        | TEXT    | Brand of the car                     |

#### `brand_data` Table

| Column      | Type    | Description                          |
|-------------|---------|--------------------------------------|
| brand_id    | NUMERIC | Primary key                          |
| brand       | TEXT    | Brand name                           |
| origin_type | TEXT    | Origin type (Domestic or Foreign)    |

### Tasks

1. **Establish a Connection**
   - First, please establish a connection to your database, either via Python or directly in your database management system.

2. **Create Tables and Insert Data**
   - Read the files `brand_data.csv` and `cars.csv` using the `to_sql` command. Call the new datasets `brand_data` and `cars`, respectively, in the server.
   - OR: Create the tables `brand_data` and `cars` using the data provided below.
   - Just do one of the two options above.

3. **Subset and Sort**
   - Select the columns `make`, `price`, `mpg`, and `brand`.
   - Use `WHERE` to get a subset of cars whose brand is `Buick`.
   - Sort the results by `brand` in ascending order.
   - Write the query in multiple lines, one line per clause.

4. **Groupby + Aggregate + Sort**
   - From `cars`, obtain the average of `mpg` by `brand` using `GROUP BY`.
   - Use `ORDER BY` to sort by the average of `mpg` in descending order.
   - Limit the results to the top 5 brands with the highest average `mpg`.

5. **Groupby + Aggregate + Sort with HAVING**
   - From `cars`, obtain the average of `mpg` by `brand` using `GROUP BY`.
   - Sort the results by the average of `mpg` in descending order.
   - Use `HAVING` to filter brands with an average `mpg` strictly higher than 20.
   - Make sure to separate your `HAVING` and `GROUP BY` clauses.
   - HINT: Use `HAVING AVG(mpg)` rather than an alias for the code to work correctly.

6. **Groupby and Multiple Aggregations**
   - From `cars`, obtain the average, min, and max of each brand's `price` using `GROUP BY`.
   - Make sure to split the aggregations into separate columns.
   - Sort the results by `brand` in ascending order.

7. **Merge**
   - From `cars`, `LEFT JOIN` the dataset `brand_data` using `brand` as a merging variable.
   - Select the columns `make`, `price`, `mpg`, and `origin_type`.
   - Sort the results by `origin_type` in ascending order.

### Submission

Please submit your answers as a `.sql`, `.ipynb`, or `.html` file. If you submit an `.html` file, please include the SQL queries.

Good luck! 😊