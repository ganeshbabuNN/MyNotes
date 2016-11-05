#!/usr/bin/perl

#----STUDENT DETAILS------------------

format SCHOOL_HEADDER =
************************************************************
                         KAMPALY SCHOOL
                            BANGLORE
************************************************************
.
format STUDENT_BODY =
=============================================================
date: @<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Page:@<
$my_date $%;
Name: @<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
$my_name;
Class :@<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
$my_class;
==============================================================
Kannada:                                  @###.##
$my_kannada;
English:                                  @###.##
$my_english;
Hindi:                                    @###.##
$my_hindi;
Socail:                                   @###.##
$my_social;
Science:                                  @###.##
$my_science;
Maths:                                    @###.##
$my_maths;                                
============================================================
Total:                                    @###.##
$my_total;
Percentage:                               @##.##%
$my_percent;
Result:                                   @<<<<<<<<<<<<<
$my_result;
===========================================================
.
open(DATA,">file.txt") or die "cannot open the file ,$!"; 
select(DATA);
$^ = SCHOOL_HEADDER;
$~ = STUDENT_BODY;
@a_name=("bhuvan", "panday", "kon", "dev", "jagga", "anantha", "reena", "chulbul");
@a_kannada=(76,77,89);
@a_english=(24,89,90);
@a_hindi=(32,45,40);
@a_social=(22,45,50);
@a_science=(99,45,40);
@a_maths=(98,40,40);

$i = 0;
foreach (@a_name){
#while ( $i < 4 ){
$my_name = $a_name[$i];
$my_class = "SSLC";
$my_kannada = $a_kannada[$i];
$my_english = $a_english[$i];
$my_hindi = $a_hindi[$i];
$my_social = $a_social[$i];
$my_science = $a_science[$i];
$my_maths = $a_maths[$i];

$my_total = $a_kannada[$i] + $a_english[$i] + $a_hindi[$i] + $a_social[$i] + $a_science[$i] + $a_maths[$i];
$total_sub = 5;
$my_percent = $my_total / $total_sub;
$pass = 35;
if ( $a_kannada[$i] < 35 or $a_english[$i] < 35 or $a_hindi[$i] < 35 or $a_social[$i] < 35 or $a_science[$i] < 35 or $a_maths[$i] < 35 )
{
$my_result = "fail";
$my_percent = 0.00;
}
else
{
$my_result = "pass";
}
$i++;
write;
#print DATA;
}

close ( DATA );
