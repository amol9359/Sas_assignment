/* Ex.1  True or False*/
/* i) The SET statement can read temporary or permanent data sets.
   Ans- True
  
  ii) By default, the SET statement reads first 15 observations and all 
      variables from the input data set.
  Ans- False because SET statement read all observation
  
  iii) You can use KEEP statement to omit the variables from the output 
       dataset
  Ans- False because KEEP statement keep mentioned variable in the dataset
  
  iv) The IS NULL operator select observations in which the value of a variable 
      is missing.
  Ans- True
 
*/

/* EX.2. The datasets should be created from sashelp.heart with following 
conditions:*/

/* (1) Create new dataset in work library called ‘report’. The dataset should not 
have the two variables “AgeCHDdiag” and “MRW”. Also, the starting age 
(“AgeAtStart”) should be more than or equal to 45.
 */
data report;
	set sashelp.heart;
	drop AgeCHDdiag MRW;
	where AgeAtStart>=45;
run;

/* (2) Create data set in work with, for only “females” following all the above 
conditions mentioned.  */
Data report_2;
	set sashelp.heart;
	where Sex="Female" and AgeAtStart>=45;
run;

/* (3) Print the dataset, “Report_Females”. */
proc print data=report_2;
run;

/* EX.3. Read air excel sheet into work.excel */
proc import
	datafile="/home/u60635786/air.csv"
	out=work.excel
	dbms=csv
	replace;
	getnames=yes;
run;

/* EX.4. Read cars.csv into work.cars. */
proc import
	datafile="/home/u60635786/car.csv"
	out=work.cars
	dbms=csv
	replace;
	getnames=yes;
run;

/* EX.5. Read players.csv into work.players.  */
proc import
	datafile="/home/u60635786/players.csv"
	out=work.players
	dbms=csv
	replace;
	getnames=yes;
run;

/* Ex.6. Read sashelp.baseball into work.baseball */
data work.baseball;
	set sashelp.baseball;
run;

/* Ex.7. Use work.players_salary to create subset datasets as follows: 
Note the salary is in thousand dollars. */
proc print data=work.players;
    var Salary;
run;

/* 1. ‘East’ dataset should have all players from east division who have salary 
greater than $ 500 (thousands).  */
data East;
	set work.players;
	where Division='East' and Salary > 500;
run;


/*2. Create ‘American’ dataset ,which should have all players from the team of 
Seattle , Boston or Chicago
 */
data American;
	set work.players;
	where Team='Seattle' or Team='Boston' OR Team="Chicago";
run;









