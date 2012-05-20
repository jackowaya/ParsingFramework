# Example of using framework.

use strict;
use ParsingRunner;
use SampleDownloader;
use SampleParser;

my $downloader = SampleDownloader->new();
my $parser = SampleParser->new();

my $runner = ParsingRunner->new($downloader, $parser);

$runner->run("path1", "path2", "pathred", "pathblue");
