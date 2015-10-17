#!/usr/bin/perl
#file handler example

open(DATA, "<file.txt") or die "couldnt open file, S!";
while(<DATA>){
print "$_";
}
