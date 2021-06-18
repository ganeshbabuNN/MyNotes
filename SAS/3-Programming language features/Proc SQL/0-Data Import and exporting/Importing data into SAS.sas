Read data delimited by blanks (.txt data file) using list input
Read data delimited by commas (.csv data file) using list input
Read data delimited by any delimiters using list input
Read data in fixed columns using column input
Read data using formatted input including using SAS informat to read dates
Read data using formatted input: use SAS format to display SAS date values
Create internal SAS data using DATALINES statement
LIBNAME statement: assign library names and create permanent SAS data sets
Proc Import: Import Excel data file into SAS
	
Read data delimited by blanks (.txt data file) using list input
--------------------------------------------------------------
-Using inFile statement
https://documentation.sas.com/?docsetId=lestmtsref&docsetTarget=n1rill4udj0tfun1fvce3j401plo.htm&docsetVersion=3.1&locale=en

*Read data seperated by blanks into SAS;
the original data from sakila_actors.txt

1 PENELOPE GUINESS
2 NICK WAHLBERG
3 ED CHASE
4 JENNIFER DAVIS
5 JOHNNY LOLLOBRIGIDA
6 BETTE NICHOLSON
7 GRACE MOSTEL
8 MATTHEW JOHANSSON
9 JOE SWANK

data actor_blanks;
	infile "C:\GBAG_Back\pyworkspace\datasets\sakila_datasets-xlsx\sakila_actors.txt";
	input actor_id first_name $ last_name $;
run;

data actor_blanks;
	infile "C:\GBAG_Back\pyworkspace\datasets\sakila_datasets-xlsx\sakila_actors.txt";
	input actor_id first_name $ last_name $;
run;

proc print data=actor_blanks;
run;


Read data delimited by commas (.csv data file) using list input
---------------------------------------------------------------
Can also look at the original datafile DATA_commas.csv 
5 obs and 4 vars

1,PENELOPE,GUINESS
2,NICK,WAHLBERG
3,ED,CHASE
4,JENNIFER,DAVIS
5,JOHNNY,LOLLOBRIGIDA
6,BETTE,NICHOLSON
7,GRACE,MOSTEL
8,MATTHEW,JOHANSSON
9,JOE,SWANK

-Use "dsd"(delimiter senstive data) its a infile options. For check explanation on INFILE and INPUT statements,
Please check my previous tutorial on .How to read data seperated by blanks

data actor_comma;
	infile "C:\GBAG_Back\pyworkspace\datasets\sakila_datasets-xlsx\sakila_actors.csv" dsd;
	input actor_id first_name $ last_name $;
run;

proc print data=actor_comma;
run;

https://documentation.sas.com/?docsetId=lestmtsref&docsetTarget=n1rill4udj0tfun1fvce3j401plo.htm&docsetVersion=3.1&locale=en

Read data delimited by any delimiters using list input
------------------------------------------------------
when you have the source file apart from the comma and blank.
*in this we use different options dlm, delimiter dsd dlm. 

data actor_otherdel;
	*approach 1;
	*infile "C:\GBAG_Back\pyworkspace\datasets\sakila_datasets-xlsx\sakila_actors1.txt" dlm= ':';
	*approach 2;
	*infile "C:\GBAG_Back\pyworkspace\datasets\sakila_datasets-xlsx\sakila_actors1.txt" delimiter= ':';
	*approach 3;
	infile "C:\GBAG_Back\pyworkspace\datasets\sakila_datasets-xlsx\sakila_actors1.txt" dsd dlm= ':';
	input actor_id first_name $ last_name $;
run;

proc print data=actor_otherdel;
run;

Read data in fixed columns using column input
---------------------------------------------
-Many raw data files store information in fixed columns. This has several advantages over data values separated by delimiters.
*First, you don’t have to worry about missing values. If you do not have a value, you can leave it blank.
*Next, when you write your INPUT statement, you can choose which variables to read, and in what order to read them.

1234567890123456789012 ----Columns indicator, not part of the data
Tim M14510/21/1978
Sara 13009/20/1964
Mike M18011/23/1965
Laura F13011/06/1980
Sean M16704/07/2000

The raw data file I used for this tutorial is ‘data_column.txt’, shown as above. I stored it in the SAS studio shared folder located on my local drive. The first line is not part of the data, it is indicating the column numbers. There are 4 variables in the data.

Name: occupies column 1-5
Gender: occupies column 6
Weight: occupies column 7-9
DOB: occupies column 10 -19

