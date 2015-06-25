raw = LOAD '/user/hue/leads.csv' USING PigStorage(',') AS
(first_name:chararray, last_name:chararray, company_name:chararray, address:chararray, 
city:chararray, county:chararray, state:chararray, zip:int, phone1:chararray, phone2:chararray, email:chararray, web:chararray);

small = FOREACH raw GENERATE (chararray) REPLACE(last_name, '\\"', '') AS last_name, REPLACE(first_name, '\\"', '') AS first_name, 
REPLACE(address, '\\"', '') AS address;

final = FOREACH small GENERATE CONCAT(last_name, ' ', first_name), address;

DUMP final;