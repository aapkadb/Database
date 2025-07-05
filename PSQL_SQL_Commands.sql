PSQL + SQL Commands
-------------
sudo -u postgres psql

ALTER USER postgres PASSWORD '<new-password>';

SELECT version();        --  To check the postgres version

\dt                      --  List database tables 

\l                       --  List all databases 

\d <table-name>          --  Describe the table

\dn                      --  List all schemas

\du                      --  List users and their roles

\du <username>           --  Retrieve a specific user 

\df                      --  List all functions

\dv                      --  List all views

\o <file-name>           -- Save query results to a file
// example
\o query_results
...run the psql commands...
\o - stop the process and output the results to the terminal again

\i <file-name>           -- Run commands from a file (Create a txt file with the following content)




