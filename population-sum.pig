population = LOAD '/user/hue/population.csv' USING PigStorage(',') AS 
(year:int, age:int, gender:int, popsize:int);

split_gender = GROUP population BY gender;

--results = FOREACH population GENERATE SUM(popsize);

results = FOREACH split_gender GENERATE SUM(population.popsize), gender;

DUMP results;