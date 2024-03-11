3. Create schema in any Database script or any ORM (Object Relational Mapping).

Answer:
 SQL for a simple database with two tables: "Product_Category" and "Product".
 
  -- Create Product_Category table
CREATE TABLE Product_Category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

-- Create Product table
CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Product_Category(category_id)
);

1. Product_Category: This table stores the categories of products. It has two columns: "category_id" as the primary key and "category_name" to store the name of the category.
2. Product: This table stores the details of individual products. It has four columns: "product_id" as the primary key, "product_name" to store the name of the product, "price" to store the price of the product, and "category_id" as a foreign key referencing the "category_id" column in the "Product_Category" table, establishing the relationship between products and categories.
