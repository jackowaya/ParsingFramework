package SampleParser;
use ParsingFramework::FileParser;
@ISA = ("FileParser");
# Sample parser. Prints the output files it would parse.

use strict;

sub new {
    my $class = shift;
    my $self = $class->SUPER::new();
    bless($self, $class);
    return $self;
}

sub parse {
    my $self = shift;
    my $path = shift;
    print "Would parse $path\n";
}
1;
