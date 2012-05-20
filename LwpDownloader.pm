package LwpDownloader;
use FileDownloader;
@ISA = ("FileDownloader");
# Simple downloader that gets the paths it is given using Lwp and stores them to
# [end of web file name].htm

use strict;
use LWP::Simple;

sub new {
    my $class = shift;
    my $self = $class->SUPER::new();
    $self->{FILES} = [];
    
    bless($self, $class);
    return $self;
}

sub download {
    my $self = shift;
    foreach my $link (@_) {
	my $content = get($link);
	my $filename = linkFilename($link);
	open(FO, $filename, 'w') or die "could not open file for link $link. $!";
	print FO $content;
	close(FO);
	push($self->{FILES}, $filename);
    }
}

sub outputPaths {
    my $self = shift;
    return @{$self->{FILES}};
}

sub linkFilename {
    my $self = shift;
    my $link = shift;

    if ($link =~ m/\//) {
	$link =~ s/^[^\/]+//;
    }
    return $link;
}
1;
