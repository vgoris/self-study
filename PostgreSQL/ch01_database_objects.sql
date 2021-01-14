/* CHALLENGE:   1. Create a table in an existing database using pgAdmin and add data
                2. Store information about different kinds of berries
                3. Table columns should include an ID number, berry name, and color */

/* Create table with three columns
     Convention to use lowercase letters for table and column names,
     and to separate multiple words with an underscore (_)
*/
CREATE TABLE public.kinds_of_berries
( 
  /* Variables that define the columns of the table
     character(20) indicates sequence that stores up to 20 characters */
  "berry_id" integer,
  "berry_name" character(20),
  "berry_color" character(20)
);

/* Add values to rows 
     Enter text in Postgres in single quotation marks.
*/
INSERT INTO public."kinds_of_berries" (
  "berry_id", "berry_name", "berry_color")
  VALUES (1, 'blueberry', 'blue'), 
         (2, 'strawberry', 'red'),
         (3, 'raspberry', 'red');
         
/* View table */
SELECT * FROM public."kinds_of_berries"

             
