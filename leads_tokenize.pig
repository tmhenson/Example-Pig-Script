raw = LOAD '/user/hue/leads.csv' USING PigStorage(',') AS
(first_name:chararray, last_name:chararray, company_name:chararray, address:chararray, 
city:chararray, county:chararray, state:chararray, zip:int, phone1:chararray, phone2:chararray, email:chararray, web:chararray);


n = FOREACH raw GENERATE TOKENIZE(company_name);

DUMP n;