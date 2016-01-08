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

# You can't iterate over hashes, but you can iterate over their keys
my %countries = ('Europe' => 'UK', 'North America' => 'Canada', 'Asia' => 'India');

print "\n\nForeach loop (with hash keys):\n\n";

foreach my $key (keys %countries) {
    print $key, ": ", $countries{$key}, "\n";
}

print "\n\nArray functions:\n\n";

my @names = ('Bob', 'Dave', 'Gary', 'Will');

print 'Sample array: ', "@names";

# Pop extracts and returns the final element of an array
print "\n\nPopped: ", pop @names;

# Push appends values to an array
print "\n\nPushed: ";

push @names, 'Fred', 'Alice';

# Array variable is in double quotes so that array values will be separated by spaces
print "@names";

# Shift extracts and returns the first value in an array
print "\n\nShifted: ", shift @names;

# Unhift prepends values to an array
print "\n\nUnshifted: ";

unshift @names, 'Mandy';

print "@names";

# Join example
print "\n\nJoined: ", join(', ', @names);

# Reverse examples
# In list context, the reverse function returns a list in reverse order.
print "\n\nReversed (array): ", reverse(@names);

# In scalar context, reverse concatenates the whole list together and then reverses it as a single word.
print "\n\nReversed (scalar): ", scalar reverse(@names);

# Map example
# The map function takes an array as input and applies an operation to every scalar $_ in this array.
print "\n\nMap (convert to uppercase): ", join ', ', map { uc $_ } @names;
print "\n\nMap (convert to lowercase): ", join ', ', map { lc $_ } @names;
