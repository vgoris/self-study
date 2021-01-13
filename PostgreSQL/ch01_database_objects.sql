/* Example:   1. Create a table in an existing database using pgAdmin and add data
              2. Store information about different kinds of berries
              3. Table columns should include an ID number, berry name, and color */

/* Create table with three columns */
CREATE TABLE public.kinds_of_berries
( 
  "berry_id" integer,
  "berry_name" character(20),
  "berry_color" character(20)
);

/* Add values to rows */
INSERT INTO public."kinds_of_berries" (
  "berry_id", "berry_name", "berry_color")
  VALUES (1, 'blueberry', 'blue'), 
         (2, 'strawberry', 'red'),
         (3, 'raspberry', 'red');
         
/* View table */
SELECT * FROM public."kinds_of_berries"


             
