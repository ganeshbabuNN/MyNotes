
/*array
array is group of variables u can hav all numeric all charecter vaiable can aready exist in the data set
or be create...array itself is defined only the duration of datastep..
to define an array statement
array arrayname (n) $ variable list;
array name is the nam ethat given to the array
n is the number of variables
variable list lists the variables..
_numeric_
_charecter_*/


data climate1;
input day degreeC1-degreeC12;
cards;
1 72 25 23 24 25 26 27 28 12 25 45 46
2 42 21 23 24 25 26 27 28 12 25 45 46
3 22 21 23 24 25 26 27 28 12 25 45 46
;
run;
data climate2;
set climate1 ;
array degreeF {12};
array degreeC {12};
do i= 1 to 12;
degreeF{i}=degreeC{i}*2;
end;
run;
proc print data= climate2;
run;

data text;
array names {*} $ names1-names10;
array capitals {*} $ capitals1-capitals10;
input names{*};
do i=1 to 10;
capitals{i} = upcase(names{i});
end;
datalines;
raj ram bal jim fida reema roy joy moni binu
;
run;
proc print data= text;
run;
          
data sumi(drop=i);
array revenue{12}(100,105, 121, 130, 140, 170, 104, 105, 102, 108, 102, 103);
array exp{12} (10, 5, 5, 3, 5, 6, 8, 7, 8, 7, 2, 3) ;
array net_inc{12};
do i= 1 to 12;
net_inc{i}= revenue{i} -exp{i};
end;
run;
proc print;
run;





