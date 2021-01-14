/* Practice: Retrieving information from a table */

SELECT name, manufacturing_cost
FROM manufacturing.products
WHERE category_id = 3;

/* Joining tables with existing relationship */

SELECT products.product_id,
       products.name AS product_name,
       products.manufacturing_cost,
       categories.name AS category_name,
       categories.market
FROM manufacturing.products JOIN manufacturing.categories
  ON products.category_id = categories.category_id;

