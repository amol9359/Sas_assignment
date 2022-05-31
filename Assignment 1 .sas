/* EX.1. Which variable names are valid?  */

data Class14Stats;
	set Sashelp.air;
run;
/* Class14Stats is a valid variable name */

data  11monthsdata;
	set Sashelp.air;
run;
/*  11monthsdata is a invalid variable name */

data  Data#123;
	set Sashelp.air;
run;
/*  Data#123 is a invalid variable name */


data  ten months sales;
	set Sashelp.air;
run;
/*  ten months sales is a valid variable name but it assign same data to 3 different variables 
  1st one is "ten" then "Months" & "sales"
 */


proc print data=work.ten;
run;

proc print data=work.months;
run;

data  five_weeks_data;
	set Sashelp.air;
run;
/* five_weeks_data is a valid variable name */

data  TwoYearsData;
	set Sashelp.air;
run;
/* TwoYearsData is a valid variable name */

data cLaSs;
	set Sashelp.air;
run;
/* cLaSs is a valid variable name */

data dept@college;
	set Sashelp.air;
run;
/* dept@college is a invalid variable name */


/* EX.2 Use appropriate procedure to see descriptor portion of sashelp.cars 
How many observations and variables are there? And list the variables. */

PROC CONTENTS DATA = sashelp.cars;
run;
/* observations = 428 and Variables = 15 */

/* EX.3. Use appropriate procedure to see descriptor portion of sashelp.heart */
PROC CONTENTS DATA = sashelp.heart;
run;

/* Ex.4. Print only 50 observations of sashelp.car */
proc print data = sashelp.cars(obs=50);
run;

/* EX.5. Use appropriate procedure to see descriptor portion of sashelp.gas 
1)What is the type and length of variables? */
data gas;
set sashelp.gas;
PROC CONTENTS DATA = sashelp.gas;
run;

/* Ex.6. Which library names are valid?
1) Class14stats
2) 11days-No
3) Data#2-No
4) Yr 2015-No
5) _data-Yes
6) Days11-Yes
7) cLass-Yes
8) .com-No */

/* Length of library name should not exceed 8 characters */

libname Class14stats "/home/u61532068";
run;
/* Not a valid libarary name coz it exceeds 8 char */

libname 11days-No "/home/u61532068";
run;
/* Not a valid libarary name coz it start with number and exceeds 8 char */

libname Data#2-No "/home/u61532068";
run;
/* Not a valid libarary name coz it has special characters r and exceeds 8 char */

libname Yr 2015-No "/home/u61532068";
run;
/* Not a valid libarary name coz it has spaces and exceeds 8 char */

libname mylib "/home/u61532068";
run;
/* valid libarary name  */

libname _data-Yes "/home/u61532068";
run;
/* Not a valid libarary name coz it has "-" and exceeds 8 char */

libname .com-No "/home/u61532068";
run;
/* Not a valid libarary name coz it start with period and has "-" */


/* Ex-7. Create a new library ‘Statistics’ using appropriate statement */
libname Statistics "/home/u61532068";
run;
/* Not possible beacause it exceed 8 char limit */

/* Ex-8.Create a new library ‘DSL’ using libname statement */
libname DSL "/home/u61532068";
run;


/* Ex.9. Print first 15 observations of sashelp.heart and answer following: 
(1) Why is there ‘.’ For one and no’.’ for another viable? What does that mean? 
Can you justify? */
PROC print DATA = sashelp.heart(obs=15);
run;
/* For numerix variable missing value shown in period(.) and char variable missing values are just blanks */

/* Ex.10. There are two variables in the dataset and only one observation. 
The first variable is NAME and its value is MONISHAA 
The second variable is age with the value 10. And the third variable is Birthdate 
with value 19100. 
 */

data Q10;
input Name $ Age birthday;
datalines;
MONISHAA 10 19100
;
;
run;
/* 
Name variable has char datatype
Age and Birthday is numeric
 */

/* Ex.11. Type in and run GIVEN program and answer following questions: 
(1)How many datasets are available in WORK library. 
(2) What is the effect of “NODS” option in the proc contents code. Can you 
confirm by taking out the NODS option and running the code */
/*FIRST DATASET; */
Data test1; 
Input a b; 
Datalines; 
1 2 
3 4 
5 6 
;
; 
/*SECOND DATASET; */
Data test2; 
Input a1 b1; 
Datalines; 
11 2 
13 4 
15 6 
;
; 
/*THIRD DATASET; */
Data test3; 
Input a2 b2;
Datalines; 
11 22 
13 24 
15 26 
;
; 
PROC CONTENTS DATA=WORK._ALL_ NODS  ; 
RUN;
/* NODS remove the content Procedure for all data sets present in the reference libarary  */

