package ParsingRunner;
# The main runner class. In general, to run a full downloading and
# parsing session, create an instance of this class and call run.

use strict;

sub new {
    # To create a ParsingRunner, we need the following things, in order:
    # A FileDownloader
    # A FileParser
    my $class = shift;
    my $self = {};

    my $downloader = shift;
    $self->{DOWNLOADER} = $downloader;
    my $parser = shift;
    $self->{PARSER} = $parser;

    bless($self, $class);
    return $self;

}

sub run {
    # run takes an input filename (or filenames - all parameters are passed
    # to downloader::download), downloads
    # it with downloader, and then parses it with parser.

    my $self = shift;
    
    $self->{DOWNLOADER}->download(@_);
    
    foreach my $path ($self->{DOWNLOADER}->outputPaths()) {
	$self->{PARSER}->parse($path);
    }
}
1;
