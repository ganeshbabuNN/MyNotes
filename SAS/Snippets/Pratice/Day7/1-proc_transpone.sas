/*Transponse */

data students;
input name$ marks;
datalines;
B 67
A 78
A 79
A 80
B 99
B 87
;
run
;
/*sorting*/
proc sort data=students out=students1;
by name;
run;
/*transposing the variale*/
proc transponse data =students1 out =students2;
by name;
var marks;
run;

proc transponse data=students1 out=students3(drop= _name_) prefix=marks;
by name;
var marks;
run;


data yearly_marks;
input rollnu year marks;
datalines;
1 1999 36
1 1999 67
2 2000 78
2 1998 78
2 1999 35
2 2000 99
3 1998 36
3 1999 56
3 2000 89
6 1998 89
;
run
;


proc transponse data =yearly_marks out=marks_transposed;
by rollnu;
id year;
var marks;
run;




