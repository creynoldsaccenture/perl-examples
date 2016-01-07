use strict;
use warnings;

use Data::Dumper;

# Use local scope (my)
my @array = ('Orange', 'Apple', 'Banana', 'Cherry');
my %hash = ('foo' => 'bar', 'baz' => 'qux');

print "Array: \n\n",
      Dumper (\@array),
      "\nHash (associative array):\n\n",
      Dumper (\%hash);
