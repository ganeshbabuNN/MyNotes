/*without the double trailing*/
data test;
input a b;
cards;
1 3 3 2 2 2 3 4 3 2 2 2 3 32 2 2 2 2 2
1 2 2 3 3 3 2 2 2 2 3 2 2 2 2 2 2 2 2
1 2 2 3 3 3 2 2 2 2 3 2 2 2 2 2 2 2 2 
;
run;

data test;
/*double trailing is line hold normally end of the line to hold the line before jumping into the next line*/
input a b @@;
cards;
1 3 3 2 2 2 3 4 3 2 2 2 3 32 2 2 2 2 2
1 2 2 3 3 3 2 2 2 2 3 2 2 2 2 2 2 2 2
1 2 2 3 3 3 2 2 2 2 3 2 2 2 2 2 2 2 2 
;
run;
/*--single trailing*/
data test;
/* without single trailing*/
input name $ age;
cards;
anu 32 f
ami 42 m
sami 35 f
;
run;

data test;
/*single trailing*/
input name $ age @;
if age < 1 then delete;
else input gender $;
cards;
anua 32 f
ami 42 m
sami 35 f
;
run;
/*all the value*/
data test;
/*single trailing*/
input name $ age @;
if age < 1 then delete;
input gender $;
cards;
anua 32 f
ami 42 m
sami 35 f
;
run;

/*test - line by line instruction*/
data test;
input a b c;
cards;
1 3 
1 2 2 
1 2 4 
;
run;

/*to avoid above, use infile datalines which takes the internal data*/
data test;
infile datalines missover;
input a b c;
cards;
1 3 
1 2 2 
1 2 4 
;
run;





