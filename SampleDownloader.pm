package SampleDownloader;
use ParsingFramework::FileDownloader;
@ISA = ("FileDownloader");
# Sample downloader - Does not actually write any files but will
# return the parameters passed to download as result of outputPaths

use strict;

sub new {
    my $class = shift;
    my $self = $class->SUPER::new();
    $self->{FILES} = [];
    
    bless($self, $class);
    return $self;
}

sub download {
    my $self = shift;
    foreach my $filename (@_) {
	push(@{$self->{FILES}}, $filename);
    }
}

sub outputPaths {
    my $self = shift;
    return @{$self->{FILES}};
}

1;
