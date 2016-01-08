use strict;
use warnings;

# User-defined subroutines always accept the same input: a list of scalars
sub hyphenate {
    # Extract the first element from the array
    my $word = shift @_;

    $word = join '-', map { substr $word, $_, 1 } (0 .. (length $word) - 1);

    return $word;
}

sub csv {

    return join(', ', shift @_);
}

print "\n\nHyphenate sub: ", hyphenate('foo'), "\n\nCSV sub: ", csv(('foo', 'bar', 'baz', 'qux'));

# Arguments should be unpacked as Perl calls by reference (original variable values will be overwritten!)
# First method using $_ and numerical keys
sub a_function {
    my $first_var  = $_[0];
    my $second_var = $_[1];
    my $third_var  = $_[2];
}

# Second method using shift to extract arguments one by one
# Using these methods can make sub scoped variables hard to keep track of 
sub another_function {
    my $first_var  = shift @_;
    my $second_var = shift; # By default shift in this context will be passed @_ (the arguments passed to the sub)
}

# Third method to assign multiple sub scope variable at once
sub a_different_function {
    my ($first_var, $second_var) = @_;
} 

# Fourth method for accepting a large number of sub arguments via a hash
sub another_different_function {
    my %args = @_;
    my $first_var  = $args{'firstVar'};
    my $second_var = $args{'secondVar'};
}

another_different_function({ 'firstVar' => 'foo', 'secondVar' => 'bar' });
