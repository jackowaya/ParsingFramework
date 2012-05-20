package FileParser;

# Top-level class for parsing a file or files. Should be subclassed
# with implementations of different types of parsers

use strict;

sub new {
    my $class = shift;
    my $self = {};
   
    bless($self, $class);
    return $self;
}

sub parse {
    die "Should not have called FileParser::parse. This should be implemented by subclass";
}
1;
