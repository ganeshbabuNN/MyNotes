

/*WHY USE MACROS? 
Because macro code takes longer to write and debug than standard SAS code,
 you generally won’t use macros in programs that will be run only a few times. 
But if you find yourself writing similar code over and over again, 
then macros may make your job easier.  
Macros can help in several ways. First, with macros you can make one small change 
in your program
Second, macros can allow you to write a piece of code and use it over and over again 
in the same program or in different programs.
 Third, you can make your programs data driven, letting SAS decide 
what to do based on actual data values. 


When you submit a standard SAS program, SAS compiles and then immediately 
executes it. But when you write macro code, there is an extra step. 
Before SAS can compile and execute your program, SAS must pass your macro statements
 to the macro processor 
which then “resolves” your macros generating standard SAS code. 


MACROS VS. MACRO VARIABLES 
As you construct macro programs, you will use two basic building blocks:
 macros and macro variables. You can tell them apart because the 
names of macro variables start with an ampersand (&), while the names of macros 
start with a percent sign (%)


define a macro----CREATING MODULAR CODE WITH MACROS 

Anytime you find yourself repeating the same program statements over and over, 
you might want to consider creating a macro instead.  Macros are simply a group of SAS statements that have a name. 
The general form of a macro is 
%MACRO macro-name; 
   macro-text 
%MEND macro-name;
 The %MACRO statement tells SAS that this is the beginning of the macro and the %MEND statement signals
the end of the macro. 
 Macro-name is a name you make up for your macro.  The name must follow standard SAS naming conventions 

You don’t need to specify the macro-name in the %MEND statement,
 but it will make your programs easier to understand if you include it.
 Macro-text represents the SAS statements that you want in your macro*/





data hospital;
input id height weight sex $ time;
datalines;
2 120 56 M 1 
3 134 45 F 4 
4 166 63 M 3
5 160 60 M 3
6 145 38 F 3
7 173 69 M 1
8 123 29 F 4
9 155 53 M 3
; 
run;
%macro clinic; 
proc freq data=hospital;
tables sex;
run;
proc means data = hospital;
var height weight;
run; 
proc print data= clinic;
run;
%mend clinic;
%clinic;



/*Suppose you have a program that you run once a month. 
Every time you have to edit the program so it will select data for the correct month 
and print the correct title. This is time-consuming and prone to errors. You can use %LET 
to create a macro variable. Then you can change the value of the macro variable in the 
%LET statement, 
and SAS will repeat the new value throughout your program 

%LET is a straightforward macro statement that simply assigns a value to a macro variable.

SUBSTITUTING TEXT WITH %LET 

The general form a %LET statement is 
%LET macro-variable-name = value; 





/*Use Macro variable to chane the condition in the where statement*/;
%let wt_time = 3;

title "macro1";

proc freq data=hospital;
tables sex;
where time = &wt_time;
run;
title "macro2";
proc means data = hospital;
var height weight;
where time= &wt_time;
run;





/*A company that manufactures bicycles maintains a file listing all their models.
 For each model they record its name, class (Road, Track, or Mountain), list price, and frame material.
 Here is a subset of the data: */

data models;
input Model $1-12  Class $ Price Frame $ 28-38 ;
datalines;
Black Bora   Track     796 Aluminum 
Delta Breeze Road      399 CroMoly 
Jet Stream   Track    1130 CroMoly 
Mistral      Road     1995 Carbon Comp 
Nor'easter   Mountain  899 Aluminum 
Santa Ana    Mountain  459 Aluminum 
Scirocco     Mountain 2256 Titanium 
Trade Wind   Road      759 Aluminum 
;
run;



%LET bikeclass = Aluminum; 
 
*	Use a macro variable to subset; 
PROC PRINT DATA = models NOOBS; 
   WHERE Frame = "&bikeclass"; 
   FORMAT Price DOLLAR6.; 
   TITLE "Current Models of &bikeclass Bicycles";
 RUN; 



 


/*PARAMETERS
The macro language allows passing of parameters in much the same way as other programming 
 languages.
A SAS macro can have two types of parameters: positional and keyword.
Positional parameters are defined only by their order in the macro invocation 
and must always be included in the macro invocation, while keyword parameters are defined by 
the name of the parameter and do not have to be included.
A macro can contain both positional and keyword parameters,
 
/*keyword Parameters*/

data models;
input Model $1-12  Class $ Price Frame $ 28-38 ;
datalines;
Black Bora   Track     796 Aluminum 
Delta Breeze Road      399 CroMoly 
Jet Stream   Track    1130 CroMoly 
Mistral      Road     1995 Carbon Comp 
Nor'easter   Mountain  899 Aluminum 
Santa Ana    Mountain  459 Aluminum 
Scirocco     Mountain 2256 Titanium 
Trade Wind   Road      759 Aluminum 
;
run;

%macro ww ;
proc sort data=&a;
by &b;
run;
proc print data = &a;
where &b = "&c";
title "&C  model";
run;
%mend;

%cycle2 ( b= Frame,c= Aluminum a= models,);


/*positional parameters*/
data models;
input Model $1-12  Class $ Price Frame $ 28-38 ;
datalines;
Black Bora   Track     796 Aluminum 
Delta Breeze Road      399 CroMoly 
Jet Stream   Track    1130 CroMoly 
Mistral      Road     1995 Carbon Comp 
Nor'easter   Mountain  899 Aluminum 
Santa Ana    Mountain  459 Aluminum 
Scirocco     Mountain 2256 Titanium 
Trade Wind   Road      759 Aluminum 
;
run;

%macro cycle2 (b,a,c);
proc sort data=&a;
by &b;
run;
proc print data = &a;
where &b = "&c";
title "&C  model";
run;
%mend;
%cycle2(class, models,Mountain);

/*callsymut callsymputx*/



/*Macro function*/


%let x = 10;
%put &x;
%let y = %eval(&x +10);
%put &y;

%sysevalf; decimal

%let M = "This as an apple";
%put &M;

options


data models;
input Model $1-12  Class $ Price Frame $ 28-38 ;
datalines;
Black Bora   Track     796 Aluminum 
Delta Breeze Road      399 CroMoly 
Jet Stream   Track    1130 CroMoly 
Mistral      Road     1995 Carbon Comp 
Nor'easter   Mountain  899 Aluminum 
Santa Ana    Mountain  459 Aluminum 
Scirocco     Mountain 2256 Titanium 
Trade Wind   Road      759 Aluminum 
;
run;

%macro cycle;
proc sort data=models;
by class;
run;
proc print data = models;
where class = "Road";
title " Road model";
run;
%mend;

option mprint;
%cycle;

option nomprint;
%cycle; 