data sdata_column;
   infile "C:\GBAG_Back\MyTraining\SAS\SAS Programming BASE certification course for SAS Beginners\Resources\Data_201902\Data_201902\DATA_column.txt";
   input 	name	$  1-5
			Gender  $   6
			Weight	   7-9
			DOB     $ 10 - 19;
run;

proc print data = sdata_column;
run;

Read data using formatted input including using SAS informat to read dates
--------------------------------------------------------------------------
-Reads data from fixed columns
-Reads character and numeric data including standard and nonstandard numerical values, such as numbers with dollar signs and commas
-Reads dates in different formats, not like column input which can only read dates as character values
-It is the mostcommon and powerful of all the input methods
-Any time you have nonstandard data in fixed columns, you should consider using formatted input to read the file

1234567890123456789012 ----Columns indicator, not part of the data
Tim M14510/21/1978
Sara 13009/20/1964
Mike M18011/23/1965
Laura F13011/06/1980
Sean M16704/07/2000

I use the same raw data file (data_column.txt) that was used inthe tutorial on column input. The data is shown as above. The variables information is listed as below.
There are 4 variables in the data.
Name: occupies total five columns, column 1-5
Gender: occupies total one column, column 6
Weight: occupies three columns, column 7-9
DOB: occupies ten columns, column 10 -19

SAS Informats
*----------*
-Informatsare built-in instructions that tell SAS how to read a data value. The choice of which informatto use is determined by the data
*The w.dformat: reads standard numeric values. The w tells SAS how many columns to read. The optional d tells SAS that there is a decimal point in the value, the decimal point counts as one of the columns to be read. For example, the variable Weight containing 3 digits values (such as 145 lbs) has an informatof 3. ; Another example, value 2.1 takes up 3 column spaces, 2 digits + 1 decimal point, so it has an informatof 3.1
*The $w. informat: tells SAS to readwcolumns of character data. In this tutorial, the variable Name is read as character data and takes up five columns, and has informatof $5.; values of Gender take up a single column, and has informatof $1.
*For date: the MMDDYY10.informattells SAS that the date you are reading is in the mm/dd/yyyyform, 10means this form takes up 10 columns including 8 digits and 2 slash signs. For example, the variable DOB has values like 10/21/1978. SAS reads the date and converts the value into a SAS date. SAS stores dates as numeric values equal to the number of days from January 1, 1960. So, if you read the value01/01/1960with the MMDDYY10. informat, SAS stores a date value of 0. The date01/02/1960read with the same informatwould result in a date value of 1, and so forth
*For complete list of SAS informats, Please see SAS language, reference :

data sdata_column;
infile "C:\GBAG_Back\MyTraining\SAS\SAS Programming BASE certification course for SAS Beginners\Resources\Data_201902\Data_201902\DATA_column.txt";
input 
@1 Name	$ 5.
@6 Gender   $  1.
@7 Weight	3.
@10 DOB     mmddyy10.;
Run;

proc print data=sdata_column;
run;

http://support.sas.com/documentation/cdl/en/lrdict/64316/HTML/default/viewer.htm#a001239776.htm

Read data using formatted input: use SAS format to display SAS date values
--------------------------------------------------------------------------
/* PART 1  */
data sdata_column;
infile "C:\GBAG_Back\MyTraining\SAS\SAS Programming BASE certification course for SAS Beginners\Resources\Data_201902\Data_201902\DATA_column.txt";
input 
@1 Name	$ 5.
@6 Gender   $  1.
@7 Weight	3.
@10 DOB     mmddyy10.;
format DOB     date9.;
Run;

proc print data=sdata_column;
run;

/*PART 2  */
proc print data=sdata_column;
format DOB mmddyy10.;
run;

proc print data=sdata_column;
format DOB date9.;
run;
proc print data=sdata_column;
run;

Create internal SAS data using DATALINES statement
--------------------------------------------------

data actors;
input staff_id first_name $ last_name $;
datalines;
1 PENELOPE GUINESS
2 NICK WAHLBERG
3 ED CHASE
4 JENNIFER DAVIS
5 JOHNNY LOLLOBRIGIDA
6 BETTE NICHOLSON
7 GRACE MOSTEL
8 MATTHEW JOHANSSON
9 JOE SWANK
10 CHRISTIAN GABLE
11 ZERO CAGE
12 KARL BERRY
13 UMA WOOD
14 VIVIEN BERGEN
;
run;


LIBNAME statement: assign library names and create permanent SAS data sets
--------------------------------------------------------------------------
SAS dataset names have two parts:
	libref.dataset-name.
