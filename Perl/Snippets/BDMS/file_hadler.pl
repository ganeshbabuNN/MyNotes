#!/usr/bin/perl
#file handlet example

format headder =
================================================
this is headder
================================================
.
format body =
=============================================
this is body
==============================================
.
open(FILE1,">>file1.txt") or die "cannot open file";
open(FILE2,">>file2.txt") or die "cannot open file";
select(FILE1);
$^ = headder;
$~ = body;
write;
#select(FILE2);
write;
