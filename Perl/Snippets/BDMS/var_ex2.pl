#variable examples

$name = "bhuvan";
$age = 26;
$salary = 450000;

print "\n Name:\u$name";
print "\n Age:$age";
print "\n salary:$salary\n";

@array = ( 20,30,40 );

print "$array[0]\n";
print "$array[1]\n";

$array_size = @array;

print "\n size of array $array_size\n";

%data = ('bhuvan', 10, 'panday', 20, 'kon', 30);
print "bhuvan:$data{'bhuvan'}\n";
print "\n\${'panday'}:$data{'panday'}\n";
