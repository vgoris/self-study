/* Create schema in an existing database */
CREATE SCHEMA human_resources
  AUTHORIZATION postgres;
  
CREATE SCHEMA manufacturing
  AUTHORIZATION postgres;
  
/* Add two tables to an existing schema */
CREATE TABLE manufacturing.products
( 
  product_id character varying(10) NOT NULL,
  name character varying(100) NOT NULL,
  power integer,
  manufacturing_cost money NOT NULL,
  category_id integer NOT NULL,
  PRIMARY KEY (product_id)
);

CREATE TABLE manufacturing.categories
(
  category_id integer NOT NULL,
  name character varying(50) NOT NULL,
  market character varying(50) NOT NULL,
  PRIMARY KEY (category_id)
);

ALTER TABLE manufacturing.categories
  OWNER to postgres;
  
/* Link foreign and primary keys to create relationship between "products" and "categories" tables */
ALTER TABLE manufacturing.products
  ADD FOREIGN KEY (category_id)
  REFERENCES manufacturing.categories (category_id) MATCH SIMPLE
  ON UPDATE CASCADE
  ON DELETE NO ACTION;
  

  
  
 
