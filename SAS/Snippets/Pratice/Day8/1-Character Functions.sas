/*character functions*/

/* length function do not count the trialing character*/
data abc;
a ="my nume is ganesh  " ;
b= length(a);
/*counts the trailing and leading blank*/
c = lengthc(a);
run;
/* left clear the leading blank */

data abc;
a =" my name is ganesh  " ;
b= left(a);
run;
/* trim clear the trailing blank */
data abc;
a =" my name is ganesh  " ;
b= trim(a);
run;

/*combing leading or trailing blank or use strip*/

data abc;
a ="my name is ganesh" ;
c=trim(left(a));
b= strip(a);
run;

/*captial or smaller letter*/
data abc;
a ="my name is ganesh" ;
b= upcase(a);
c= lowcase(a);
/*only works in 9.4*/
d= propcase(a);
run;

/*substring function*/
data abc;
a ="my name is ganesh" ;
b= substr(a,4,4);
c= substr(a,4,-4);
run;

/*find function to get the position*/
data abc;
a ="my name is ganesh" ;
b= find(a,"ganesh");
run;
/*nthe work  scan function*/
data abc;
a ="my name is ganesh" ;
b= scan(a,3);
run;

/*repeat the arguements*/
data abc;
a ="my name is ganesh  " ;
b= repeat(a,1);
run;

/*reverse the arguements*/
data abc;
a ="my name is ganesh" ;
b = reverse(a);
run;

/*compress function all the blanks*/
data abc;
a ="     my   name   is      ganesh   " ;
b= compress(a);
c=compress(a,"a");
run;

/*compbl function is compress all the blank into a single blank*/
data abc;
a ="     my   name   is      ganesh   " ;
b= compbl(a);
run;

/*tranword function is replaces a world*/
data abc;
a ="     my   name   is      ganesh   " ;
b= tranwrd(a,"is","  ");
run;


/*cat function is join the string*/
data abc;
a ="my name is ganesh" ;
b=" my friend is ann" ;
c= cat(a," ",b);
run;

/*cats function removed trailing and leading blanks*/
data abc;
a =" my name is ganesh " ;
b=" my friend is ann " ;
c= cats(a," ",b);
run;

/*catx function removed trailing and leading blanks + it will add separaters*/
data abc;
a =" my name is ganesh " ;
b=" my friend is ann " ;
c= catx(a," ",b);
run;

/*quote function add quotes*/
data abc;
a =" my name is ganesh " ;
b= quote(a);
c=dequote(b);
run;


