-the part before the period, libref(short for library reference) is the the name of the librry the SAS datasets will be stored in libraries.
-the part of the name after the period identifies the dataset's name that you want to give to the data.

Temporary SAS datasets vs Permanent SAS datasets

temporary SAS datasets: 
a dataset with a name without a period. all the sas datasets created in my tutuorials by far are temporary SAS datasets, which disappear when the current SAS sessions ins closed.
The temporary SAS datasets are stored in a SAS default library called 'WORK',which is created by SAS automatically every time you open a SAS sessions.

for example, if you write a data statement.
		data test;
SAS adds it to the default library WORK, so this DATA statment is equivalent to data WORK.TEST.

Permanent SAS datasets;
the SAS datasets with library name other then 'WORK', it stays in its library permanently when the current SAS session is closed.

Creating Permanent SAS datasets using LIBNAME statement.

a general form of LIBNAME statement:
LIBNAME library-Name "Directory";
-start with the LIBNAME keyword
-followed by the library name (libref).
-the library name(libref) must not be more than 8 characters in length and must be valid SAS name.

Valid SAS names follow a few simple namming rules:
-name must be 32 characters or fewer in length
-names must start with a letter or an underscore(_)
-names can contain only letters, numbers or underscores(_)
-names can contain upper and lowercase letters, SAS is insesnitive to case e.g 'score' is same as 'Score' to SAS

-After the library-name, the directory of the library is written in quotes
-if you need to use the permanent SAS datasets in a new SAS session, you just need to include and run the same LIBNAME statement in the new sessions.

data staff.actors;
input staff_id first_name $ last_name $;
datalines;
1 PENELOPE GUINESS
2 NICK WAHLBERG
3 ED CHASE
4 JENNIFER DAVIS
5 JOHNNY LOLLOBRIGIDA
6 BETTE NICHOLSON
;
run;

data actors1;
input staff_id first_name $ last_name $;
datalines;
1 PENELOPE GUINESS
2 NICK WAHLBERG
3 ED CHASE
4 JENNIFER DAVIS
5 JOHNNY LOLLOBRIGIDA
6 BETTE NICHOLSON
;
run;

proc print data = staff.actors;
run;

Proc Import: Import Excel data file into SAS
--------------------------------------------
Here is the general form of the IMPORT procedure for reading Excel files:
PROC IMPORT DATAFILE = 'filename' OUT = data-set DBMS = identifier REPLACE;
•Datafile= ‘Filename’: ‘filename’ specifies the complete path and filename that is read into SAS
•Out = Data-set: Data-setis the name of the SAS data set you want to create from reading in the Excel file
•The DBMS=option: tells SAS the type of Excel file to read. My excel file has .xlsxas its file extension, so DBMS = XLSX
•The REPLACEoption: tells SAS to replace the SAS data set named in the OUT= data-set option if it already exists. In real work, the data file gets updated from time to time, you often need to read in updated data to replace the older versions.

Optional Statements
If you have more than one sheet in your Excel file, then you can specify which sheet to read using the following statement:
SHEET = "sheet-name";
If you want to read only specific cells in the sheet, you can specify a range. You can specify the upper-left and lower-right cells for the range as follows:
RANGE = "sheet-name$UL:LR";
By default, the IMPORT procedure will take the variable names from the first row of the spreadsheet. If you do not want this, then you can add the following statement to the procedure, and SAS will name the variables F1, F2, and so on.
GETNAMES = NO;

/*no optional statements*/
proc import datafile = "C:\GBAG_Back\pyworkspace\datasets\sakila_datasets-xlsx\sakila_surveys_all" 
DBMS = xlsx out = survey1 replace ;
run;

/*optional statements*/
/*getnames= No*/
proc import datafile = "C:\GBAG_Back\pyworkspace\datasets\sakila_datasets-xlsx\sakila_surveys_all" 
DBMS = xlsx out = survey1 replace;
getnames = no;
/*By default, the IMPORT procedure will 
take the variable names from the first row of the spreadsheet.*/
run;

/* Sheet= "sheet-name" ; */
proc import datafile = "C:\GBAG_Back\pyworkspace\datasets\sakila_datasets-xlsx\sakila_surveys_all" 
DBMS = xlsx out = survey2 replace ;
SHEET = "survey2";  /*bring in the first sheet by defaut if not specify*/
run;

/*range = "sheet-name$UL:LR" ; */
proc import datafile = "C:\GBAG_Back\pyworkspace\datasets\sakila_datasets-xlsx\sakila_surveys_all" 
DBMS = xlsx out = survey2 replace ;
RANGE = "survey2$A1:H6"; 
run;
