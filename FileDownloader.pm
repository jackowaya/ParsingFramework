package FileDownloader;

# Top-level class for downloading a file or files. Should be subclassed
# with implementations of different types of downloaders.
use strict;

sub new {
    my $class = shift;
    my $self = {};
   
    bless($self, $class);
    return $self;
}

sub download {
    die "Should not have called FileDownloader::download. This should be implemented by subclass";
}

sub outputPaths {
    die "Should not have called FileDownloader::outputPaths. This should be implemented by subclass";
}
1;
