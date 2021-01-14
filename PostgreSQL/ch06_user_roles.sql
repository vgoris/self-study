/* PRACTICE: granting different permissions to different user roles in a database */

/* View tables from the kinetico database */ 

Select * FROM manufacturing.products;
SELECT * FROM human_resources.employees;

/* Impersonate the hr_manager */

SET ROLE hr_manager;

/* Switch permissions back to postgres super user */ 

RESET ROLE;

/* Give hr_manager permissions in database */ 

GRANT USAGE ON SCHEMA human_resources TO hr_manager;

/* Allow hr_manager to view data, but doesn't allow them to edit */ 
GRANT SELECT ON ALL TABLES IN SCHEMA human_resources 
	TO hr_manager;
  
/* Grants all permissions to hr_manager */
GRANT ALL ON ALL TABLES IN SCHEMA human_resources
	TO hr_manager;

/* Remove the hr_manager role from Postgres Server */
RESET ROLE;
REVOKE ALL ON ALL TABLES IN SCHEMA human_resources FROM hr_manager;
REVOKE USAGE IN SCHEMA human_resources FROM hr_manager;
DROP ROLE hr_manager;
