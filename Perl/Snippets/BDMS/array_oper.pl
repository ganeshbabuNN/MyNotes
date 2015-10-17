#!/usr/bin/perl
# push pop etc

@array = (5,10,15,20);

print "\narray values in the begining @array\n";

push(@array, 25);

print "\n array after pushing @array";
unshift(@array,0);

print "\n array after unshift @array";

pop(@array);

print "\n array after popping @array";

shift(@array);

print "\n array after shifting @array \n";


