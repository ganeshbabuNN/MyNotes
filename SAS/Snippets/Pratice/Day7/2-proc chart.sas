
/*Graphics component of SAS system.


• Includes charts, plots, in both 2 
and 3 dimensions.
• Procedures included GCHART, GPLOT,  etc…

a bar chart is the most 


frequently requested graphs at all types of works sites...
from banking to phrama

/*Horizontal and vertical bar charts display the magnitude of data with bars, each of which */
/*represents a category of data. */
/*The length or height of the bars represents the value of the chart statistic for each category.*/


proc gchart data  =sashelp.class;
vbar height;
run;

proc gchart data  =sashelp.class;
hbar height;
run;

proc sort data= sashelp.class out=ds1;
by age;
run;
proc gchart data  =ds1;
hbar age;
by age;
run;


/*Producing a Horizontal Bar Chart for a Subset of the Data*/

proc gchart data =sashelp.class (where= (age = 15));
vbar height;
run;

proc gchart data =sashelp.class ;
vbar height /type= percent;
run;


data abc;
input a b;
cards;
1.8
1.26
2.66
3.88
5
7
;
run;
proc gchart data =abc;
vbar a;
run;




/*Pie charts represent the relative contribution of parts to the whole by displaying data as */
/*wedge-shaped slices of a circle.*/
/* Each slice represents a category of the data*/

proc gchart data  =sashelp.class;
pie3d  height;
run;



/*Block charts display the relative magnitude of data by using blocks of varying height,*/
/* each set in a square that represents a category of data.*/
 
proc gchart data  =sashelp.class;
 block height;
run;

/*block chart using by staement*/

proc sort data =sashelp.class out=sumi;
by age;
run;
proc gchart data  =sumi;
by age;
block  height;
run;

proc gchart data  =sashelp.class;
star  height;
run;





proc plot data=sashelp.class;
   plot height * age = '*';
   run;


/*Gplot*/


proc gplot data = sashelp.class;
plot height * age ;
run;

proc gplot data = sashelp.class;
plot height*age
     weight *age;
run;
