use strict;
use warnings;

# Use local scope (my), '..' is range (i.e. 1 to 10)
my @array = (1 .. 10);

print "\nWhile loop:\n";

my $i = 0;

# 'scalar @array' returns the length of the array (array value as a scalar, i.e. an integer)
while ($i < scalar @array) {
    print "$array[$i]\n";
    $i++;
}

print "\nUntil loop:\n";

my $x = 0;

until ($x >= scalar @array) {
    print "$array[$x]\n";
    $x++;
}

print "\nDo while loop:\n";

my $y = 0;

do {
    print "$array[$y]\n";
    $y++;
} while ($y < scalar @array);

print "\nDo until loop:\n";

my $z = 0;

do {
    print "$array[$z]\n";
    $z++;
} until ($z >= scalar @array);

print "\nC style for loop:\n";

# This kind of 'C style' loop is considered old fashioned?
for (my $i = 0; $i < scalar @array; $i++) {
    print "$array[$i]\n";
}

print "\nForeach loop:\n";

foreach my $value (@array) {
    print $value, ", ";
}

print "\n\nForeach loop (with indices):\n";

# Subtracting 1 since the array cotains 10 values but will be looped 11 times and the print should reflect that arrays start from 0 and not 1
my $array_loop_length = scalar @array - 1;

foreach my $index (0 .. $array_loop_length) {
    print "\"$index\"",
    " => ",
    $array[$index],
    $index < $array_loop_length ? ", " : "", # This is a ternary statement (shorthand for if .. then (?) .. else (:))
    "\n";
}
