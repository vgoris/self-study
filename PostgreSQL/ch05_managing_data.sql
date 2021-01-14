/* PRACTICE */ 

/* Creating an index for an existing table 
   NULL LAST lists null values at the end 
*/

CREATE INDEX products_product_id_idx
  ON manufacturing.products USING btree
  (product_id ASC NULL LAST)
  
/* Set default value for column on an existing table 
   Assumes new input values are of the category specified by 
      that category_id and sets it to that value automatically
      if left blank in table 
 */
 
ALTER TABLE manufacturing.products
  ALTER COLUMN category_id SET DEFAULT 4;
  
/* Add a constraint for a table's input values
   Assures that values in the 'market' column are 
      either 'domestic' or 'industrial'. 
   Protects against spelling errors and other 
   inconsistencies.
*/

ALTER TABLE manufacturing.products
  ADD CONSTRAINT categories_market_check 
    CHECK (market = 'domestic' OR market = 'industrial');
 
 /* CHALLENGE: 
      1. Add indexes to 'employees' on 'employee_id' and 'last_name'
      2. Add a default value constraint to place new employees in the 
         training department
      3. Add check constraint 'hire_date > '2020-01-01''  
 */
 
 /* 1. Add indexes */
 
CREATE INDEX employees_employee_id_idx
    ON human_resources.employees USING btree
    (employee_id ASC NULLS LAST);
    
CREATE INDEX employees_last_name_idx
    ON human_resources.employees USING btree
    (last_name ASC NULLS LAST);
    
/* 2. Add constraint 
      Look for the training department's id first
*/

SELECT * FROM human_resources.departments
  WHERE department_name = 'Training';

/* The department's id is 800 */

ALTER TABLE human_resources.employees
   ALTER COLUMN department_id SET DEFAULT 800;
   
/* 3. Add check constraint for the hire date.
      Makes sure new employees are hired after 
      January 1st 2020, written in the form YYYY-MM-DD
      
      When NOT VALID is turned on, data that was previously entered
      into the table doesn't get validated with this new check- only applies
      to new data. Employees hired before January 1st remain in the table
*/

ALTER TABLE human_resources.employees
  ADD CONSTRAINT employees_hire_date_check 
  CHECK (hire_date > '2020-01-01')
  NOT VALID;


 
 
