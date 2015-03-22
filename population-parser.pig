--intial loading of data
population = LOAD '/user/hue/population.csv' USING PigStorage(',') AS (year:int, age:int, gender:int, popsize:int);

--pop-parser = FOREACH population GENERATE (year, age, gender, popsize);

pop55female = FILTER population BY age == 50 AND gender == 2;

DUMP pop55female;
