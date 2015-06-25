titanic_list = LOAD 'titanic_passenger_list.csv' USING PigStorage(',') AS 
(class:int, survived: int, name: chararray, sex: chararray, age: int, sibsp: int, parch:int, ticket: int, 
fare: int, cabin: chararray, embarked: chararray, boat: chararray, body: chararray, home_dest: chararray);

DESCRIBE titanic_list;