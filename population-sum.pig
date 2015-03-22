population = LOAD '/user/hue/population.csv' USING PigStorage(',') AS (year:int, age:int, gender:int, popsize:int);

a = GROUP population popsize

popsize = FOREACH a GENERATE SUM(popsize) AS total;

DUMP popsize;
