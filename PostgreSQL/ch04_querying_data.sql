/* PRACTICE: Retrieving information from a table */

/* SELECT keyword used to ask for specific columns of a table
       * retrieves all columns, otherwise can specify which columns 
       (separated by comma) and they will be returned in that order
   FROM keyword specifies which table
   WHERE keyword selects for certain rows against some criteria 
       (example: WHERE category_id = 3)
*/
SELECT name, manufacturing_cost
FROM manufacturing.products
WHERE category_id = 3;

/* Joining tables with existing relationship 
       Use AS keyword to add an alias to a column name:
              when column name is too long, 
              or to specify which table the column comes from
              if two columns from different tables have the same name
       ON keyword specifies which column hold the related values 
*/
SELECT products.product_id,
       products.name AS product_name,
       products.manufacturing_cost,
       categories.name AS category_name,
       categories.market
FROM manufacturing.products JOIN manufacturing.categories
  ON products.category_id = categories.category_id;

