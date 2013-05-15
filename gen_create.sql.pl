#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use Encode;
use File::Basename;
use Text::Xslate;

my $tmpl = dirname(__FILE__) . '/tmpl/create.sql';

my $table_name = $ARGV[0];
my $comment = $ARGV[1];

if (!$table_name || !$comment) {
    die "$0 {table_name} {comment}";
}

my $tx = Text::Xslate->new(
    syntax => 'TTerse',
);

my $output = $tx->render($tmpl, {
    table_name => $table_name,
    comment    => $comment,
});

print encode_utf8($output);
