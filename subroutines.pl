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

    return join(', ', @_);
}

print "\n\nHyphenate sub: ", hyphenate('foo'), "\n\nCSV sub: ", csv(('foo', 'bar', 'baz', 'qux'));
